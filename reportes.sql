 --------          Ejemplo 1          -------- 
/*
Generar un reporte de productos con más de 5 unidades de merma, mostrando su 
categoría, total de unidades vendidas, total de unidades perdidas por merma y 
precio promedio de venta, ordenados de mayor a menor según las ventas registradas.
*/

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

 --------          Ejemplo 2          -------- 
/*
Generar un reporte de desempeño de los colaboradores, mostrando aquellos que han 
registrado al menos 3 pedidos, indicando la cantidad total de pedidos realizados, 
el monto total de ventas generadas, el descuento promedio aplicado y el total de
unidades vendidas, ordenados de mayor a menor según el monto de ventas obtenido.
*/

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
