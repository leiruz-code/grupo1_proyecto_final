/* Funcion: Pedido completo en cascada — abre una transacción, inserta en pedido, luego en dtlle_pddo por cada ítem, 
descuenta unidades del inventario del lote correcto, incrementa cliente.nmro_pddos y registra el pago. 
Si cualquier paso falla, el ROLLBACK deshace todo. */

--Nos posicionamos en el ultimo ID de prcso_pgo
SELECT setval('prcso_pgo_id_prcso_pgo_seq', (SELECT MAX(id_prcso_pgo) FROM prcso_pgo));
