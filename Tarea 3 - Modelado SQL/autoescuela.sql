

CREATE DATABASE autoescuela;
GO
USE autoescuela;
GO



CREATE TABLE autonomia 
    (
     cod_autonomia INTEGER NOT NULL , 
     n_autonomia NVARCHAR (20) 
    )
GO

ALTER TABLE autonomia ADD CONSTRAINT autonomia_PK PRIMARY KEY CLUSTERED (cod_autonomia)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE cliente 
    (
     DNI_cliente VARCHAR (9) NOT NULL , 
     N_cliente NVARCHAR (12) , 
     Apel1_cliente NVARCHAR (12) , 
     Apel2_cliente NVARCHAR (12) , 
     Dir_cliente NVARCHAR (50) , 
     Email_cliente NVARCHAR (30) , 
     Telf_cliente NVARCHAR (16) , 
     localidad_cod_localidad INTEGER NOT NULL 
    )
GO

ALTER TABLE cliente ADD CONSTRAINT cliente_PK PRIMARY KEY CLUSTERED (DNI_cliente)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE contrato 
    (
     ID_contrato INTEGER NOT NULL , 
     Cargo NVARCHAR (12) , 
     T_contrato NVARCHAR (12) , 
     T_jornada NVARCHAR (12) , 
     Sueldo DECIMAL (10,2) , 
     Antiguedad NVARCHAR (9), 
     profesor_profesor_DNI_profe VARCHAR (9) NOT NULL 
    )
GO 

    


CREATE UNIQUE NONCLUSTERED INDEX 
    contrato__IDX ON contrato 
    ( 
     profesor_profesor_DNI_profe 
    ) 
GO

ALTER TABLE contrato ADD CONSTRAINT contrato_PK PRIMARY KEY CLUSTERED (ID_contrato)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE examen 
    (
     ID_examen INTEGER NOT NULL , 
     F_examen DATE , 
     Tipo_examen NVARCHAR (10) , 
     Tipo_carnet NVARCHAR (10) , 
     cliente_DNI_cliente VARCHAR (9) NOT NULL , 
     vehiculo_vehiculo_ID NUMERIC (28) NOT NULL 
    )
GO

ALTER TABLE examen ADD CONSTRAINT examen_PK PRIMARY KEY CLUSTERED (ID_examen)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE localidad 
    (
     cod_localidad INTEGER NOT NULL , 
     n_localidad NVARCHAR (20) , 
     provincia_cod_provincia INTEGER NOT NULL 
    )
GO

ALTER TABLE localidad ADD CONSTRAINT localidad_PK PRIMARY KEY CLUSTERED (cod_localidad)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Nomina 
    (
     Id_Nomina VARCHAR (12) NOT NULL , 
     Department VARCHAR (12) , 
     Nivel VARCHAR (12) , 
     H_extra VARCHAR (12) , 
     N_Cuenta VARCHAR (24) , 
     contrato_ID_contrato INTEGER NOT NULL 
    )
GO

ALTER TABLE Nomina ADD CONSTRAINT Nomina_PK PRIMARY KEY CLUSTERED (Id_Nomina)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE practica 
    (
     ID_practica INTEGER NOT NULL , 
     F_practica DATE , 
     Estado_practica NVARCHAR (12) , 
     cliente_DNI_cliente VARCHAR (9) NOT NULL , 
     vehiculo_vehiculo_ID NUMERIC (28) NOT NULL , 
     profe_practicas_profesor_DNI_profe VARCHAR (9) NOT NULL 
    )
GO

ALTER TABLE practica ADD CONSTRAINT practica_PK PRIMARY KEY CLUSTERED (ID_practica)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE profe_practicas 
    (
     profesor_DNI_profe VARCHAR (9) NOT NULL , 
     profe_practicas_Titulacion NVARCHAR (8) , 
     profe_practicas_Horas_practicas INTEGER 
    )
GO

ALTER TABLE profe_practicas ADD CONSTRAINT profe_practicas_PK PRIMARY KEY CLUSTERED (profesor_DNI_profe)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE profe_teorica 
    (
     profesor_DNI_profe VARCHAR (9) NOT NULL , 
     profe_teorica_Clase_imparte NVARCHAR (18) , 
     profe_teorica_Horas_practicas INTEGER 
    )
GO

ALTER TABLE profe_teorica ADD CONSTRAINT profe_teorica_PK PRIMARY KEY CLUSTERED (profesor_DNI_profe)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE profesor 
    (
     profesor_DNI_profe VARCHAR (9) NOT NULL , 
     profesor_N_profe NVARCHAR (12) , 
     profesor_Apel1_profe NVARCHAR (12) , 
     profesor_Apel2_profe NVARCHAR (12) , 
     profesor_Dir_profe NVARCHAR (50) , 
     profesor_Email_profe NVARCHAR (40) , 
     profesor_Telf_profe NVARCHAR (16) , 
     localidad_cod_localidad INTEGER NOT NULL 
    )
