-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-11-27 13:39:03 CET
--   sitio:      Oracle Database 21c
--   tipo:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE autonomia (
    cod_autonomia INTEGER NOT NULL,
    n_autonomia   VARCHAR2(30)
);

ALTER TABLE autonomia ADD CONSTRAINT autonomia_pk PRIMARY KEY ( cod_autonomia );

CREATE TABLE cliente (
    dni_cliente             VARCHAR2(10 CHAR) NOT NULL,
    n_cliente               VARCHAR2(50 CHAR),
    apel1_cliente           VARCHAR2(50 CHAR),
    apel2_cliente           VARCHAR2(50 CHAR),
    dir_cliente             VARCHAR2(100 CHAR),
    email_cliente           VARCHAR2(50 CHAR),
    telf_cliente            VARCHAR2(15),
    localidad_cod_localidad INTEGER NOT NULL
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( dni_cliente );

CREATE TABLE contrato (
    id_contrato                 INTEGER NOT NULL,
    cargo                       VARCHAR2(25 CHAR),
    t_contrato                  VARCHAR2(25 CHAR),
    t_jornada                   VARCHAR2(25 CHAR),
    sueldo                      NUMBER(12, 2),
    antiguedad                  VARCHAR2(12 CHAR),
    profesor_profesor_dni_profe VARCHAR2(12 CHAR) NOT NULL
);

ALTER TABLE contrato ADD CONSTRAINT contrato_pk PRIMARY KEY ( id_contrato );

ALTER TABLE contrato ADD CONSTRAINT contrato_profesor_profesor_dni_profe_un UNIQUE ( profesor_profesor_dni_profe );

CREATE TABLE examen (
    id_examen            INTEGER NOT NULL,
    f_examen             DATE,
    tipo_examen          VARCHAR2(10 CHAR),
    tipo_carnet          VARCHAR2(8),
    cliente_dni_cliente  VARCHAR2(10 CHAR) NOT NULL,
    vehiculo_vehiculo_id NUMBER(28) NOT NULL,
    matricula_vehiculo   VARCHAR2(10 CHAR) NOT NULL
);

ALTER TABLE examen ADD CONSTRAINT examen_pk PRIMARY KEY ( id_examen );

CREATE TABLE localidad (
    cod_localidad           INTEGER NOT NULL,
    n_localidad             VARCHAR2(20 CHAR),
    provincia_cod_provincia INTEGER NOT NULL
);

ALTER TABLE localidad ADD CONSTRAINT localidad_pk PRIMARY KEY ( cod_localidad );

CREATE TABLE nomina (
    id_nomina            INTEGER NOT NULL,
    department           VARCHAR2(12),
    nivel                VARCHAR2(5 CHAR),
    h_extra              INTEGER,
    n_cuenta             VARCHAR2(30 CHAR),
    contrato_id_contrato INTEGER NOT NULL
);

ALTER TABLE nomina ADD CONSTRAINT nomina_pk PRIMARY KEY ( id_nomina );

CREATE TABLE pagos (
    id_pago             INTEGER NOT NULL,
    fechapago           DATE,
    cliente_dni_cliente VARCHAR2(10 CHAR) NOT NULL,
    precios_id_precio   INTEGER NOT NULL
);

ALTER TABLE pagos ADD CONSTRAINT pagos_pk PRIMARY KEY ( id_pago );

CREATE TABLE practica (
    id_practica                        INTEGER NOT NULL,
    f_practica                         DATE,
    estado_practica                    VARCHAR2(12 CHAR),
    cliente_dni_cliente                VARCHAR2(10 CHAR) NOT NULL,
    vehiculo_vehiculo_id               NUMBER(28) NOT NULL,
    profe_practicas_profesor_dni_profe VARCHAR2(12 CHAR) NOT NULL,
    matricula_vehiculo                 VARCHAR2(10 CHAR) NOT NULL
);

ALTER TABLE practica ADD CONSTRAINT practica_pk PRIMARY KEY ( id_practica );

CREATE TABLE precios (
    id_precio INTEGER NOT NULL,
    tipo      VARCHAR2(30 CHAR),
    carnet    VARCHAR2(6 CHAR),
    precio    NUMBER(8, 2)
);

ALTER TABLE precios ADD CONSTRAINT precios_pk PRIMARY KEY ( id_precio );

CREATE TABLE profe_practicas (
    profesor_profesor_dni_profe VARCHAR2(12 CHAR) NOT NULL,
    titulacion                  VARCHAR2(12 CHAR),
    horas_practicas             INTEGER,
    dni_profesor                VARCHAR2(12 CHAR) NOT NULL
);

ALTER TABLE profe_practicas ADD CONSTRAINT profe_practicas_pkv1 PRIMARY KEY ( dni_profesor );

ALTER TABLE profe_practicas ADD CONSTRAINT profe_practicas_pk UNIQUE ( profesor_profesor_dni_profe );

CREATE TABLE profe_teorica (
    profesor_profesor_dni_profe VARCHAR2(12 CHAR) NOT NULL,
    clase                       VARCHAR2(8 CHAR),
    horas_clase                 INTEGER,
    dni_profesor                VARCHAR2(12 CHAR) NOT NULL
);

ALTER TABLE profe_teorica ADD CONSTRAINT profe_teorica_pkv1 PRIMARY KEY ( dni_profesor );

ALTER TABLE profe_teorica ADD CONSTRAINT profe_teorica_pk UNIQUE ( profesor_profesor_dni_profe );

CREATE TABLE profesor (
    dni_profesor            VARCHAR2(12 CHAR) NOT NULL,
    n_profesor              VARCHAR2(30 CHAR),
    apell1_profe            VARCHAR2(15 CHAR),
    apell2_profe            VARCHAR2(20 CHAR),
    dir_profe               VARCHAR2(100 CHAR),
    email_profe             VARCHAR2(50 CHAR),
    telf_profe              VARCHAR2(12 CHAR),
    localidad_cod_localidad INTEGER NOT NULL
);

ALTER TABLE profesor ADD CONSTRAINT profesor_pk PRIMARY KEY ( dni_profesor );

CREATE TABLE provincia (
    cod_provincia           INTEGER NOT NULL,
    n_provincia             VARCHAR2(50 CHAR),
    autonomia_cod_autonomia INTEGER NOT NULL
);

ALTER TABLE provincia ADD CONSTRAINT provincia_pk PRIMARY KEY ( cod_provincia );

CREATE TABLE teorica (
    id_teorica                       INTEGER NOT NULL,
    f_teorica                        DATE,
    aula                             INTEGER,
    cliente_dni_cliente              VARCHAR2(10 CHAR) NOT NULL,
    profe_teorica_profesor_dni_profe VARCHAR2(12 CHAR) NOT NULL
);

ALTER TABLE teorica ADD CONSTRAINT teorica_pk PRIMARY KEY ( id_teorica );

CREATE TABLE vehiculo (
    matricula_vehiculo VARCHAR2(10 CHAR) NOT NULL,
    marca              VARCHAR2(10 CHAR),
    modelo             VARCHAR2(12 CHAR),
    f_compra           DATE,
    vehiculo_id        NUMBER(28) NOT NULL
);

ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_pk PRIMARY KEY ( matricula_vehiculo );

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

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated 

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated

CREATE SEQUENCE vehiculo_vehiculo_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER vehiculo_vehiculo_id_trg BEFORE
    INSERT ON vehiculo
    FOR EACH ROW
    WHEN ( new.vehiculo_id IS NULL )
BEGIN
    :new.vehiculo_id := vehiculo_vehiculo_id_seq.nextval;
END;
/



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            15
-- CREATE INDEX                             0
-- ALTER TABLE                             37
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           1
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          1
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   2
-- WARNINGS                                 0
