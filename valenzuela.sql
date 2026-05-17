CREATE TABLE lugar (
    id_lugar SERIAL,
    distrito VARCHAR(100) NOT NULL,
    provincia VARCHAR(100) NOT NULL,
    region VARCHAR(100) NOT NULL,
    CONSTRAINT pk_lugar PRIMARY KEY (id_lugar)
);
CREATE TABLE turno (
    id_turno SERIAL,
    nmbre_trno VARCHAR(50) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    CONSTRAINT pk_turno PRIMARY KEY (id_turno)
);
CREATE TABLE contrato (
    id_contrato SERIAL,
    nmbre_contrto VARCHAR(100) NOT NULL,
    CONSTRAINT pk_contrato PRIMARY KEY (id_contrato)
);

CREATE TABLE infraccion (
    id_infrccon SERIAL,
    tpo_infrccon VARCHAR(50) NOT NULL,
    gravedad VARCHAR(30) NOT NULL,
    descripcion TEXT NOT NULL,
    penalizacion VARCHAR(100) NOT NULL,
    pnlzcon_ecnmca NUMERIC(10, 2),
    CONSTRAINT pk_infraccion PRIMARY KEY (id_infrccon)
);
CREATE TABLE dtlle_pddo (
    id_pedido INTEGER NOT NULL,
    id_prdcto INTEGER NOT NULL,
    unidades INTEGER NOT NULL,
    precio_unidad NUMERIC(10, 2) NOT NULL,
    precio_final NUMERIC(10, 2) NOT NULL,
    CONSTRAINT pk_dtlle_pddo PRIMARY KEY (id_pedido, id_prdcto),
    CONSTRAINT fk_dtlle_pddo_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    CONSTRAINT fk_dtlle_pddo_producto FOREIGN KEY (id_prdcto) REFERENCES producto(id_prdcto)
);

CREATE TABLE dtlle_mrma (
    id_dtlle_mrma SERIAL,
    cantidad INTEGER NOT NULL,
    id_prdcto INTEGER NOT NULL,
    id_merma INTEGER NOT NULL,
    id_lote INTEGER NOT NULL,
    CONSTRAINT pk_dtlle_mrma PRIMARY KEY (id_dtlle_mrma),
    CONSTRAINT fk_dtlle_mrma_producto FOREIGN KEY (id_prdcto) REFERENCES producto(id_prdcto),
    CONSTRAINT fk_dtlle_mrma_merma FOREIGN KEY (id_merma) REFERENCES merma(id_merma),
    CONSTRAINT fk_dtlle_mrma_lote FOREIGN KEY (id_lote) REFERENCES lote(id_lote)
);
