CREATE TABLE pedido (
    id_pedido SERIAL,
    prco_ttal NUMERIC(10, 2) NOT NULL,
    dscnto_ttal NUMERIC(10, 2),
    fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_cliente INTEGER NOT NULL,
    id_colaborador INTEGER NOT NULL,
    CONSTRAINT pk_pedido PRIMARY KEY (id_pedido),
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    CONSTRAINT fk_pedido_colaborador FOREIGN KEY (id_colaborador) REFERENCES colaborador(id_clbrdor)
);
CREATE TABLE hstral_precio (
    id_hstral_prco SERIAL,
    prco_antror NUMERIC(10, 2) NOT NULL,
    prco_nvo NUMERIC(10, 2) NOT NULL,
    fcha_cmbo TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_prdcto INTEGER NOT NULL,
    CONSTRAINT pk_hstral_precio PRIMARY KEY (id_hstral_prco),
    CONSTRAINT fk_hstral_precio_producto FOREIGN KEY (id_prdcto) REFERENCES producto(id_prdcto)
);
CREATE TABLE proceso_pago (
    id_prcso_pgo SERIAL,
    comision NUMERIC(10, 2) NOT NULL,
    ingreso_neto NUMERIC(10, 2) NOT NULL,
    id_pedido INTEGER NOT NULL,
    id_mtdo_pgo INTEGER NOT NULL,
    CONSTRAINT pk_proceso_pago PRIMARY KEY (id_prcso_pgo),
    CONSTRAINT fk_proceso_pago_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    CONSTRAINT fk_proceso_pago_metodo FOREIGN KEY (id_mtdo_pgo) REFERENCES metodo_pago(id_mtdo_pgo)
);
CREATE TABLE jornada (
    id_jornada SERIAL,
    id_clbrdor INTEGER NOT NULL,
    id_turno INTEGER NOT NULL,
    CONSTRAINT pk_jornada PRIMARY KEY (id_jornada),
    CONSTRAINT fk_jornada_colaborador FOREIGN KEY (id_clbrdor) REFERENCES colaborador(id_clbrdor),
    CONSTRAINT fk_jornada_turno FOREIGN KEY (id_turno) REFERENCES turno(id_turno)
);

CREATE TABLE acto (
    id_acto SERIAL,
    id_clbrdor INTEGER NOT NULL,
    id_infrccon INTEGER NOT NULL,
    CONSTRAINT pk_acto PRIMARY KEY (id_acto),
    CONSTRAINT fk_acto_colaborador FOREIGN KEY (id_clbrdor) REFERENCES colaborador(id_clbrdor),
    CONSTRAINT fk_acto_infraccion FOREIGN KEY (id_infrccon) REFERENCES infraccion(id_infrccon)
);
