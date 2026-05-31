<h1 align="center">𝙿𝚁𝙾𝚈𝙴𝙲𝚃𝙾 𝙵𝙸𝙽𝙰𝙻 𝙱𝙰𝚂𝙴 𝙳𝙴 𝙳𝙰𝚃𝙾𝚂</h1>
<h2>👥 INTEGRANTES DEL GRUPO:</h2>
<table align="center" cellpadding="12">
<tr>         
  <td align="center" width="350">
  Bernedo Coya Jose Daniel
  </td>
  <td align="center" width="350">
  Cangre Ure Zuriel Alberto
  </td>
</tr>
<tr>
  <td align="center" width="350">
  Valenzuela Lazarte Brysett Magely
  </td>
  <td align="center" width="350">
  Huaroc Vargas Betzabe Delia
  </td>
</tr>
</table>

<h2>📌 INFORMACIÓN DEL PROYECTO:</h2>

<table align="center" cellpadding="12">
<tr>
  <th align="center">Cantidad Total de Tablas</th>
</tr>
<tr>
  <td align="center">22</td>
</tr>
</table>

<h2>📋 TABLAS DETALLADAS:</h2>

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
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_cliente`</td>
  <td align="center">`int4`</td>
  <td align="center"></td>
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
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_producto`</td>
  <td align="center">`int4`</td>
  <td align="center"></td>
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
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_infraccion`</td>
  <td align="center">`int4`</td>
  <td align="center"></td>
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
  <td align="center"></td>
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
  <td align="center">`cantidad`</td>
  <td align="center">`int4`</td>
  <td align="center">Check(>= 0)</td>
</tr>

<tr>
  <td align="center">`observacion`</td>
  <td align="center">`text`</td>
  <td align="center">Nullable</td>
</tr>

<tr>
  <td align="center">`id_lote`</td>
  <td align="center">`int4`</td>
  <td align="center">Unique</td>
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
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_mtdo_pgo`</td>
  <td align="center">`int4`</td>
  <td align="center"></td>
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
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_lote`</td>
  <td align="center">`int4`</td>
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
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_jefe`</td>
  <td align="center">`int4`</td>
  <td align="center">Nullable</td>
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
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_turno`</td>
  <td align="center">`int4`</td>
  <td align="center"></td>
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
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_promocion`</td>
  <td align="center">`int4`</td>
  <td align="center"></td>
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
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_producto`</td>
  <td align="center">`int4`</td>
  <td align="center"></td>
</tr>

<tr>
  <td align="center">`id_presentacion`</td>
  <td align="center">`int4`</td>
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
  <td align="center"></td>
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

</td>

</tr>

</table>
