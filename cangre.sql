CREATE TABLE cliente (
    id_cliente SERIAL,
    nombres VARCHAR(100) NOT NULL,
    aplldo_ptrno VARCHAR(50) NOT NULL,
    aplldo_mtrno VARCHAR(50) NOT NULL,
    fcha_rgstro DATE NOT NULL DEFAULT CURRENT_DATE,
    nmro_pddos INTEGER NOT NULL DEFAULT 0,
    telefono VARCHAR(15),
    crro_elctrnco VARCHAR(150),
    CONSTRAINT pk_cliente PRIMARY KEY (id_cliente)
);

CREATE TABLE promocion (
    id_prmcon SERIAL,
    nmbre_prmcon VARCHAR(100) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    descuento NUMERIC(5, 2) NOT NULL,
    cntdad_mnma INTEGER NOT NULL,
    descripcion TEXT NOT NULL,
    CONSTRAINT pk_promocion PRIMARY KEY (id_prmcon)
);

CREATE TABLE metodo_pago (
    id_mtdo_pgo SERIAL,
    nmbre_mtdo_pgo VARCHAR(50) NOT NULL,
    entidad VARCHAR(100) NOT NULL,
    CONSTRAINT pk_metodo_pago PRIMARY KEY (id_mtdo_pgo)
);

CREATE TABLE merma (
    id_merma SERIAL,
    fecha DATE NOT NULL,
    tipo_daño VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    CONSTRAINT pk_merma PRIMARY KEY (id_merma)
);

CREATE TABLE colaborador (
    id_clbrdor SERIAL,
    nombres VARCHAR(100) NOT NULL,
    aplldo_ptrno VARCHAR(50) NOT NULL,
    aplldo_mtrno VARCHAR(50) NOT NULL,
    crro_elctrnco VARCHAR(150) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    fcha_ncmnto DATE NOT NULL,
    edad INTEGER NOT NULL,
    fcha_cntrtcon DATE NOT NULL,
    fcha_clmncon DATE NOT NULL,
    bono NUMERIC(10, 2),
    sueldo NUMERIC(10, 2) NOT NULL,
    observacion TEXT,
    direccion VARCHAR(200) NOT NULL,
    fcha_ingrso DATE NOT NULL,
    prdo_cntrto VARCHAR(50) NOT NULL,
    tpo_cntrto VARCHAR(50) NOT NULL,
    estado VARCHAR(30) NOT NULL,
    id_lugar INTEGER NOT NULL,
    id_contrato INTEGER NOT NULL,
    CONSTRAINT pk_colaborador
      PRIMARY KEY (id_clbrdor),
    CONSTRAINT fk_colaborador_lugar 
      FOREIGN KEY (id_lugar)
      REFERENCES lugar(id_lugar),
    CONSTRAINT fk_colaborador_contrato 
      FOREIGN KEY (id_contrato)
      REFERENCES contrato(id_contrato)
);
CREATE TABLE prdcto_prmcon (
    id_prdcto_prmcon SERIAL,
    id_prdcto INTEGER NOT NULL,
    id_lote INTEGER NOT NULL,
    id_prmcon INTEGER NOT NULL,
    CONSTRAINT pk_prdcto_prmcon PRIMARY KEY (id_prdcto_prmcon),
    CONSTRAINT fk_prmcon_producto FOREIGN KEY (id_prdcto) REFERENCES producto(id_prdcto),
    CONSTRAINT fk_prmcon_lote FOREIGN KEY (id_lote) REFERENCES lote(id_lote),
    CONSTRAINT fk_prmcon_promocion FOREIGN KEY (id_prmcon) REFERENCES promocion(id_prmcon)
);

