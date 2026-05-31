-- ======================================================
-- 						--- INSERT ---
-- ======================================================

-- =========================================
-- TABLA: lugar
-- AUTOR: Brysett Valenzuela
-- =========================================
INSERT INTO lugar (distrito, provincia, region)
VALUES
	('Miraflores', 'Lima', 'Lima'),
	('Santiago de Surco', 'Lima', 'Lima'),
	('Yanahuara', 'Arequipa', 'Arequipa'),
	('Wanchaq', 'Cusco', 'Cusco'),
	('Trujillo', 'Trujillo', 'La Libertad'),
	('Chiclayo', 'Chiclayo', 'Lambayeque'),
	('Piura', 'Piura', 'Piura'),
	('Huancayo', 'Huancayo', 'Junín')
	('San Isidro', 'Lima', 'Lima'),
	('La Molina', 'Lima', 'Lima'),
	('Cayma', 'Arequipa', 'Arequipa'),
	('José Luis Bustamante y Rivero', 'Arequipa', 'Arequipa'),
	('San Sebastián', 'Cusco', 'Cusco'),
	('San Jerónimo', 'Cusco', 'Cusco'),
	('Victor Larco Herrera', 'Trujillo', 'La Libertad'),
	('Pimentel', 'Chiclayo', 'Lambayeque'),
	('Castilla', 'Piura', 'Piura'),
	('El Tambo', 'Huancayo', 'Junín')
	('Miraflores', 'Arequipa', 'Arequipa'),
	('Cerro Colorado', 'Arequipa', 'Arequipa');

-- =========================================
-- TABLA: turno
-- AUTOR: Brysett Valenzuela
-- =========================================
INSERT INTO turno (nmbre_trno, hora_inicio, hora_fin)
VALUES
	('Mañana', '06:00:00', '14:00:00'),
	('Tarde', '14:00:00', '22:00:00'),
	('Noche', '22:00:00', '06:00:00'),
	('Oficina', '08:00:00', '17:00:00'),
	('Partidario', '09:00:00', '13:00:00')
  RETURNING id_turno;

-- =========================================
-- TABLA: infraccion
-- AUTOR: Betzabe Huaroc
-- =========================================
INSERT INTO infraccion (tpo_infrccon, gravedad, descripcion, penalizacion, pnlzcon_ecnmca)
VALUES
	('Retraso', 1, 'Entrega de informes fuera del plazo establecido (hasta 48 horas de retraso).', 'Amonestación por escrito', 150.00),
	('Documentación', 1, 'No presentar las pólizas de seguro actualizadas en los primeros 5 días del mes.', 'Multa administrativa', 200.00),
	('Uniformidad', 1, 'Personal del proveedor se presenta sin el equipo de identificación institucional.', 'Amonestación verbal con registro en bitácora', 75.00),('Incumplimiento Parcial', 'Moderada', 'Interrupción del servicio de soporte técnico por un lapso de 2 a 4 horas laborables.', 'Descuento del 5% del pago mensual', 850.00),
	('Incumplimiento Parcial', 2, 'Interrupción del servicio de soporte técnico por un lapso de 2 a 4 horas laborables.', 'Descuento del 5% del pago mensual', 850),
	('Calidad', 2, 'Uso de materiales o insumos de menor calidad a la especificada en el anexo técnico.', 'Sustitución inmediata de materiales y multa', 1200.00),
	('Confidencialidad', 2, 'Uso inadecuado de logos o marcas de la empresa sin la autorización expresa del contrato.', 'Suspensión temporal del acceso a las instalaciones', 1500.00),('Ausencia de Servicio', 'Grave', 'Abandono injustificado del servicio o cese de operaciones por más de 24 horas continuas.', 'Rescisión de contrato y ejecución de fianza', 5000.00),
	('Ausencia de Servicio', 3, 'Abandono injustificado del servicio o cese de operaciones por más de 24 horas continuas.', 'Rescisión de contrato y ejecución de fianza', 5000),
	('Seguridad', 3, 'Vulneración de datos sensibles por negligencia en el manejo de credenciales compartidas.', 'Auditoría obligatoria externa y penalización máxima', 7500.00),
	('Subcontratación', 3, 'Subcontratar los servicios del objeto del contrato con terceros sin el consentimiento previo.', 'Clasificación de proveedor no elegible y multa', 3500.00),
	('Capacitación', 1, 'No asistir a una capacitación obligatoria programada por la entidad contratante.', 'Amonestación escrita y capacitación complementaria', 100),
	('Mantenimiento', 2, 'No realizar el mantenimiento preventivo programado de los equipos dentro del plazo establecido.', 'Multa y reprogramación obligatoria del mantenimiento', 1800),
	('Incumplimiento de SLA', 2, 'No alcanzar los niveles mínimos de servicio acordados durante un período de evaluación.', 'Descuento del 10% de la facturación mensual', 2200),
	('Fraude Documentario', 3, 'Presentar documentación alterada o información falsa durante la ejecución contractual.', 'Suspensión inmediata del contrato y multa', 9000),
	('Accidente por Negligencia', 4, 'Provocar daños materiales o lesiones debido al incumplimiento de protocolos de seguridad.', 'Resolución contractual y acciones legales correspondientes', 15000),
	('Corrupción o Soborno', 4, 'Ofrecer o entregar beneficios indebidos a personal de la entidad para obtener ventajas contractuales.', 'Inhabilitación permanente como proveedor y denuncia ante las autoridades', 25000);

