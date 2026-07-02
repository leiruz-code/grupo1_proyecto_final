<h1 align="center">𝙿𝚁𝙾𝚈𝙴𝙲𝚃𝙾 𝙵𝙸𝙽𝙰𝙻 𝙱𝙰𝚂𝙴 𝙳𝙴 𝙳𝙰𝚃𝙾𝚂</h1>
<h2>👥 INTEGRANTES DEL GRUPO:</h2>
<table align="center" cellpadding="12">
<tr>         
  <td align="center" width="390">
  Bernedo Coya Jose Daniel (JosDan412)
  </td>
  <td align="center" width="390">
  Cangre Ure Zuriel Alberto (leiruz-code)
  </td>
</tr>
<tr>
  <td align="center" width="350">
  Valenzuela Lazarte Brysett Magely (Mage-Brycode)
  </td>
  <td align="center" width="350">
  Huaroc Vargas Betzabe Delia (BetzabeDHV)
  </td>
</tr>
</table>

<br>

<h2>📌 INFORMACIÓN DEL PROYECTO:</h2>

<table align="center" cellpadding="20">
<tr>
  <th align="center">Tecnología</th>
  <th align="center">SQL (Supabase <img src="https://img.icons8.com/?size=100&id=grZaE9tjqDyr&format=png&color=000000" width="18.72px" height="18.72px" alt="supabase">)</th>
  <th align="center">NoSQL (MongoDB Atlas <img src="https://img.icons8.com/?size=100&id=tBBf3P8HL0vR&format=png&color=000000" width="18.72x" height="18.72px" alt="mongodb">)</th>
</tr>
<tr>
  <td align="center"><strong>Número de tablas / colecciones</strong></td>
  <td align="center"><strong>22</strong></td>
  <td align="center"><strong>4</strong></td>
</tr>
</table>

<h3>🎯 OBJETIVO:</h3>

<table align="center" cellpadding="20" width="100%">
<tr>
  <td align="center">
En este proyecto se tiene como objetivo el diseño e implementación de una base de datos para 
una tienda orientada a la gestión integral de colaboradores (empleados), clientes, productos, lotes, 
inventario, ventas e ingresos.  
En este contexto, buscamos optimizar el control de las operaciones necesarias, como el registro 
de clientes, gestión de inventario, procesamiento de pedidos y administración de pagos, 
permitiendo una mayor eficiencia en el manejo de la información y reduciendo inconsistencias en 
los datos. 
Para ello, se ha diseñado un sistema híbrido que combina un modelo relacional (SQL) para la 
gestión transaccional y un modelo NoSQL para el manejo de información flexible y variable, 
como procesos de pago avanzados, configuraciones de clientes, historial de actividad y registros 
de auditoría.
  </td>
</tr>
</table>

<h3>🚨 PROBLEMA:</h3>
<table align="center" cellpadding="20" width="100%">
<tr>
  <td align="center">
Actualmente, muchas tiendas presentan dificultades en la gestión centralizada de su información, 
lo que genera problemas como duplicidad de datos, falta de control de inventario, errores en el 
registro de ventas y poca trazabilidad de los procesos de pago. 
Además, la variabilidad de ciertos procesos como pagos a crédito, promociones dinámicas y 
comportamiento de clientes no puede ser representada eficientemente en un modelo estrictamente 
relacional.
  </td>
</tr>
</table>

<br>

<h2><img src="https://img.icons8.com/?size=100&id=7OeaNeAvXZYa&format=png&color=000000" width="28px" height="28px" alt="database"> DETALLE DE BASE DE DATOS (Tablas y Colecciones)</h2>

<h3>SQL (PostgreSQL <img src="https://img.icons8.com/?size=100&id=JRnxU7ZWP4mi&format=png&color=000000" width="24px" height="24px" alt="postgresql">)</h3>

<table align="center" cellpadding="20">

<tr>

