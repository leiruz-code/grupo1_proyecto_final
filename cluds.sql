 --------          Ejemplo 1          -------- 
/*
Registro de una venta completa creando el pedido, del cliente 1 y colaborador 34 almacenando 
sus productos (del producto 1: 2 unidades y del producto 3: 1 unidad), actualizando el inventario 
mediante la política FIFO, incrementando el historial de compras del cliente y registrando la 
información del pago asociado a la transacción (con el método de pago 1).
*/

DO $$ 
DECLARE 
 
    -- ID generado para el nuevo pedido 
    v_id_pedido INT; 
 
    -- Cliente que realiza la compra 
    v_id_cliente INT := 1; 
 
    -- Colaborador responsable de la venta 
    v_id_clbrdor INT := 34; 
 
BEGIN 
 
    -- Crear el pedido principal 
    INSERT INTO pedido ( 
        precio_total, 
        dscnto_ttal, 
        fecha, 
        id_cliente, 
        id_clbrdor 
    ) 
    VALUES ( 
        55.50, 
        0.00, 
        NOW(), 
        v_id_cliente, 
        v_id_clbrdor 
    ) 
    RETURNING id_pedido INTO v_id_pedido; 
 
    -- Registrar detalle de productos vendidos 
    --    (La tabla ahora utiliza id_lote) 
    INSERT INTO dtlle_pddo ( 
        id_pedido, 
        id_lote, 
        unidades, 
        precio_unidad, 
        precio_final 
    ) 
    VALUES 
        (v_id_pedido, 1, 2, 12.50, 25.00), 
        (v_id_pedido, 3, 1,  8.00,  8.00); 
 
    -- Actualizar stock del lote 1 
    UPDATE lote 
    SET cantidad = cantidad - 2 
    WHERE id_lote = 1; 
 
    -- Actualizar stock del lote 3 
    UPDATE lote 
    SET cantidad = cantidad - 1 
    WHERE id_lote = 3; 
 
    -- Incrementar contador de pedidos del cliente 
    UPDATE cliente 
    SET nmro_pddos = nmro_pddos + 1 
    WHERE id_cliente = v_id_cliente; 
 
    -- Registrar proceso de pago 
    INSERT INTO prcso_pgo ( 
        comision, 
        ingrso_nto, 
        id_pedido, 
        id_mtdo_pgo 
    ) 
    VALUES ( 
        0.00, 
        55.50, 
        v_id_pedido, 
        1 
    ); 
 
END $$;

 --------          Ejemplo 2          -------- 
/*
Registro de un ingreso de un nuevo lote de 40 unidades del producto 38, asociándolo al proveedor
1 y a la presentación 12, almacenando sus precios de compra y venta (19.60 y 25.40 respectivamente),
fechas de ingreso y vencimiento (2026-06-08 y 2029-07-25 respectivamente), y creando su correspondiente 
registro en inventario.
*/

DO $$ 
DECLARE 
    v_id_lote INT; 
BEGIN 
 --Registro de un nuevo lote 
 
    INSERT INTO lote ( 
        cantidad, 
        precio_compra, 
        precio_venta, 
        fcha_vncmnto, 
        fcha_ingrso, 
        id_proveedor, 
        id_producto, 
        id_presentacion 
    ) 
    VALUES ( 
        40, 
        19.60, 
        25.40, 
        DATE '2029-07-25', 
        DATE '2026-06-08', 
        1, 
        38, 
        12 
    ) 
    RETURNING id_lote INTO v_id_lote; 
 --Se registra el lote en el inventario 
 
    INSERT INTO inventario ( 
        observacion, 
        id_lote 
    ) 
    VALUES ( 
        'Ingreso de mercadería en buenas condiciones', 
        v_id_lote 
    ); 
 
END $$;