-- =========================================
-- TABLA: cliente
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO cliente (dni, nombres, aplldo_ptrno, aplldo_mtrno, crro_elctrnco, telefono, fcha_rgstro, nmro_pddos)
VALUES
	(45712398, 'Pepe', 'Quispe', 'Hurtado', 'pepe_quispe@hotmail.com', 951753654, '2026-05-21', 3),
	(70241568, 'Felipe', 'Huaroc', 'Lopez', 'felipe_huaroc@gmail.com', 987456321, '2026-02-20', 7),
	(15842639, 'Fernando', 'Olivera', 'Gomez', 'fernando_olivera@hotmail.com', 963842751, '2026-04-24', 4),
	(42369871, 'Cielo', 'Guerra', 'Garcia', 'cielo_guerra@gmail.com', 953285645, '2025-02-19', 1),
	(29517463, 'Manuel', 'Medrano', 'Padilla', 'manuel_medrano@gmail.com', 954685312, '2026-01-14', 9),
	(46123958, 'Carlos', 'Mendoza', 'Torres', 'carlos.mendoza@gmail.com', 981234567, '2026-03-15', 5),
	(71248593, 'Ana', 'Flores', 'Benitez', 'ana_flores99@hotmail.com', 945678123, '2025-11-12', 12),
	(10243958, 'Luis', 'Ramirez', 'Chavez', 'lucho_ramirez@gmail.com', 912345678, '2026-01-22', 2),
	(43958124, 'Maria', 'Gutierrez', 'Quispe', 'maria.gutierrez@outlook.com', 934567890, '2026-04-05', 8),
	(75412963, 'Jorge', 'Castillo', 'Diaz', 'jorge_castillo@gmail.com', 956789012, '2025-08-19', 15),
	(40129384, 'Lucia', 'Espinoza', 'Ramos', 'lucia.es@hotmail.com', 978901234, '2026-02-28', 4),
	(19482736, 'Pedro', 'Sanchez', 'Vargas', 'pedrosanchez@gmail.com', 990123456, '2026-05-10', 1),
	(72039481, 'Elena', 'Rojas', 'Medina', 'elena.rojas@gmail.com', 923456789, '2025-06-14', 20),
	(45120394, 'Raul', 'Velasquez', 'Cruz', 'raul_velasquez@outlook.com', 945123789, '2026-03-01', 6),
	(73948102, 'Sofia', 'Campos', 'Villanueva', 'sofia.campos@gmail.com', 967890123, '2026-05-25', 3),
	(41029384, 'Diego', 'Aguilar', 'Paredes', 'daguilar@gmail.com', 989012345, '2025-10-05', 11),
	(12938475, 'Camila', 'Morales', 'Herrera', 'camila_morales@hotmail.com', 911223344, '2026-04-18', 7),
	(48273619, 'Gabriel', 'Fuentes', 'Salazar', 'gabu.fuentes@gmail.com', 922334455, '2026-02-11', 0),
	(74918230, 'Valeria', 'Paredes', 'Guerrero', 'valeparedes@gmail.com', 933445566, '2025-12-25', 9),
	(40591827, 'Andres', 'Soto', 'Miranda', 'andres_soto@outlook.com', 944556677, '2026-01-30', 14),
	(71928304, 'Claudia', 'Tapia', 'Vega', 'clau.tapia@gmail.com', 955667788, '2026-05-02', 5),
	(42839105, 'Ricardo', 'Vargas', 'Alvarez', 'ricardovargas@hotmail.com', 966778899, '2025-09-17', 22),
	(10928374, 'Diana', 'Caceres', 'Rios', 'diana.caceres@gmail.com', 977889900, '2026-03-21', 3),
	(73849201, 'Javier', 'Muñoz', 'Reyes', 'javiermunoz@gmail.com', 988990011, '2026-04-12', 6),
	(49203948, 'Beatriz', 'Pinto', 'Lazo', 'beatriz_pinto@outlook.com', 999001122, '2025-07-09', 10),
	(12345678, 'Mateo', 'Delgado', 'Cabrera', 'mateo.delgado@gmail.com', 912398475, '2026-02-05', 4),
	(87654321, 'Rosa', 'Salas', 'Montoya', 'rosasalas@hotmail.com', 934857123, '2026-05-15', 2),
	(23456789, 'Alejandro', 'Zeballos', 'Pari', 'azeballos@gmail.com', 956284713, '2025-11-20', 13),
	(98765432, 'Gabriela', 'Ticona', 'Mamani', 'gabriela_ticona@gmail.com', 978135246, '2026-01-08', 8)