<!-- COLUMNA IZQUIERDA -->
<td valign="top" width="700" align="center">
  
<!-- TABLA CLIENTE -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `cliente`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_cliente`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`dni`</td>
  <td align="center">`varchar`</td>
  <td align="center">Unique Check('^[0-9]{8}$')</td>
</tr>

<tr>
  <td align="center">`nombres`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`aplldo_ptrno`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`aplldo_mtrno`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`crro_elctrnco`</td>
  <td align="center">`varchar`</td>
  <td align="center">Unique Check(NULL OR '%@%.%')</td>
</tr>

<tr>
  <td align="center">`telefono`</td>
  <td align="center">`varchar`</td>
  <td align="center">Check('^9[0-9]{8}$')</td>
</tr>

<tr>
  <td align="center">`fcha_rgstro`</td>
  <td align="center">`date`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`nmro_pddos`</td>
  <td align="center">`int4`</td>
  <td align="center">Check(>= 0)</td>
</tr>

</table>

<br>

<!-- TABLA PEDIDO -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `pedido`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_pedido`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`precio_total`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(>= 0)</td>
</tr>

<tr>
  <td align="center">`dscnto_ttal`</td>
  <td align="center">`numeric`</td>
  <td align="center">CHECK(NULL OR >= 0)</td>
</tr>

<tr>
  <td align="center">`fecha`</td>
  <td align="center">`timestamp`</td>
  <td align="center">Default CURRENT_TIMESTAMP</td>
</tr>

<tr>
  <td align="center">`id_clbrdor`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

<tr>
  <td align="center">`id_cliente`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>

<br>

<!-- TABLA DTLLE_PDDO -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `dtlle_pddo`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_pedido`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

<tr>
  <td align="center">`id_lote`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

<tr>
  <td align="center">`unidades`</td>
  <td align="center">`int4`</td>
  <td align="center">Check(> 0)</td>
</tr>

<tr>
  <td align="center">`precio_unidad`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(>= 0)</td>
</tr>

<tr>
  <td align="center">`precio_final`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(>= 0)</td>
</tr>

<tr>
  <td align="center">`id_dtlle_pddo`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

</table>

<br>

<!-- TABLA INFRACCION -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `infraccion`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_infraccion`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`nmbre_infrccon`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`gravedad`</td>
  <td align="center">`int4`</td>
  <td align="center">Check(1,2,3,4)</td>
</tr>

<tr>
  <td align="center">`descripcion`</td>
  <td align="center">`text`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`penalizacion`</td>
  <td align="center">`text`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`pnlzcon_ecnmca`</td>
  <td align="center">`int4`</td>
  <td align="center">Check(NULL OR >= 0)</td>
</tr>

<tr>
  <td align="center">`fecha`</td>
  <td align="center">`date`</td>
  <td align="center"></td>
</tr>

</table>

<br>

<!-- TABLA ACTO -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `acto`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_acto`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`descripcion`</td>
  <td align="center">`text`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_clbrdor`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

<tr>
  <td align="center">`id_infraccion`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>

<br>

<!-- TABLA PRODUCTO -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `producto`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_producto`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`nmbre_prdcto`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`descripcion`</td>
  <td align="center">`text`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`precio_actual`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(>= 0)</td>
</tr>

<tr>
  <td align="center">`id_ctgra`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>

<br>

<!-- TABLA PRESENTACION -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `presentacion`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_presentacion`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`nmbre_prsntcon`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`peso_gramos`</td>
  <td align="center">`int4`</td>
  <td align="center">Check(> 0)</td>
</tr>

</table>

<br>

<!-- TABLA INVENTARIO -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `inventario`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_invntro`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`observacion`</td>
  <td align="center">`text`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`id_lote`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign Unique</td>
</tr>

</table>


<br>

<!-- TABLA PRCSO_PGO -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `prcso_pgo`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_prcso_pgo`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`comision`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(NULL OR >= 0)</td>
</tr>

