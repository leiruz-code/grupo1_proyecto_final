/* Ventas por colaborador — 
GROUP BY sobre 3 tablas con HAVING COUNT >= 3 para filtrar colaboradores con poco movimiento. */

WITH unidades_por_pedido AS (
    -- Agrupamos el detalle primero para evitar la duplicación de montos en los JOINS
    SELECT 
        id_pedido, 
        SUM(unidades) AS total_unidades
    FROM dtlle_pddo
    GROUP BY id_pedido
)
SELECT
    c.id_clbrdor,
    c.nombres || ' ' || c.aplldo_ptrno           AS colaborador,
    COUNT(p.id_pedido)                           AS total_pedidos,
    SUM(p.precio_total)                          AS monto_total_ventas,
    ROUND(AVG(COALESCE(p.dscnto_ttal, 0)), 2)    AS descuento_promedio,
    SUM(up.total_unidades)                       AS unidades_vendidas
FROM colaborador c
JOIN pedido p               ON p.id_clbrdor = c.id_clbrdor
JOIN unidades_por_pedido up ON up.id_pedido = p.id_pedido
GROUP BY
    c.id_clbrdor,
    c.nombres,
    c.aplldo_ptrno
HAVING COUNT(p.id_pedido) >= 3
ORDER BY monto_total_ventas DESC;

------------------------------------------------------------------------------------------------
--Productos con merma — usa LEFT JOIN para no excluir productos sin ventas/merma, 
--COALESCE para tratar los NULL como cero, y HAVING sobre la merma acumulada. 

WITH ventas_consolidadas AS (
    -- Consolidamos las unidades vendidas por cada producto
    SELECT 
        id_producto, 
        SUM(unidades) AS total_vendido
    FROM dtlle_pddo
    GROUP BY id_producto
),
mermas_consolidadas AS (
    -- Consolidamos las mermas pasando correctamente por la tabla lote
    SELECT 
        l.id_producto, 
        SUM(dm.cantidad) AS total_merma
    FROM dtlle_mrma dm
    JOIN lote l ON l.id_lote = dm.id_lote
    GROUP BY l.id_producto
)
SELECT
    pr.id_producto,
    pr.nmbre_prdcto                             AS producto,
    ca.nmbre_ctgra                              AS categoria,
    COALESCE(SUM(vc.total_vendido), 0)           AS unidades_vendidas,
    COALESCE(SUM(mc.total_merma), 0)             AS unidades_merma,
    COALESCE(SUM(vc.total_vendido), 0) 
        - COALESCE(SUM(mc.total_merma), 0)       AS unidades_netas,
    ROUND(pr.precio_actual::NUMERIC, 2)         AS precio_actual
FROM producto pr
JOIN categoria ca            ON ca.id_ctgra = pr.id_ctgra
LEFT JOIN ventas_consolidadas vc  ON vc.id_producto = pr.id_producto
LEFT JOIN mermas_consolidadas mc  ON mc.id_producto = pr.id_producto
GROUP BY
    pr.id_producto,
    pr.nmbre_prdcto,
    ca.nmbre_ctgra,
    pr.precio_actual