ON CONFLICT (crro_elctrnco) DO NOTHING
RETURNING id_cliente;

-- =========================================
-- TABLA: prdcto_prmcon
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO prdcto_prmcon (id_prdcto, id_lote, id_prmcon)
VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 5, 1),
	(4, 6, 3),
	(5, 7, 3),
	(6, 10, 3),
	(7, 3, 4),
	(8, 8, 4),
	(9, 13, 4),
	(10, 18, 4),
	(11, 4, 5),
	(12, 9, 5),
	(13, 14, 5),
	(14, 19, 5),
	(15, 24, 5),
	(16, 11, 2),
	(17, 12, 2),
	(18, 15, 2),
	(19, 20, 2),
	(20, 25, 2);

-- =========================================
-- TABLA: promocion
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO promocion (nmbre_promocon, fecha_inicio, fecha_fin, descuento, cntdad_mnma, descripcion)
VALUES
	('Dia de la Madre', '2026-05-01', '2026-05-15', 1, '20% de descuento en la seccion de chocolates y regalos.', 20.00),
	('Aniversario', '2026-09-01', '2026-09-30', 1, '10% de descuento en toda la tienda por nuestro mes de aniversario.', 10.00),
	('Dia del Padre', '2026-06-10', '2026-06-21', 1, '20% de descuento en la seccion de regalos.', 20.00),
	('Remate', '2026-05-29', '2026-05-31', 2, '50% de descuento en productos seleccionados.', 50.00),
	('Descuento 3x2', '2026-05-28', '2026-06-30', 2, '100% de descuento en el 3er producto y en ciertos productos seleccionados.', 100.00),
	('Fiestas Patrias', '2026-07-20 00:00:00', '2026-07-31 23:59:59', 1, '25% de descuento en productos seleccionados por Fiestas Patrias.', 25.00),
	('Navidad', '2026-12-01 00:00:00', '2026-12-25 23:59:59', 1, '30% de descuento en chocolates, panetones y regalos navideños.', 30.00),
	('Black Friday', '2026-11-27 00:00:00', '2026-11-29 23:59:59', 2, '40% de descuento en productos seleccionados durante Black Friday.', 40.00),
	('Cyber Days', '2026-04-15 00:00:00', '2026-04-20 23:59:59', 1, '35% de descuento en compras realizadas por la web.', 35.00),
	('Vuelta al Colegio', '2026-02-15 00:00:00', '2026-03-15 23:59:59', 3, '15% de descuento en útiles escolares y productos educativos.', 15.00),
	('San Valentín', '2026-02-01 00:00:00', '2026-02-14 23:59:59', 1, '20% de descuento en chocolates, flores y regalos para parejas.', 20.00),
	('Semana Santa', '2026-03-25 00:00:00', '2026-04-05 23:59:59', 2, '18% de descuento en productos seleccionados durante Semana Santa.', 18.00),
	('Cliente Frecuente', '2026-01-01 00:00:00', '2026-12-31 23:59:59', 5, '12% de descuento para clientes que compren 5 o más productos.', 12.00),
	('Fin de Temporada', '2026-08-15 00:00:00', '2026-08-31 23:59:59', 2, '45% de descuento en productos de temporada.', 45.00),
	('Combo Familiar', '2026-06-01 00:00:00', '2026-06-30 23:59:59', 4, '30% de descuento en compras de 4 o más productos participantes.', 30.00);