<tr>
  <td align="center">`ingrso_nto`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(>= 0)</td>
</tr>

<tr>
  <td align="center">`id_pedido`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

<tr>
  <td align="center">`id_mtdo_pgo`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>


<br>

<!-- TABLA MTDO_PGO -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `mtdo_pgo`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_mtdo_pgo`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`nmbre_mtdo_pgo`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`entidad`</td>
  <td align="center">`varchar`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`prcntje_cmson`</td>
  <td align="center">`int4`</td>
  <td align="center">Check(BEETWEN 0 AND 100)</td>
</tr>

</table>

<br>

<!-- TABLA MERMA -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `merma`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_merma`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`nmbre_mrma`</td>
  <td align="center">`varchar`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`descripcion`</td>
  <td align="center">`text`</td>
  <td align="center">Nullable</td>
</tr>

</table>

<br>

<!-- TABLA DTLLE_MRMA -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `dtlle_mrma`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_dtlle_mrma`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`cantidad`</td>
  <td align="center">`int4`</td>
  <td align="center">Check(> 0)</td>
</tr>

<tr>
  <td align="center">`descripcion`</td>
  <td align="center">`text`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_merma`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

<tr>
  <td align="center">`id_lote`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

<tr>
  <td align="center">`fecha`</td>
  <td align="center">`date`</td>
  <td align="center"></td>
</tr>

</table>

</td>

<!-- COLUMNA DERECHA -->
<td valign="top" width="700" align="center">
  
<!-- TABLA COLABORADOR -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `colaborador`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_clbrdor`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`dni`</td>
  <td align="center">`varchar`</td>
  <td align="center">Unique Check('^[0-9]{8}$')</td>
</tr>

<tr>
  <td align="center">`nombres`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`aplldo_ptrno`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`aplldo_mtrno`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`crro_elctrnco`</td>
  <td align="center">`varchar`</td>
  <td align="center">Unique Check('%@%.%')</td>
</tr>

<tr>
  <td align="center">`telefono`</td>
  <td align="center">`varchar`</td>
  <td align="center">Check('^9[0-9]{8}$')</td>
</tr>

<tr>
  <td align="center">`fcha_ncmnto`</td>
  <td align="center">`date`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`fcha_cntrtcon`</td>
  <td align="center">`date`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`fecha_clmncon`</td>
  <td align="center">`date`</td>
  <td align="center">Check(NULL OR >= fcha_cntrtcon)</td>
</tr>

<tr>
  <td align="center">`bono`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(NULL OR >= 0)</td>
</tr>

<tr>
  <td align="center">`sueldo`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(> 0)</td>
</tr>

<tr>
  <td align="center">`observacion`</td>
  <td align="center">`text`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`direccion`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`fcha_ingrso`</td>
  <td align="center">`date`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`prdo_cntrto`</td>
  <td align="center">`varchar`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`estado`</td>
  <td align="center">`bool`</td>
  <td align="center">Default 'True'</td>
</tr>

<tr>
  <td align="center">`id_lugar`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

<tr>
  <td align="center">`id_jefe`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign Nullable</td>
</tr>

<tr>
  <td align="center">`id_turno`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>

<br>

<!-- TABLA LUGAR -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `lugar`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_lugar`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`distrito`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`provincia`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`region`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

</table>


<br>

<!-- TABLA TURNO -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `turno`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_turno`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`nombre_turno`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`hora_inicio`</td>
  <td align="center">`time`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`hora_fin`</td>
  <td align="center">`time`</td>
  <td align="center"></td>
</tr>

</table>

<br>

<!-- TABLA JORNADA -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `jornada`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_jornada`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`jrnda_cmplta`</td>
  <td align="center">`bool`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`hora_entrada`</td>
  <td align="center">`time`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`hora_salida`</td>
  <td align="center">`time`</td>
  <td align="center">Check(> hora_entrada)</td>
