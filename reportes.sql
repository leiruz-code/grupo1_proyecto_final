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