-- =========================================
-- TABLA: mtdo_pgo
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO mtdo_pgo (nmbre_mtdo_pgo, entidad, prcntje_cmson)
VALUES
	('Efectivo', 'Ninguna', 0.00),
	('Yape', 'BCP', 0.00),
	('Plin', 'Interbank', 0.00),
	('Tarjeta de Crédito', 'Visa', 5.00),
	('Tarjeta de Débito', 'Mastercard', 5.00);

-- =========================================
-- TABLA: categoria
-- AUTOR: Jose Bernedo
-- =========================================
INSERT INTO categoria (nmbre_ctgra, mnmo_edd) 
VALUES
	('Bebidas Gaseosa', 3),
	('Snacks', 1),
	('Lácteos', 1),
	('Productos de Limpieza', 10),
	('Cuidado Personal', 10),
	('Panadería', 1),
	('Bebidas Energizantes', 15),
	('Carnes y Embutidos', 1),
	('Productos Congelados', 1),
	('Útiles del Hogar', 10),
	('Mascotas', 10),
	('Bebidas Alcoholicas', 18)
	('Agua', 1);

-- =========================================
-- TABLA: proveedor
-- AUTOR: Jose Bernedo
-- =========================================
INSERT INTO proveedor (nmbre_prvdor, crro_elctrnco, telefono, direccion) 
VALUES
	('Distribuidora Andina', 'contacto@andina.com', '987654321', 'Av. Principal 123'),
	('Comercial Lima', 'ventas@comlima.com', '912345678', 'Jr. Los Olivos 456'),
	('Abarrotes del Sur', 'info@abarrotessur.com', '934567812', 'Calle Comercio 789'),
	('Proveedores Unidos', 'soporte@provunidos.com', '956781234', 'Av. Industrial 321'),
	('Mercantil Express', 'pedidos@mercantilx.com', '978123456', 'Jr. Central 654'),
	('Distribuciones Nova', 'admin@nova.com', '991234567', 'Calle Las Flores 987');
	('Bebidas del Pacífico', 'ventas@bebidaspacifico.com', '985741236', 'Av. Costanera 741'),
	('Lácteos Nacionales', 'contacto@lacteosnacionales.com', '973258741', 'Jr. Los Ganaderos 258'),
	('Panificadora Santa Rosa', 'pedidos@pansantarosa.com', '964125873', 'Av. Panamericana 456'),
	('Cárnicos Premium', 'ventas@carnicospremium.com', '952741863', 'Mercado Mayorista Zona B'),
	('Mascotilandia Distribuciones', 'compras@mascotilandia.com', '941258736', 'Av. Los Veterinarios 852'),
	('Importadora Energy Drink Perú', 'info@energydrinkperu.com', '936985214', 'Parque Industrial Mz. D Lt. 12'),
	('Bodegas y Licores del Sur', 'pedidos@licoresdelsur.com', '948753621', 'Av. República 963'),
	('Agua y Vida Distribuciones', 'ventas@aguayvida.com', '961357824', 'Jr. Los Manantiales 147'),
	('Hogar Express SAC', 'contacto@hogarexpress.com', '954812367',	 'Av. Las Industrias 753'),
	('Productos Naturales Andinos', 'administracion@naturalesandinos.com', '978456321', 'Calle Las Palmeras 258');

-- =========================================
-- TABLA: presentacion
-- AUTOR: Jose Bernedo
-- =========================================
INSERT INTO presentacion (id_presentacion, nmbre_prsntcon, peso_gramos)
VALUES
	(1, 'Botella 500ml', 524),
	(2, 'Bolsa 100g', 114),
	(3, 'Caja 1L', 1015),
	(4, 'Lata 355ml', 384),
	(5, 'Paquete 250g', 250),
	(6, 'Envase 789ml', 802),
	(7, 'Botella 2.5L', 2550),
	(8, 'Botella 750ml', 780),
	(9, 'Lata 250ml', 270),
	(10, 'Bolsa 1kg', 1000),
	(11, 'Paquete 500g', 500),
	(12, 'Frasco 200g', 220),
	(13, 'Envase 400g', 415),
	(14, 'Bandeja 500g', 520),
	(15, 'Docena', 720),
	(16, 'Sachet 85g', 85),
	(17, 'Rollo 10m', 180),
	(18, 'Aerosol 150ml', 175),
	(19, 'Bidón 7L', 7100),
	(20, 'Bolsa 5kg', 5000),
	(21, 'Caja x12 Unidades', 4800);