</tr>

<tr>
  <td align="center">`fecha`</td>
  <td align="center">`date`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_clbrdor`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>

<br>

<!-- TABLA PROMOCION -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `promocion`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_promocion`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`nmbre_prmcon`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`fcha_inco`</td>
  <td align="center">`timestamp`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`fcha_fin`</td>
  <td align="center">`timestamp`</td>
  <td align="center">Check(> fcha_inco)</td>
</tr>

<tr>
  <td align="center">`cntdad_mnma`</td>
  <td align="center">`int4`</td>
  <td align="center">Check(> 0)</td>
</tr>

<tr>
  <td align="center">`descripcion`</td>
  <td align="center">`text`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`dscnto_max`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(>= 0)</td>
</tr>

</table>

<br>

<!-- TABLA PRDCTO_PRMCON -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `prdcto_prmcon`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_prdcto_prmcon`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`id_lote`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

<tr>
  <td align="center">`id_promocion`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>

<br>

<!-- TABLA CATEGORIA -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `categoria`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_ctgra`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`nmbre_ctgra`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`mnmo_edd`</td>
  <td align="center">`int4`</td>
  <td align="center">Check(> 0)</td>
</tr>

</table>

<br>

<!-- TABLA LOTE -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `lote`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_lote`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`cantidad`</td>
  <td align="center">`int4`</td>
  <td align="center">Check(> 0)</td>
</tr>

<tr>
  <td align="center">`precio_compra`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(>= 0)</td>
</tr>

<tr>
  <td align="center">`precio_venta`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(>= 0 AND >= precio_compra)</td>
</tr>

<tr>
  <td align="center">`fcha_vncmnto`</td>
  <td align="center">`date`</td>
  <td align="center">Check(> fcha_ingrso)</td>
</tr>

<tr>
  <td align="center">`fcha_ingrso`</td>
  <td align="center">`date`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_proveedor`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

<tr>
  <td align="center">`id_producto`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

<tr>
  <td align="center">`id_presentacion`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>

<br>

<!-- TABLA PROVEEDOR -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `proveedor`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_proveedor`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`nmbre_prvdor`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`crro_elctrnco`</td>
  <td align="center">`varchar`</td>
  <td align="center">Unique Check('%@%.%')</td>
</tr>

<tr>
  <td align="center">`telefono`</td>
  <td align="center">`varchar`</td>
  <td align="center">Check('^9[0-9]{8}$')</td>
</tr>

<tr>
  <td align="center">`direccion`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

</table>

<br>

<!-- TABLA HSTRAL_PRCO -->

<table border="3" cellpadding="10" width="500">

<tr>
  <th colspan="3" align="center">
📋 Table: `hstral_prco`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_hstral_prco`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`fcha_cmbo`</td>
  <td align="center">`timestamp`</td>
  <td align="center">Default CURRENT_TIMESTAMP</td>
</tr>

<tr>
  <td align="center">`prco_antror`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(>= 0)</td>
</tr>

<tr>
  <td align="center">`prco_nvo`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(>= 0)</td>
</tr>

<tr>
  <td align="center">`id_producto`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>

</td>

</tr>

</table>

<br>

<h3>NoSQL (MongoDB <img src="https://img.icons8.com/?size=100&id=tBBf3P8HL0vR&format=png&color=000000" width="24px" height="24px" alt="mongodb">)</h3>

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<code>dtlle_prcso_pgo</code></h3>

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;⚙️ Diseño de tablas: (SQL que se va pasar a NoSQL)</h3>

<table align="center" cellpadding="20">

<tr>

<!-- COLUMNA IZQUIERDA -->
<td valign="top" width="500" align="center">

<table>
  
<tr>
  <th colspan="3" align="center">
