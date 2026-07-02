<h1>🧠 Operaciones CRUDs Complejas</h1>

<h2>CRUD 1:</h2>

<p>
     Registro de una venta completa creando el pedido, del cliente 1 y colaborador 34 
     almacenando sus productos (del producto 1: 2 unidades y del producto 3: 1 unidad), 
     actualizando el inventario mediante la política FIFO, incrementando el historial 
     de compras del cliente y registrando la información del pago asociado a la transacción 
     (con el método de pago 1). 
</p>

```sql {1-74}
 --------          Ejemplo 1          -------- 
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
```

<h2>CRUD 2:</h2>

<p>
     Registro de un ingreso de un nuevo lote de 40 unidades del producto 38, asociándolo al 
     proveedor 1 y a la presentación 12, almacenando sus precios de compra y venta (19.60 
     y 25.40 respectivamente), fechas de ingreso y vencimiento (2026-06-08 y 2029-07-25 
     respectivamente), y creando su correspondiente registro en inventario. 
</p>

```sql {1-42}
 --------          Ejemplo 2          -------- 
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
```

<h2>CRUD 3:</h2>

<p>
     texto. 
</p>

```sql {1-42}
 --------          Ejemplo 2          -------- 
-------- Ejemplo: Eliminación de un pedido --------
DO $$
DECLARE
    -- ID del pedido a eliminar
    v_id_pedido INT := 1;

    -- Para verificar que el pedido existe
    v_existe     BOOLEAN;

    -- Para recorrer los lotes y sus unidades del pedido
    v_id_lote    INT;
    v_unidades   INT;
    v_id_cliente INT;

BEGIN
    -- Verificar que el pedido existe antes de proceder
    SELECT EXISTS (
        SELECT 1 FROM pedido WHERE id_pedido = v_id_pedido
    ) INTO v_existe;

    IF NOT v_existe THEN
        RAISE EXCEPTION 'El pedido % no existe.', v_id_pedido;
    END IF;

    -- Obtener el cliente del pedido (para actualizar su contador)
    SELECT id_cliente
    INTO v_id_cliente
    FROM pedido
    WHERE id_pedido = v_id_pedido;

    -- Restaurar el stock de cada lote involucrado en el pedido
    FOR v_id_lote, v_unidades IN
        SELECT id_lote, unidades
        FROM dtlle_pddo
        WHERE id_pedido = v_id_pedido
    LOOP
        UPDATE lote
        SET cantidad = cantidad + v_unidades
        WHERE id_lote = v_id_lote;
    END LOOP;

    -- Decrementar el contador de pedidos del cliente
    UPDATE cliente
    SET nmro_pddos = nmro_pddos - 1
    WHERE id_cliente = v_id_cliente
      AND nmro_pddos > 0;

    -- Eliminar el proceso de pago asociado
    DELETE FROM prcso_pgo
    WHERE id_pedido = v_id_pedido;

    -- Eliminar el detalle del pedido
    DELETE FROM dtlle_pddo
    WHERE id_pedido = v_id_pedido;

    -- Eliminar el pedido principal
    DELETE FROM pedido
    WHERE id_pedido = v_id_pedido;

    RAISE NOTICE 'Pedido % eliminado correctamente.', v_id_pedido;

END $$;
```

<h1>📂 Reportes y Exportación</h1>

<h2>REPORTE 1:</h2>

<p>
    Generar un reporte de productos con más de 5 unidades de merma, mostrando su categoría, total 
    de unidades vendidas, total de unidades perdidas por merma y precio promedio de venta, 
    ordenados de mayor a menor según las ventas registradas. 
</p>

```sql {1-54}
 --------          Ejemplo 1          -------- 
WITH ventas_consolidadas AS ( 
    SELECT 
        l.id_producto, 
        SUM(dp.unidades) AS total_vendido 
    FROM dtlle_pddo dp 
    JOIN lote l 
        ON l.id_lote = dp.id_lote 
    GROUP BY l.id_producto 
), 
mermas_consolidadas AS ( 
    SELECT 
        l.id_producto, 
        SUM(dm.cantidad) AS total_merma 
    FROM dtlle_mrma dm 
    JOIN lote l 
        ON l.id_lote = dm.id_lote 
    GROUP BY l.id_producto 
) 

SELECT 
    pr.id_producto, 
    pr.nmbre_prdcto AS producto, 
    ca.nmbre_ctgra AS categoria, 
 
    COALESCE(vc.total_vendido, 0)    AS unidades_vendidas, 
    COALESCE(mc.total_merma, 0)      AS unidades_merma, 
 
    ROUND(AVG(l.precio_venta), 2)    AS precio_promedio_venta 
 
FROM producto pr 
 
JOIN categoria ca 
    ON ca.id_ctgra = pr.id_ctgra 
 
JOIN lote l 
    ON l.id_producto = pr.id_producto 
 
LEFT JOIN ventas_consolidadas vc 
    ON vc.id_producto = pr.id_producto 
 
LEFT JOIN mermas_consolidadas mc 
    ON mc.id_producto = pr.id_producto 
 
GROUP BY 
    pr.id_producto, 
    pr.nmbre_prdcto, 
    ca.nmbre_ctgra, 
    vc.total_vendido, 
    mc.total_merma 
 
HAVING COALESCE(mc.total_merma, 0) > 5 
 
ORDER BY unidades_vendidas DESC; 
```

<h2>REPORTE 2:</h2>

<p>
    Generar un reporte de desempeño de los colaboradores, mostrando aquellos que han registrado al 
    menos 3 pedidos, indicando la cantidad total de pedidos realizados, el monto total de ventas 
    generadas, el descuento promedio aplicado y el total de unidades vendidas, ordenados de mayor 
    a menor según el monto de ventas obtenido. 
</p>

```sql {1-26}
 --------          Ejemplo 2          -------- 
WITH unidades_por_pedido AS ( 
    -- Agrupamos el detalle primero para evitar 
    -- la duplicación de montos en los JOINS 
    SELECT  
        id_pedido,  
        SUM(unidades) AS total_unidades 
    FROM dtlle_pddo 
    GROUP BY id_pedido 
) 
SELECT 
    c.id_clbrdor, 
    c.nombres || ' ' || c.aplldo_ptrno          AS colaborador, 
    COUNT(p.id_pedido)                          AS total_pedidos, 
    SUM(p.precio_total)                         AS monto_total_ventas, 
    ROUND(AVG(COALESCE(p.dscnto_ttal, 0)), 2)   AS descuento_promedio, 
    SUM(up.total_unidades)                      AS unidades_vendidas 
FROM colaborador c 
JOIN pedido p               ON p.id_clbrdor = c.id_clbrdor 
JOIN unidades_por_pedido up ON up.id_pedido = p.id_pedido 
GROUP BY 
    c.id_clbrdor, 
    c.nombres, 
    c.aplldo_ptrno 
HAVING COUNT(p.id_pedido) >= 3 
ORDER BY monto_total_ventas DESC;
```