-- =========================================
-- TABLA: lote
-- AUTOR: Jose Bernedo
-- =========================================
INSERT INTO lote (id_lote, cantidad, precio_compra, precio_venta, fcha_vncmnto, fcha_ingrso, id_proveedor, id_producto, id_presentacion)
VALUES
	(100, 8.50, 12.00, '2027-01-15', '2026-05-01', 1, 1, 1),
	(80, 15.00, 22.00, '2027-02-28', '2026-05-05', 2, 2, 1),
	(150, 4.20, 6.50, '2026-12-31', '2026-05-10', 1, 3, 2),
	(60, 18.00, 28.00, '2027-03-15', '2026-05-12', 3, 4, 1),
	(120, 7.00, 10.50, '2027-04-30', '2026-05-20', 2, 5, 2),
	(200, 3.50, 5.00, '2027-06-30', '2026-06-01', 1, 6, 3),
	(90, 12.00, 18.00, '2027-07-15', '2026-06-05', 4, 7, 1),
	(70, 20.00, 30.00, '2027-08-31', '2026-06-10', 3, 8, 1),
	(110, 9.50, 14.00, '2027-09-30', '2026-06-15', 5, 9, 2),
	(180, 5.80, 8.50, '2027-10-31', '2026-06-20', 2, 10, 3),
	(140, 6.80, 10.20, '2027-11-30', '2026-07-01', 1, 11, 1),
	(95, 14.50, 21.00, '2027-12-15', '2026-07-05', 2, 12, 2),
	(220, 2.90, 4.50, '2027-09-30', '2026-07-10', 3, 13, 3),
	(75, 17.00, 25.50, '2028-01-31', '2026-07-15', 4, 14, 1),
	(130, 8.20, 12.50, '2027-08-31', '2026-07-20', 5, 15, 2),
	(160, 5.50, 8.00, '2027-10-15', '2026-07-25', 1, 16, 3),
	(85, 19.00, 29.00, '2028-02-28', '2026-08-01', 2, 17, 1),
	(250, 3.20, 4.80, '2027-12-31', '2026-08-05', 3, 18, 2),
	(105, 11.50, 17.50, '2028-03-31', '2026-08-10', 4, 19, 1),
	(170, 6.10, 9.20, '2027-11-15', '2026-08-15', 5, 20, 3),
	(125, 7.40, 11.20, '2028-04-30', '2026-09-01', 1, 21, 2),
	(90, 16.80, 25.00, '2028-05-15', '2026-09-05', 2, 22, 1),
	(210, 3.10, 4.90, '2027-12-31', '2026-09-10', 3, 23, 3),
	(65, 22.50, 34.00, '2028-06-30', '2026-09-15', 4, 24, 1),
	(150, 8.90, 13.50, '2028-01-31', '2026-09-20', 5, 25, 2),
	(180, 4.80, 7.20, '2028-03-31', '2026-09-25', 1, 26, 3),
	(110, 13.20, 19.80, '2028-07-31', '2026-10-01', 2, 27, 1),
	(240, 2.70, 4.20, '2028-02-28', '2026-10-05', 3, 28, 2),
	(95, 18.50, 27.90, '2028-08-31', '2026-10-10', 4, 29, 1),
	(175, 5.90, 8.90, '2028-05-31', '2026-10-15', 5, 30, 3);