📋 Table: `dtlle_prcso_pgo`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_dtlle_prcso_pgo`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`tipo_pago`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`comision`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(>= 0)</td>
</tr>

<tr>
  <td align="center">`ingreso_neto`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(> 0)</td>
</tr>

<tr>
  <td align="center">`id_pedido`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

<tr>
  <td align="center">`id_prcso_pgo`</td>
  <td align="center">`int4`</td>
  <td align="center">Unique</td>
</tr>

</table>

</td>

<!-- COLUMNA DERECHA -->
<td valign="top" width="500" align="center">

<table  align="center" border="3" cellpadding="10">

<tr>
  <th colspan="3" align="center">
📋 Table: `cuenta`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_cuota`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`numero`</td>
  <td align="center">`int4`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`monto`</td>
  <td align="center">`numeric`</td>
  <td align="center">Check(> 0)</td>
</tr>

<tr>
  <td align="center">`estado`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_dtlle_prcso_pgo`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>

</td>

</tr>

</table>

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;🛠️ Diseño NoSQL:</h3>

```json {1-26}
{ 
  "_id": "ObjectId", 
  "id_pedido": 101, 
  "tipo_pago": "credito", 
  "comision": 5.5, 
  "ingreso_neto": 194.5, 
  "cuotas": [ 
    { 
      "numero": 1, 
      "monto": 50, 
      "estado": "pagado" 
    }, 
    { 
      "numero": 2, 
      "monto": 50, 
      "estado": "pendiente" 
    }, 
     
    { 
      "numero": 3, 
      "monto": 94.5, 
      "estado": "pendiente" 
    }, 
 
  ] 
}
```

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;🔍 SELECT que filtra datos:</h3>

```javascript {1-18}
// Consulta 1: Obtener todos los pedidos cuyo tipo de pago es crédito 
db.dtlle_prcso_pgo.find({ 
  tipo_pago: "credito" 
}) 
 
// Consulta 2: Obtener pedidos que tengan al menos una cuota pendiente 
db.dtlle_prcso_pgo.find({ 
  "cuotas.estado": "pendiente" 
}) 
 
// Consulta 3: Obtener pedidos donde exista una cuota con monto mayor a 50 
db.dtlle_prcso_pgo.find({ 
  cuotas: { 
    $elemMatch: { 
      monto: { $gt: 50 } 
    } 
  } 
}) 
```

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;📝 Justificación del modelo NoSQL:</h3>

<table align="center" cellpadding="20" width="100%">
<tr>
  <td align="center">
En este caso, cada transacción puede contener un número variable de cuotas dependiendo 
del método de pago. En un modelo relacional, esto implicaría separar la información en 
múltiples tablas (por ejemplo, una tabla de pagos y otra de cuotas) y realizar JOINs para 
reconstruir la información completa. 
En cambio, con NoSQL es posible almacenar todo el proceso de pago en un único 
documento. Esto elimina la necesidad de JOINs, reduce la complejidad de las consultas 
y mejora el rendimiento en lecturas, ya que toda la información relevante se encuentra en 
una sola estructura.
  </td>
</tr>
</table>

<hr>

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<code>clnte_cnfgrcon</code></h3>

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;⚙️ Diseño de tablas: (SQL que se va pasar a NoSQL)</h3>

<table align="center" cellpadding="20">

<tr>

<!-- COLUMNA IZQUIERDA -->
<td valign="top" width="500" align="center">

<table>
  
<tr>
  <th colspan="3" align="center">
📋 Table: `clnte_cnfgrcon`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_clnte_cnfgrcon`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`id_cliente`</td>
  <td align="center">`int4`</td>
  <td align="center">Unique Foreign</td>
</tr>

</table>

</td>

<!-- COLUMNA DERECHA -->
<td valign="top" width="500" align="center">

<table align="center" border="3" cellpadding="10">

<tr>
  <th colspan="3" align="center">
