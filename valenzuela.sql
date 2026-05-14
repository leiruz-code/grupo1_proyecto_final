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