-- =========================================
-- TABLA: inventario
-- AUTOR: Jose Bernedo
-- =========================================
INSERT INTO inventario (id_invntro, cantidad, observacion, id_lote)
VALUES
	(95, 'Stock disponible luego de ventas por promoción Día de la Madre.', 1),
	(72, 'Inventario actualizado tras ventas regulares.', 2),
	(140, 'Stock disponible para campaña de remate.', 3),
	(55, 'Algunas unidades reservadas para pedidos especiales.', 4),
	(110, 'Inventario afectado por promoción de chocolates y regalos.', 5),
	(185, 'Stock suficiente para la campaña Día del Padre.', 6),
	(80, 'Productos con alta rotación durante el mes.', 7),
	(62, 'Existencias reducidas por promoción 3x2.', 8),
	(98, 'Inventario revisado y validado.', 9),
	(165, 'Stock disponible para ventas de temporada.', 10),
	(120, 'Existencias actualizadas tras conteo físico.', 11),
	(88, 'Parte del lote reservado para ventas online.', 12),
	(200, 'Stock alto para futuras promociones.', 13),
	(58, 'Inventario reducido por alta demanda.', 14),
	(135, 'Productos disponibles para campaña de aniversario.', 15),
	(150, 'Stock disponible para promociones de temporada.', 16),
	(76, 'Inventario actualizado después de ventas semanales.', 17),
	(230, 'Existencias suficientes para atender la demanda proyectada.', 18),
	(92, 'Productos disponibles para venta inmediata.', 19),
	(160, 'Stock revisado durante auditoría interna.', 20),
	(118, 'Inventario afectado por ventas de campaña promocional.', 21),
	(84, 'Existencias reservadas para clientes frecuentes.', 22),
	(195, 'Stock disponible para reposición en tienda.', 23),
	(57, 'Inventario reducido por ventas de productos premium.', 24),
	(142, 'Productos disponibles para promoción especial.', 25),
	(168, 'Stock actualizado tras ingreso de mercancía.', 26),
	(101, 'Existencias disponibles para ventas online y físicas.', 27),
	(225, 'Inventario con alta disponibilidad para próximas campañas.', 28),
	(87, 'Stock reducido por alta rotación del producto.', 29),
	(163, 'Inventario validado y listo para comercialización.', 30);

-- =========================================
-- TABLA: pedido
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO pedido (precio_total, dscnto_ttal, fecha, id_clbrdor, id_cliente) VALUES
(55.50, 0.00, '2026-05-20 10:30:00', 1, 1),
(120.00, 10.00, '2026-05-21 11:15:00', 2, 2),
(35.00, NULL, '2026-05-21 14:20:00', 1, 3),
(15.80, 0.00, '2026-05-22 08:45:00', 3, 4),
(250.00, 25.00, '2026-05-22 17:00:00', 2, 5),
(42.00, NULL, '2026-05-23 09:15:00', 1, 6),
(88.90, 5.00, '2026-05-23 12:30:00', 3, 7),
(22.50, 0.00, '2026-05-24 15:10:00', 4, 8),
(115.00, 15.00, '2026-05-24 19:40:00', 2, 9),
(64.30, NULL, '2026-05-25 10:05:00', 1, 10),
(18.00, 0.00, '2026-05-25 11:50:00', 3, 11),
(105.20, 20.00, '2026-05-25 16:22:00', 4, 12),
(31.50, NULL, '2026-05-26 07:55:00', 1, 13),
(75.00, 0.00, '2026-05-26 13:40:00', 2, 14),
(14.20, NULL, '2026-05-26 21:10:00', 3, 15),
(95.00, 10.00, '2026-05-20 09:00:00', 4, 16),
(12.50, NULL, '2026-05-20 14:15:00', 1, 17),
(18.50, 0.00, '2026-05-21 16:30:00', 2, 18),
(145.00, 15.00, '2026-05-22 11:00:00', 3, 19),
(62.00, NULL, '2026-05-22 15:45:00', 1, 20),
(27.40, 0.00, '2026-05-23 10:20:00', 2, 21),
(190.50, 20.00, '2026-05-23 18:10:00', 4, 22),
(33.00, NULL, '2026-05-24 09:30:00', 3, 23),
(51.20, 5.00, '2026-05-24 13:15:00', 1, 24),
(84.00, NULL, '2026-05-25 14:50:00', 2, 25),
(16.50, 0.00, '2026-05-25 17:35:00', 4, 26),
(110.00, 10.00, '2026-05-26 11:10:00', 3, 27),
(45.00, NULL, '2026-05-26 16:00:00', 1, 28),
(135.20, 15.00, '2026-05-27 08:30:00', 2, 29),
(32.00, NULL, '2026-05-22 14:00:00', 1, 1),
(45.80, 0.00, '2026-05-24 18:20:00', 3, 1),
(15.00, NULL, '2026-05-22 19:10:00', 2, 2),
(85.00, 5.00, '2026-05-25 12:00:00', 2, 5),
(350.00, 50.00, '2026-05-26 20:15:00', 4, 13),
(95.50, 10.00, '2026-05-27 10:00:00', 1, 22)
RETURNING id_pedido;