📋 Table: `preferencia`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_preferencia`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`categoria_favorita`</td>
  <td align="center">`varchar`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`producto_favorito`</td>
  <td align="center">`varchar`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`recibe_promociones`</td>
  <td align="center">`varchar`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`id_clnte_cnfgrcon`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>

</td>

</tr>

</table>

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;🛠️ Diseño NoSQL:</h3>

```json {1-9}
{ 
  "_id": "ObjectId", 
  "id_cliente": 5, 
  "preferencia": { 
    "categoria_favorita": "bebidas", 
    "producto_favorito" : "Coca Cola 500ml" 
    "recibe_promociones": true 
  }
}
```

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;🔍 SELECT que filtra datos:</h3>

```javascript {1-14}
// Consulta 1: Obtener clientes que aceptan recibir promociones 
db.clnte_cnfgrcon.find({ 
  "preferencia.recibe_promociones": true 
}) 
 
// Consulta 2: Obtener clientes cuya categoría favorita es "bebidas" 
db.clnte_cnfgrcon.find({ 
  "preferencia.categoria_favorita": "bebidas" 
}) 
 
// Consulta 3: Obtener clientes cuyo producto favorito es "Coca Cola 500ml" 
db.clnte_cnfgrcon.find({ 
  "preferencia.producto_favorito": "Coca Cola 500ml" 
}) 
```

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;📝 Justificación del modelo NoSQL:</h3>

<table align="center" cellpadding="20" width="100%">
<tr>
  <td align="center">
Las preferencias de los clientes pueden variar significativamente entre usuarios y 
evolucionar con el tiempo. En un modelo SQL, agregar nuevos atributos implicaría 
modificar el esquema o crear tablas adicionales relacionadas, aumentando la dependencia 
de JOINs. 
NoSQL permite almacenar estas preferencias como documentos flexibles, donde cada 
cliente puede tener distintos atributos sin afectar a los demás. Esto elimina la rigidez del 
esquema relacional y evita consultas complejas para recuperar configuraciones 
completas.
  </td>
</tr>
</table>

<hr>

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<code>clnte_hstral</code></h3>

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;⚙️ Diseño de tablas: (SQL que se va pasar a NoSQL)</h3>

<table align="center" cellpadding="20">

<tr>

<!-- COLUMNA IZQUIERDA -->
<td valign="top" width="500" align="center">

<table>
  
<tr>
  <th colspan="3" align="center">
📋 Table: `clnte_hstral`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_clnte_hstral`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`id_cliente`</td>
  <td align="center">`int4`</td>
  <td align="center">Unique Foreign</td>
</tr>

</table>

</td>

<!-- COLUMNA DERECHA -->
<td valign="top" width="500" align="center">

<table align="center" border="3" cellpadding="10">

<tr>
  <th colspan="3" align="center">
