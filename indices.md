<h1>📊 Análisis de Índice en Base de Datos</h1>
<h2>INDICE 1:</h2>
<p>
     Una de las consultas más usadas e importantes de nuestra base de datos es la visualización de los lotes asociados a los productos. 
     Esta operación se utiliza constantemente en los módulos de inventario, ventas y control de stock, donde es necesario obtener 
     la información asociada al producto que correspondiente (en el ejemplo la cantidad disponible de cada lote), se plantea crear 
     un índice sobre la columna de <code>id_producto</code> en la tabla <code>lote</code>.
</p>

<br>

<p>
     <strong>Ejemplo de uso en nuestra página web</strong> (A nivel "más general" donde también puede ayudar cuando la cantidad de 
     productos crezca y se haga más grande):
</p>

```javascript {1-13}
const {
    data,
    error
  } = await supabaseClient
    .from("lote")
    .select(`
      cantidad,
      producto (nmbre_prdcto)
    `)

  if (error) {
    return
  }
```

<p>
     <strong>En SQL</strong>
</p>

```sql {1-6}
SELECT
    l.cantidad,
    p.nmbre_prdcto
FROM lote l
JOIN producto p
    ON p.id_producto = l.id_producto;
```

<br>

<p>
     <strong>Pero,</strong> a un nivel más selectivo, donde busquemos solo un producto ayuda mucho más:
</p>

```javascript {1-12}
let id_pr = 10
const {
    data,
    error
  } = await supabaseClient
  .from("lote")
  .select("*")
  .eq("id_producto", id_pr)

  if (error) {
    return
  }
```

<p>
     <strong>En SQL</strong>
</p>

```sql {1-3}
SELECT * 
FROM lote 
WHERE id_producto = 10; 
```

<p>
     <strong>Por lo que,</strong> primero analizaremos el tiempo de búsqueda sin el índice creado:
</p>

<br>

```sql {1-7}
EXPLAIN ANALYZE 
SELECT 
    l.cantidad, 
    p.nmbre_prdcto 
FROM lote l 
JOIN producto p 
    ON p.id_producto = l.id_producto;
```

<p>
     <strong>Resultado 1: </strong>
     <br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Plan utilizado</strong> Seq Scan 
     <br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Tiempo Real</strong> 0.192 ms
</p>

<br>

```sql {1-4}
EXPLAIN ANALYZE 
SELECT * 
FROM lote 
WHERE id_producto = 10;
```

<p>
     <strong>Resultado 2: </strong>
     <br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Plan utilizado:</strong> Seq Scan
     <br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Tiempo Real:</strong> 0.015 ms
</p>

<br>

<p>
     <strong>Ahora,</strong> con el índice creado (donde se ve una mejora en el tiempo): 
</p>

<br>

```sql {1-2}
CREATE INDEX idx_lote_id_producto 
ON lote(id_producto);
```

<br>

<p>
     <strong>Resultado 1: </strong>
     <br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Plan utilizado</strong> Bitmap Index Scan 
     <br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Tiempo Real</strong> 0.092 ms
</p>

<br>

<p>
     <strong>Resultado 2: </strong>
     <br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Plan utilizado</strong> Bitmap Index Scan 
     <br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Tiempo Real</strong> 0.006 ms
</p>

<br>

<p>
     <strong>Esto,</strong> lo podemos confirmar calculando la selectividad de la columna id_producto en la 
     tabla lote: (con la cantidad actual de registros, los cuales tienen la tendencia a incrementarse en 
     un futuro) 
</p>


<p>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Primer caso: </strong>
</p>

Selectividad = $\frac{72}{5328} = 0.0135135$

<br>

<p>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Segundo caso: </strong>
</p>

Selectividad = $\frac{1}{72} = 0.0138889$

<br>

<h2>INDICE 2:</h2>

<p>
     Otra de las consultas más usadas e importantes de nuestra base de datos es la visualización de los 
     pedidos asociados a un/los colaborador/es o a un/los cliente/s. Esta operación se utiliza 
     constantemente en los módulos de ventas y seguimiento de desempeño, donde es necesario 
     obtener la información asociada a cada colaborador y los pedidos que ha gestionado, se plantea 
     crear un índice sobre la columna de <code>id_clbrdor</code> en la tabla <code>pedido</code>.
</p>

<br>

<p>
     <strong>Ejemplo de uso en nuestra página web</strong>
</p>

```javascript {1-21}
const { data, error } = await supabaseClient 
  .from("cliente") 
  .select(` 
    dni, 
    nombres, 
    aplldo_ptrno, 
    pedido (id_pedido) 
  `) 
  .eq("dni", "12345678") 
  .single(); 
 
if (error) { 
  console.error(error); 
  return; 
} 
 
const resultado = { 
  dni: data.dni, 
  nombre: `${data.nombres} ${data.aplldo_ptrno}`, 
  total_pedidos: data.pedido.length 
};
```

<p>
     <strong>En SQL</strong>
</p>

```sql {1-13}
SELECT 
    c.dni, 
    c.nombres, 
    c.aplldo_ptrno, 
    COUNT(p.id_pedido) AS total_pedidos 
FROM cliente c 
LEFT JOIN pedido p 
    ON p.id_cliente = c.id_cliente 
WHERE c.dni = '12345678' 
GROUP BY 
    c.dni, 
    c.nombres, 
    c.aplldo_ptrno;
```

<p>
     <strong>Por lo que,</strong> primero analizaremos el tiempo de búsqueda sin el índice creado:
</p>

<br>

```sql {1-14}
EXPLAIN ANALYZE 
SELECT 
    c.dni, 
    c.nombres, 
    c.aplldo_ptrno, 
    COUNT(p.id_pedido) AS total_pedidos 
FROM colaborador c 
LEFT JOIN pedido p 
    ON p.id_clbrdor = c.id_clbrdor 
WHERE c.dni = '12345678' 
GROUP BY 
    c.dni, 
    c.nombres, 
    c.aplldo_ptrno;
```

<p>
     <strong>Resultado:</strong>
     <br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Plan utilizado</strong> Seq Scan 
     <br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Tiempo Real</strong> 0.255 ms
</p>

<br>

<p>
     <strong>Ahora,</strong> con el índice creado (donde se ve una mejora en el tiempo): 
</p>

```sql {1-2}
CREATE INDEX idx_pedido_id_colaborador 
ON pedido(id_cliente);
```

<br>

<p>
     <strong>Resultado: </strong>
     <br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Plan utilizado</strong> Bitmap Index Scan 
     <br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Tiempo Real</strong> 0.116 ms
</p>

<br> 

<p>
     <strong>Esto,</strong> lo podemos confirmar calculando la selectividad de la columna id_clbrdor en la 
     tabla pedido: 
</p>

Selectividad = $\frac{1}{58} = 0.0172413$

<br>
<h2>RESUMEN:</h2>
<table>
  <thead>
    <tr>
      <th>#</th>
      <th>Índice</th>
      <th>Columna</th>
      <th>Tabla</th>
      <th>Consulta</th>
      <th>Sin Índice</th>
      <th>Con Índice</th>
      <th>Mejora</th>
      <th>Plan Original</th>
      <th>Plan Mejorado</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td><code>idx_lote_id_producto</code></td>
      <td><code>id_producto</code></td>
      <td><code>lote</code></td>
      <td>JOIN con producto</td>
      <td>0.192 ms</td>
      <td>0.092 ms</td>
      <td><strong>52%</strong></td>
      <td>Seq Scan</td>
      <td>Bitmap Index Scan</td>
    </tr>
    <tr>
      <td>1</td>
      <td><code>idx_lote_id_producto</code></td>
      <td><code>id_producto</code></td>
      <td><code>lote</code></td>
      <td>Filtro por producto</td>
      <td>0.015 ms</td>
      <td>0.006 ms</td>
      <td><strong>60%</strong></td>
      <td>Seq Scan</td>
      <td>Bitmap Index Scan</td>
    </tr>
    <tr>
      <td>2</td>
      <td><code>idx_pedido_id_colaborador</code></td>
      <td><code>id_clbrdor</code></td>
      <td><code>pedido</code></td>
      <td>Pedidos por colaborador</td>
      <td>0.255 ms</td>
      <td>0.116 ms</td>
      <td><strong>54.5%</strong></td>
      <td>Seq Scan</td>
      <td>Bitmap Index Scan</td>
    </tr>
  </tbody>
</table>

<br><br>

<h1>🧾Transacciones</h1>

<p>
     Esta transaccion sirve para registrar una venta completa en nuestra base de datos, asegurando
     que todo el procesor de la venta se ejecute.
     Si ocurre algún error como por ejemplo "falta de stock" toda la operación se cancela y no se
     guarde nada y asi evitamos inconsistencias.
</p>

<p>
     <strong>¿Que hace la transacción?</strong>     
</p>

- Crea el pedido.
- Registra los productos vendidos.
- Verifica que exista stock suficiente.
- Descuenta las unidades del inventario (del lote).
- Actualiza el número de compras del cliente.
- Registra el pago.

<br>

<p>
     <strong>Transacción completa:</strong>
</p>

```sql {1-94}
BEGIN;

-- Registrar el pedido principal

INSERT INTO pedido (
    precio_total,
    dscnto_ttal,
    fecha,
    id_cliente,
    id_clbrdor
)
VALUES (
    50.00,
    0.00,
    NOW(),
    1,
    2
);

-- Obtener el ID generado para el pedido

DO $$
DECLARE
    v_id_pedido INT;
    v_stock_actual INT;
BEGIN

    SELECT MAX(id_pedido)
    INTO v_id_pedido
    FROM pedido;

    -- Registrar el detalle del pedido

    INSERT INTO dtlle_pddo (
        id_pedido,
        id_lote,
        unidades,
        precio_unidad,
        precio_final
    )
    VALUES (
        v_id_pedido,
        1,
        2,
        25.00,
        50.00
    );

    -- Verificar stock disponible

    SELECT cantidad
    INTO v_stock_actual
    FROM lote
    WHERE id_lote = 1;

    IF v_stock_actual < 2 THEN

        RAISE EXCEPTION
        'Stock insuficiente. Disponible: %, solicitado: %',
        v_stock_actual,
        2;

    END IF;

    -- Actualizar inventario

    UPDATE lote
    SET cantidad = cantidad - 2
    WHERE id_lote = 1;

    -- Actualizar contador de pedidos del cliente

    UPDATE cliente
    SET nmro_pddos = nmro_pddos + 1
    WHERE id_cliente = 1;

    -- Registrar el pago

    INSERT INTO prcso_pgo (
        comision,
        ingrso_nto,
        id_pedido,
        id_mtdo_pgo
    )
    VALUES (
        0,
        50,
        v_id_pedido,
        1
    );

END $$;

COMMIT;
```