-- =========================================
-- TABLA: merma
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO merma (nmbre_mrma, descripcion)
VALUES
	('Producto Vencido', 'Fecha de caducidad superada en el estante de exhibición.'),
	('Rotura por Manipulación', 'Envase roto debido a una caída durante el reabastecimiento.'),
	('Empaque Dañado', 'Enpaque aplastada/roto a causa desconocida en el almacén que dejó expuesto el producto interior.'),
	('Falla de Cadena de Frío', 'Deterioro de producto por corte de energía temporal en la vitrina refrigerada.'),
	('Deterioro de Fábrica', 'Latas/envases abolladas detectadas al momento de recepcionar el lote.'),
	('Contaminación del Producto', 'Producto afectado por derrame de sustancias externas que comprometen su consumo.'),
	('Daño por Humedad', 'Producto deteriorado debido a exposición prolongada a humedad en almacén.'),
	('Infestación de Plagas', 'Presencia de insectos o roedores que contaminaron el producto almacenado.'),
	('Error de Etiquetado', 'Producto con etiqueta incorrecta o ilegible que impide su comercialización.'),
	('Sellado Defectuoso', 'Envase con cierre defectuoso que compromete la conservación del contenido.'),
	('Oxidación del Producto', 'Alteración física o química del producto debido a exposición al aire.'),
	('Derrame de Contenido', 'Pérdida parcial o total del contenido por fuga en el envase.'),
	('Daño por Transporte Interno', 'Producto afectado durante el traslado entre áreas del establecimiento.'),
	('Exposición Solar', 'Deterioro causado por exposición prolongada a luz solar directa.'),
	('Producto Deformado', 'Alteración de la forma original del producto que afecta su presentación comercial.'),
	('Error de Almacenamiento', 'Producto almacenado en condiciones no adecuadas según especificaciones del fabricante.'),
	('Presencia de Moho', 'Desarrollo de hongos visibles que hacen inviable la venta del producto.'),
	('Lote Retirado del Mercado', 'Producto retirado por disposición del fabricante o autoridad sanitaria.'),
	('Daño por Congelamiento', 'Producto afectado por temperaturas inferiores a las recomendadas.'),
	('Mezcla Accidental de Productos', 'Producto contaminado por contacto con otros productos incompatibles.'),
	('Manipulación Inadecuada del Cliente', 'Daño ocasionado por clientes durante la exhibición o selección del producto.'),
	('Golpe en Estantería', 'Producto dañado por impacto contra mobiliario de almacenamiento o exhibición.'),
	('Pérdida de Calidad Organoléptica', 'Cambio de color, olor o textura que afecta la calidad percibida del producto.'),
	('Fuga de Refrigerante', 'Producto afectado por incidente relacionado con equipos de refrigeración.'),
	('Recepción en Mal Estado', 'Producto recibido con defectos visibles que impiden su comercialización.');

-- ======================================================
-- 						--- UPDATE ---
-- ======================================================

-- =========================================
-- TABLA: lugar
-- AUTOR: Brysett Valenzuela
-- =========================================
UPDATE lugar
SET distrito = 'Cayma',
    provincia = 'Arequipa'
WHERE id_lugar = 3
RETURNING *;

-- =========================================
-- TABLA: infraccion
-- AUTOR: Betzabe Huaroc
-- =========================================
UPDATE infraccion 
SET pnlzcon_ecnmca = 180.00
WHERE tpo_infrccon = 'Retraso' AND gravedad = 'Leve'
RETURNING *;


-- =========================================
-- TABLA: 
-- AUTOR: Zuriel Cangre
-- =========================================
UPDATE cliente
SET teléfono = 963842755,
    crro_elctrnco = 'fernando_olivera_nuevo@hotmail.com'    
WHERE nombres = 'Fernando' AND aplldo_ptrno = 'Olivera'
RETURNING *;

-- =========================================
-- TABLA: proveedor
-- AUTOR: Jose Bernedo
-- =========================================
UPDATE proveedor
SET direccion = 'Calle El Comercio 791'
WHERE nmbre_prvdor = 'Abarrotes del Sur'
RETURNING *;