📋 Table: `evento`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_preferencia`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`tipo`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_pedido`</td>
  <td align="center">`int4`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`fecha`</td>
  <td align="center">`timestamp`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_clnte_hstral`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>

</td>

</tr>

</table>

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;🛠️ Diseño NoSQL:</h3>

```json {1-22}
[
  {
    "_id": "6a442f3e08f328ea9ba71113",
    "id_cliente": 28,
    "eventos": [
      {
        "tipo": "compra",
        "id_pedido": 62,
        "fecha": "2026-06-30T21:03:57.189Z"
      },
      {
        "tipo": "pago",
        "id_pedido": 62,
        "cuotas": [
          {
            "numero": 1,
            "monto": 1.5
          },
          {
            "numero": 2,
            "monto": 1.5
          },
          {
            "numero": 3,
            "monto": 1.5
          }
        ],
        "fecha": "2026-06-30T21:03:57.189Z"
      },
      {
        "tipo": "pago",
        "id_pedido": 62,
        "cuotas": [
          {
            "numero": 4,
            "monto": 1.5
          },
          {
            "numero": 5,
            "monto": 1.5
          }
        ],
        "fecha": "2026-06-30T23:17:41.145Z"
      },
      {
        "tipo": "pago",
        "id_pedido": 62,
        "cuotas": [
          {
            "numero": 6,
            "monto": 1.5
          },
          {
            "numero": 7,
            "monto": 1.5
          },
          {
            "numero": 8,
            "monto": 1.5
          }
        ],
        "fecha": "2026-06-30T23:22:08.507Z"
      },
      {
        "tipo": "pago",
        "id_pedido": 62,
        "cuotas": [
          {
            "numero": 9,
            "monto": 1.5
          },
          {
            "numero": 10,
            "monto": 1.5
          },
          {
            "numero": 11,
            "monto": 1.5
          }
        ],
        "fecha": "2026-06-30T23:30:11.825Z"
      }
    ]
  },
  {
    "_id": "6a45d9975362aad673682f2d",
    "id_cliente": 28,
    "eventos": [
      {
        "tipo": "compra",
        "id_pedido": 84,
        "fecha": "2026-07-02T03:23:03.224Z"
      },
      {
        "tipo": "pago",
        "id_pedido": 84,
        "cuotas": [
          {
            "numero": 1,
            "monto": 2.5
          },
          {
            "numero": 2,
            "monto": 2.5
          },
          {
            "numero": 3,
            "monto": 2.5
          }
        ],
        "fecha": "2026-07-02T03:23:03.224Z"
      }
    ]
  }
]
```

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;🔍 SELECT que filtra datos:</h3>

```javascript {1-14}
// Consulta 1: Obtener todo el historial de eventos de un cliente específico 
db.clnte_hstral.find({ 
  id_cliente: 5 
}) 
 
// Consulta 2: Obtener clientes que tengan al menos un evento de tipo "compra" 
db.clnte_hstral.find({ 
  "eventos.tipo": "compra" 
}) 
 
// Consulta 3: Obtener clientes que tengan eventos en una fecha específica 
db.clnte_hstral.find({ 
  "eventos.fecha": "2026-06-01" 
})
```

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;📝 Justificación del modelo NoSQL:</h3>

<table align="center" cellpadding="20" width="100%">
<tr>
  <td align="center">
El historial de eventos de cada cliente es de tamaño variable y crecimiento continuo. En 
SQL, esto requeriría una tabla de eventos relacionada con clientes y múltiples JOINs para 
obtener el historial completo. 
En NoSQL, los eventos se almacenan como un arreglo dentro del documento del cliente, 
permitiendo recuperar todo el historial con una sola consulta. Esto reduce 
significativamente el costo de las operaciones de lectura y simplifica la lógica del sistema.
  </td>
</tr>
</table>

<hr>

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<code>dtlle_edcon</code></h3>

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;⚙️ Diseño de tablas: (SQL que se va pasar a NoSQL)</h3>

<table align="center" cellpadding="20">

<tr>

<!-- COLUMNA IZQUIERDA -->
<td valign="top" width="500" align="center">

<table>
  
<tr>
  <th colspan="3" align="center">
📋 Table: `dtlle_edcon`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_dtlle_edcon`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`tabla`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`evento`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`fecha`</td>
  <td align="center">`timestamp`</td>
  <td align="center"></td>
</tr>

</table>

</td>

<!-- COLUMNA DERECHA -->
<td valign="top" width="500" align="center">

<table align="center" border="3" cellpadding="10">

<tr>
  <th colspan="3" align="center">
📋 Table: `detalle`
  </th>
</tr>

<tr>
  <th align="center">Name</th>
  <th align="center">Type</th>
  <th align="center">Constraints</th>
</tr>

<tr>
  <td align="center">`id_detalle`</td>
  <td align="center">`int4`</td>
  <td align="center">Primary</td>
</tr>

