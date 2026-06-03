/* Funcion: Pedido completo en cascada — abre una transacción, inserta en pedido, luego en dtlle_pddo por cada ítem, 
descuenta unidades del inventario del lote correcto, incrementa cliente.nmro_pddos y registra el pago. 
Si cualquier paso falla, el ROLLBACK deshace todo. */

--Nos posicionamos en el ultimo ID de prcso_pgo
SELECT setval('prcso_pgo_id_prcso_pgo_seq', (SELECT MAX(id_prcso_pgo) FROM prcso_pgo));

-- 
DO $$
DECLARE
    v_id_pedido INT;       
    v_id_cliente INT := 1;  
    v_id_clbrdor INT := 34; 
BEGIN

    -- Crear el pedido
    INSERT INTO pedido (precio_total, dscnto_ttal, fecha, id_cliente, id_clbrdor)
    VALUES (55.50, 0.00, NOW(), v_id_cliente, v_id_clbrdor)
    RETURNING id_pedido INTO v_id_pedido;

    -- Insertar los ítems del detalle
    INSERT INTO dtlle_pddo (id_pedido, id_producto, unidades, precio_unidad, precio_final)
    VALUES
        (v_id_pedido, 1, 2, 12.50, 25.00),
        (v_id_pedido, 3, 1,  8.00,  8.00);

    -- Descontar unidades del inventario (FIFO)
    UPDATE inventario
    SET cantidad = cantidad - 2
    WHERE id_lote = (SELECT id_lote FROM lote WHERE id_producto = 1 ORDER BY id_lote ASC LIMIT 1);

    UPDATE inventario
    SET cantidad = cantidad - 1
    WHERE id_lote = (SELECT id_lote FROM lote WHERE id_producto = 3 ORDER BY id_lote ASC LIMIT 1);

    -- Incrementar el contador del cliente
    UPDATE cliente
    SET nmro_pddos = nmro_pddos + 1
    WHERE id_cliente = v_id_cliente;

    -- Registrar el proceso de pago (Ahora generará el ID 39 sin chocar con nadie)
    INSERT INTO prcso_pgo (comision, ingrso_nto, id_pedido, id_mtdo_pgo)
    VALUES (0.00, 55.50, v_id_pedido, 1);

END $$;

/*--------------------------------------------------------------------------------------------------------------/
Funcion: Cambio de precio con historial — captura el precio anterior con un SELECT dentro del INSERT a hstral_prco
antes de aplicar el UPDATE a producto, todo en una sola transacción atómica.*/

-- Sincronización preventiva del contador automático
SELECT setval('hstral_prco_id_hstral_prco_seq', (SELECT MAX(id_hstral_prco) FROM hstral_prco));
-- Bloque de ejecución transaccional
DO $$
DECLARE
    v_id_producto INT := 1; --id_producto         
    v_precio_nvo NUMERIC(10,2) := 18.50; --nuevo precio
BEGIN

-- 1. Registrar el precio anterior
    INSERT INTO hstral_prco (fcha_cmbo, prco_antror, prco_nvo, id_producto)

    SELECT
        (NOW() AT TIME ZONE 'America/Lima')::timestamp(0),  -- El (0) elimina los decimales del segundo
        precio_actual,  
        v_precio_nvo,   
        id_producto
    FROM producto
    WHERE id_producto = v_id_producto;
 -- 2. Actualizar el precio actual en la entidad producto
    
    UPDATE producto
    SET precio_actual = v_precio_nvo
    WHERE id_producto = v_id_producto;

END $$;
--------------------------------------------------------------------------------------------------------------/
--Merma con validación — registra en dtlle_mrma, descuenta del inventario y
--lanza un RAISE EXCEPTION si el stock quedaría negativo, forzando el rollback automáticamente

-- Sincronización preventiva del contador automático (secuencia) para evitar duplicados
SELECT setval('dtlle_mrma_id_dtlle_mrma_seq', (SELECT MAX(id_dtlle_mrma) FROM dtlle_mrma));
-- Bloque de ejecución transaccional
DO $$
DECLARE
    v_id_merma INT := 1;          -- ID del tipo de merma (ej. 1 = Producto Vencido)
    v_id_lote INT := 1;           -- ID del lote afectado
    v_cantidad_merma INT := 5;    -- Cantidad de unidades a retirar por merma
BEGIN

    -- 1. Registrar el detalle de la merma (Estructura alineada al DDL de su repositorio)
    INSERT INTO dtlle_mrma (cantidad, descripcion, id_merma, id_lote)
    VALUES (v_cantidad_merma, 'Chocolates vencidos retirados del anaquel.', v_id_merma, v_id_lote);
-- 2. Descontar del inventario las unidades del lote afectado
    UPDATE inventario
    SET cantidad = cantidad - v_cantidad_merma
    WHERE id_lote = v_id_lote;