GO

ALTER TABLE profesor ADD CONSTRAINT profesor_PK PRIMARY KEY CLUSTERED (profesor_DNI_profe)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE provincia 
    (
     cod_provincia INTEGER NOT NULL , 
     n_provincia NVARCHAR (20) , 
     autonomia_cod_autonomia INTEGER NOT NULL 
    )
GO

ALTER TABLE provincia ADD CONSTRAINT provincia_PK PRIMARY KEY CLUSTERED (cod_provincia)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE teorica 
    (
     ID_teorica INTEGER NOT NULL , 
     F_teorica DATE , 
     Aula INTEGER , 
     cliente_DNI_cliente VARCHAR (9) NOT NULL , 
     profe_teorica_profesor_DNI_profe VARCHAR (9) NOT NULL 
    )
GO

ALTER TABLE teorica ADD CONSTRAINT teorica_PK PRIMARY KEY CLUSTERED (ID_teorica)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE vehiculo 
    (
     Matricula_vehiculo NVARCHAR (10) , 
     Marca NVARCHAR (12) , 
     Modelo NVARCHAR (12) , 
     F_compra DATE , 
     vehiculo_ID NUMERIC (28) NOT NULL IDENTITY NOT FOR REPLICATION 
    )
GO

ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_PK PRIMARY KEY CLUSTERED (vehiculo_ID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

ALTER TABLE cliente 
    ADD CONSTRAINT cliente_localidad_FK FOREIGN KEY 
    ( 
     localidad_cod_localidad
    ) 
    REFERENCES localidad 
    ( 
     cod_localidad 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE contrato 
    ADD CONSTRAINT contrato_profesor_FK FOREIGN KEY 
    ( 
     profesor_profesor_DNI_profe
    ) 
    REFERENCES profesor 
    ( 
     profesor_DNI_profe 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE examen 
    ADD CONSTRAINT examen_cliente_FK FOREIGN KEY 
    ( 
     cliente_DNI_cliente
    ) 
    REFERENCES cliente 
    ( 
     DNI_cliente 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE examen 
    ADD CONSTRAINT examen_vehiculo_FK FOREIGN KEY 
    ( 
     vehiculo_vehiculo_ID
    ) 
    REFERENCES vehiculo 
    ( 
     vehiculo_ID 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE localidad 
    ADD CONSTRAINT localidad_provincia_FK FOREIGN KEY 
    ( 
     provincia_cod_provincia
    ) 
    REFERENCES provincia 
    ( 
     cod_provincia 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Nomina 
    ADD CONSTRAINT Nomina_contrato_FK FOREIGN KEY 
    ( 
     contrato_ID_contrato
    ) 
    REFERENCES contrato 
    ( 
     ID_contrato 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE practica 
    ADD CONSTRAINT practica_cliente_FK FOREIGN KEY 
    ( 
     cliente_DNI_cliente
    ) 
    REFERENCES cliente 
    ( 
     DNI_cliente 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE practica 
    ADD CONSTRAINT practica_profe_practicas_FK FOREIGN KEY 
    ( 
     profe_practicas_profesor_DNI_profe
    ) 
    REFERENCES profe_practicas 
    ( 
     profesor_DNI_profe 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE practica 
    ADD CONSTRAINT practica_vehiculo_FK FOREIGN KEY 
    ( 
     vehiculo_vehiculo_ID
    ) 
    REFERENCES vehiculo 
    ( 
     vehiculo_ID 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE profe_practicas 
    ADD CONSTRAINT profe_practicas_profesor_FK FOREIGN KEY 
    ( 
     profesor_DNI_profe
    ) 
    REFERENCES profesor 
    ( 
     profesor_DNI_profe 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE profe_teorica 
    ADD CONSTRAINT profe_teorica_profesor_FK FOREIGN KEY 
    ( 
     profesor_DNI_profe
    ) 
    REFERENCES profesor 
    ( 
     profesor_DNI_profe 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE profesor 
    ADD CONSTRAINT profesor_localidad_FK FOREIGN KEY 
    ( 
     localidad_cod_localidad
    ) 
    REFERENCES localidad 
    ( 
     cod_localidad 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE provincia 
    ADD CONSTRAINT provincia_autonomia_FK FOREIGN KEY 
    ( 
     autonomia_cod_autonomia
    ) 
    REFERENCES autonomia 
    ( 
     cod_autonomia 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE teorica 
    ADD CONSTRAINT teorica_cliente_FK FOREIGN KEY 
    ( 
     cliente_DNI_cliente
    ) 
    REFERENCES cliente 
    ( 
     DNI_cliente 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE teorica 
    ADD CONSTRAINT teorica_profe_teorica_FK FOREIGN KEY 
    ( 
     profe_teorica_profesor_DNI_profe
    ) 
    REFERENCES profe_teorica 
    ( 
     profesor_DNI_profe 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            13
-- CREATE INDEX                             1
-- ALTER TABLE                             28
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