<tr>
  <td align="center">`*dato`</td>
  <td align="center">`varchar`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_dtlle_edcon`</td>
  <td align="center">`int4`</td>
  <td align="center">Foreign</td>
</tr>

</table>

</td>

</tr>

</table>

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;🛠️ Diseño NoSQL:</h3>

```json {1-9}
[
  {
    "_id": "6a453399bcc82f0592c8f1b8",
    "tabla": {
      "tabla": "proveedor",
      "evento": "UPDATE",
      "detalle": {
        "id_proveedor": 3,
        "antes": {
          "nmbre_prvdor": "Abarrotes del Sur",
          "crro_elctrnco": "info@abarrotessur.com",
          "telefono": "934567812",
          "direccion": "Calle Comercio 789"
        },
        "despues": {
          "telefono": "934567712"
        }
      }
    },
    "evento": null,
    "fecha": "2026-07-01T15:34:49.412Z",
    "detalle": {}
  },
  {
    "_id": "6a45c9a3038ecce73cc202d5",
    "tabla": {
      "tabla": "cliente",
      "evento": "UPDATE",
      "detalle": {
        "id_cliente": 1,
        "antes": {
          "nombres": "Juan Fernando",
          "crro_elctrnco": "juan_quispe@hotmail.com",
          "telefono": "951753655"
        },
        "despues": {
          "nombres": "Juan Pedro",
          "crro_elctrnco": "juan_quispe@gmail.com",
          "telefono": "951755689"
        }
      }
    },
    "evento": null,
    "fecha": "2026-07-02T02:14:59.586Z",
    "detalle": {}
  }
]
```

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;🔍 SELECT que filtra datos:</h3>

```javascript {1-15}
// Consulta 1: Obtener todos los eventos de tipo UPDATE sobre la tabla "pedido" 
db.dtlle_edcon.find({ 
  tabla: "pedido", 
  evento: "UPDATE" 
}) 
 
// Consulta 2: Obtener eventos ocurridos en una fecha específica 
db.dtlle_edcon.find({ 
  fecha: "2026-06-07T10:15:00Z" 
}) 
 
// Consulta 3: Obtener eventos donde se modificó un pedido específico 
db.dtlle_edcon.find({ 
  "detalle.id_pedido": 101 
}) 
```

<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;📝 Justificación del modelo NoSQL:</h3>

<table align="center" cellpadding="20" width="100%">
<tr>
  <td align="center">
Los registros de auditoría contienen información heterogénea dependiendo del tipo de 
evento registrado. En un modelo relacional, esto obligaría a diseñar múltiples tablas o 
estructuras genéricas con numerosas relaciones y JOINs para reconstruir los cambios. 
NoSQL permite almacenar estos eventos como documentos independientes con 
estructuras variables, adaptándose a cada tipo de modificación sin necesidad de redefinir 
el esquema. Esto facilita la trazabilidad y reduce la complejidad de las consultas.
  </td>
</tr>
</table>

<br>

<h2>🔗 Relación entre SQL y NoSQL </h2>

<table align="center" cellpadding="20">
<tr>
  <th align="center">NoSQL (MongoDB Atlas <img src="https://img.icons8.com/?size=100&id=tBBf3P8HL0vR&format=png&color=000000" width="18.72x" height="18.72px" alt="mongodb">) <code>Colection</code></th>
  <th align="center">SQL (Supabase <img src="https://img.icons8.com/?size=100&id=grZaE9tjqDyr&format=png&color=000000" width="18.72px" height="18.72px" alt="supabase">) <code>Table</code></th>
</tr>
<tr>
  <td align="center">dtlle_prcso_pgo</td>
  <td align="center">pedido</td>
</tr>
<tr>
  <td align="center">clnte_cnfgrcon</td>
  <td align="center">cliente</td>
</tr>
<tr>
  <td align="center">clnte_hstral</td>
  <td align="center">cliente</td>
</tr>
<tr>
  <td align="center">dtlle_edcon</td>
  <td align="center">*todas</td>
</tr>
</table>
