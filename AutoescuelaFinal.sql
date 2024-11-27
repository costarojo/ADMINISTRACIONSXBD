CREATE DATABASE AutoescuelaWirtz;
GO 

USE AutoescuelaWirtz;
GO

CREATE TABLE autonomia (
    cod_autonomia INTEGER NOT NULL,
    n_autonomia   VARCHAR(30)
);

ALTER TABLE autonomia ADD CONSTRAINT autonomia_pk PRIMARY KEY ( cod_autonomia );

CREATE TABLE cliente (
    dni_cliente             VARCHAR(10) NOT NULL,
    n_cliente               VARCHAR(50),
    apel1_cliente           VARCHAR(50),
    apel2_cliente           VARCHAR(50),
    dir_cliente             VARCHAR(100),
    email_cliente           VARCHAR(50),
    telf_cliente            VARCHAR(15),
    localidad_cod_localidad INTEGER NOT NULL
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( dni_cliente );

CREATE TABLE contrato (
    id_contrato                 INTEGER NOT NULL,
    cargo                       VARCHAR(25),
    t_contrato                  VARCHAR(25),
    t_jornada                   VARCHAR(25),
    sueldo                      DECIMAL(12, 2),
    antiguedad                  VARCHAR(12),
    profesor_profesor_dni_profe VARCHAR(12) NOT NULL
);

ALTER TABLE contrato ADD CONSTRAINT contrato_pk PRIMARY KEY ( id_contrato );

ALTER TABLE contrato ADD CONSTRAINT contrato_profesor_profesor_dni_profe_un UNIQUE ( profesor_profesor_dni_profe );

CREATE TABLE examen (
    id_examen            INTEGER NOT NULL,
    f_examen             DATE,
    tipo_examen          VARCHAR(10),
    tipo_carnet          VARCHAR(8),
    cliente_dni_cliente  VARCHAR(10) NOT NULL,
    matricula_vehiculo   VARCHAR(10) NOT NULL
);

ALTER TABLE examen ADD CONSTRAINT examen_pk PRIMARY KEY ( id_examen );

CREATE TABLE localidad (
    cod_localidad           INTEGER NOT NULL,
    n_localidad             VARCHAR(20),
    provincia_cod_provincia INTEGER NOT NULL
);

ALTER TABLE localidad ADD CONSTRAINT localidad_pk PRIMARY KEY ( cod_localidad );

CREATE TABLE nomina (
    id_nomina            INTEGER NOT NULL,
    department           VARCHAR(12),
    nivel                VARCHAR(5),
    h_extra              INTEGER,
    n_cuenta             VARCHAR(30),
    contrato_id_contrato INTEGER NOT NULL
);

ALTER TABLE nomina ADD CONSTRAINT nomina_pk PRIMARY KEY ( id_nomina );

CREATE TABLE pagos (
    id_pago             INTEGER NOT NULL,
    fechapago           DATE,
    cliente_dni_cliente VARCHAR(10) NOT NULL,
    precios_id_precio   INTEGER NOT NULL
);

ALTER TABLE pagos ADD CONSTRAINT pagos_pk PRIMARY KEY ( id_pago );

CREATE TABLE practica (
    id_practica                        INTEGER NOT NULL,
    f_practica                         DATE,
    estado_practica                    VARCHAR(12),
    cliente_dni_cliente                VARCHAR(10) NOT NULL,
    profe_practicas_profesor_dni_profe VARCHAR(12) NOT NULL,
    matricula_vehiculo                 VARCHAR(10) NOT NULL
);

ALTER TABLE practica ADD CONSTRAINT practica_pk PRIMARY KEY ( id_practica );

CREATE TABLE precios (
    id_precio INTEGER NOT NULL,
    tipo      VARCHAR(30),
    carnet    VARCHAR(6),
    precio    DECIMAL(8, 2)
);

ALTER TABLE precios ADD CONSTRAINT precios_pk PRIMARY KEY ( id_precio );

CREATE TABLE profe_practicas (
    profesor_profesor_dni_profe VARCHAR(12) NOT NULL,
    titulacion                  VARCHAR(12),
    horas_practicas             INTEGER,
    dni_profesor                VARCHAR(12) NOT NULL
);

ALTER TABLE profe_practicas ADD CONSTRAINT profe_practicas_pkv1 PRIMARY KEY ( dni_profesor );

ALTER TABLE profe_practicas ADD CONSTRAINT profe_practicas_pk UNIQUE ( profesor_profesor_dni_profe );

CREATE TABLE profe_teorica (
    profesor_profesor_dni_profe VARCHAR(12) NOT NULL,
    clase                       VARCHAR(8),
    horas_clase                 INTEGER,
    dni_profesor                VARCHAR(12) NOT NULL
);

ALTER TABLE profe_teorica ADD CONSTRAINT profe_teorica_pkv1 PRIMARY KEY ( dni_profesor );

ALTER TABLE profe_teorica ADD CONSTRAINT profe_teorica_pk UNIQUE ( profesor_profesor_dni_profe );

CREATE TABLE profesor (
    dni_profesor            VARCHAR(12) NOT NULL,
    n_profesor              VARCHAR(30),
    apell1_profe            VARCHAR(15),
    apell2_profe            VARCHAR(20),
    dir_profe               VARCHAR(100),
    email_profe             VARCHAR(50),
    telf_profe              VARCHAR(12),
    localidad_cod_localidad INTEGER NOT NULL
);

ALTER TABLE profesor ADD CONSTRAINT profesor_pk PRIMARY KEY ( dni_profesor );

CREATE TABLE provincia (
    cod_provincia           INTEGER NOT NULL,
    n_provincia             VARCHAR(50),
    autonomia_cod_autonomia INTEGER NOT NULL
);

ALTER TABLE provincia ADD CONSTRAINT provincia_pk PRIMARY KEY ( cod_provincia );

CREATE TABLE teorica (
    id_teorica                       INTEGER NOT NULL,
    f_teorica                        DATE,
    aula                             INTEGER,
    cliente_dni_cliente              VARCHAR(10) NOT NULL,
    profe_teorica_profesor_dni_profe VARCHAR(12) NOT NULL
);

ALTER TABLE teorica ADD CONSTRAINT teorica_pk PRIMARY KEY ( id_teorica );

CREATE TABLE vehiculo (
    matricula_vehiculo VARCHAR(10) NOT NULL PRIMARY KEY,
    marca              VARCHAR(10),
    modelo             VARCHAR(12),
    f_compra           DATE,
);

ALTER TABLE cliente
    ADD CONSTRAINT cliente_localidad_fk FOREIGN KEY ( localidad_cod_localidad )
        REFERENCES localidad ( cod_localidad );

ALTER TABLE contrato
    ADD CONSTRAINT contrato_profesor_fk FOREIGN KEY ( profesor_profesor_dni_profe )
        REFERENCES profesor ( dni_profesor );

ALTER TABLE examen
    ADD CONSTRAINT examen_cliente_fk FOREIGN KEY ( cliente_dni_cliente )
        REFERENCES cliente ( dni_cliente );

ALTER TABLE examen
    ADD CONSTRAINT examen_vehiculo_fk FOREIGN KEY ( matricula_vehiculo )
        REFERENCES vehiculo ( matricula_vehiculo );

ALTER TABLE localidad
    ADD CONSTRAINT localidad_provincia_fk FOREIGN KEY ( provincia_cod_provincia )
        REFERENCES provincia ( cod_provincia );

ALTER TABLE nomina
    ADD CONSTRAINT nomina_contrato_fk FOREIGN KEY ( contrato_id_contrato )
        REFERENCES contrato ( id_contrato );

ALTER TABLE pagos
    ADD CONSTRAINT pagos_cliente_fk FOREIGN KEY ( cliente_dni_cliente )
        REFERENCES cliente ( dni_cliente );

ALTER TABLE pagos
    ADD CONSTRAINT pagos_precios_fk FOREIGN KEY ( precios_id_precio )
        REFERENCES precios ( id_precio );

ALTER TABLE practica
    ADD CONSTRAINT practica_cliente_fk FOREIGN KEY ( cliente_dni_cliente )
        REFERENCES cliente ( dni_cliente );

ALTER TABLE practica
    ADD CONSTRAINT practica_profe_practicas_fk FOREIGN KEY ( profe_practicas_profesor_dni_profe )
        REFERENCES profe_practicas ( profesor_profesor_dni_profe );

ALTER TABLE practica
    ADD CONSTRAINT practica_vehiculo_fk FOREIGN KEY ( matricula_vehiculo )
        REFERENCES vehiculo ( matricula_vehiculo );

ALTER TABLE profe_practicas
    ADD CONSTRAINT profe_practicas_profesor_fk FOREIGN KEY ( profesor_profesor_dni_profe )
        REFERENCES profesor ( dni_profesor );

ALTER TABLE profe_practicas
    ADD CONSTRAINT profe_practicas_profesor_fkv2 FOREIGN KEY ( dni_profesor )
        REFERENCES profesor ( dni_profesor );

ALTER TABLE profe_teorica
    ADD CONSTRAINT profe_teorica_profesor_fk FOREIGN KEY ( profesor_profesor_dni_profe )
        REFERENCES profesor ( dni_profesor );

ALTER TABLE profe_teorica
    ADD CONSTRAINT profe_teorica_profesor_fkv2 FOREIGN KEY ( dni_profesor )
        REFERENCES profesor ( dni_profesor );

ALTER TABLE profesor
    ADD CONSTRAINT profesor_localidad_fk FOREIGN KEY ( localidad_cod_localidad )
        REFERENCES localidad ( cod_localidad );

ALTER TABLE provincia
    ADD CONSTRAINT provincia_autonomia_fk FOREIGN KEY ( autonomia_cod_autonomia )
        REFERENCES autonomia ( cod_autonomia );

ALTER TABLE teorica
    ADD CONSTRAINT teorica_cliente_fk FOREIGN KEY ( cliente_dni_cliente )
        REFERENCES cliente ( dni_cliente );

ALTER TABLE teorica
    ADD CONSTRAINT teorica_profe_teorica_fk FOREIGN KEY ( profe_teorica_profesor_dni_profe )
        REFERENCES profe_teorica ( profesor_profesor_dni_profe );



