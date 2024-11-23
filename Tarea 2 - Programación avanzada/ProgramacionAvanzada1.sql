use autoescuela;
GO

-- Insertar Autonom�as
INSERT INTO autonomia (cod_autonomia, n_autonomia) VALUES
(1, 'Andaluc�a'),
(2, 'Arag�n'),
(3, 'Asturias'),
(4, 'Islas Baleares'),
(5, 'Canarias'),
(6, 'Cantabria'),
(7, 'Castilla-La Mancha'),
(8, 'Castilla y Le�n'),
(9, 'Catalu�a'),
(10, 'Comunidad Valenciana'),
(11, 'Extremadura'),
(12, 'Galicia'),
(13, 'Madrid'),
(14, 'Murcia'),
(15, 'Navarra'),
(16, 'Pa�s Vasco'),
(17, 'La Rioja'),
(18, 'Ceuta'),
(19, 'Melilla');
GO

-- Insertar Provincias
INSERT INTO provincia (cod_provincia, n_provincia, autonomia_cod_autonomia) VALUES
(1, '�lava', 16),
(2, 'Albacete', 7),
(3, 'Alicante', 10),
(4, 'Almer�a', 1),
(5, '�vila', 8),
(6, 'Badajoz', 11),
(7, 'Islas Baleares', 4),
(8, 'Barcelona', 9),
(9, 'Burgos', 8),
(10, 'C�ceres', 11),
(11, 'C�diz', 1),
(12, 'Castell�n', 10),
(13, 'Ciudad Real', 7),
(14, 'C�rdoba', 1),
(15, 'A Coru�a', 12),
(16, 'Cuenca', 7),
(17, 'Girona', 9),
(18, 'Granada', 1),
(19, 'Guadalajara', 7),
(20, 'Guip�zcoa', 16),
(21, 'Huelva', 1),
(22, 'Huesca', 2),
(23, 'Ja�n', 1),
(24, 'Le�n', 8),
(25, 'Lleida', 9),
(26, 'La Rioja', 17),
(27, 'Lugo', 12),
(28, 'Madrid', 13),
(29, 'M�laga', 1),
(30, 'Murcia', 14),
(31, 'Navarra', 15),
(32, 'Ourense', 12),
(33, 'Asturias', 3),
(34, 'Palencia', 8),
(35, 'Las Palmas', 5),
(36, 'Pontevedra', 12),
(37, 'Salamanca', 8),
(38, 'Tenerife', 5),
(39, 'Cantabria', 6),
(40, 'Segovia', 8),
(41, 'Sevilla', 1),
(42, 'Soria', 8),
(43, 'Tarragona', 9),
(44, 'Teruel', 2),
(45, 'Toledo', 7),
(46, 'Valencia', 10),
(47, 'Valladolid', 8),
(48, 'Vizcaya', 16),
(49, 'Zamora', 8),
(50, 'Zaragoza', 2),
(51, 'Ceuta', 18),
(52, 'Melilla', 19);
GO

INSERT INTO localidad (cod_localidad, n_localidad, provincia_cod_provincia) VALUES
(1, 'Sevilla', 41),
(2, 'Barcelona', 8),
(3, 'Madrid', 28),
(4, 'Valencia', 46),
(5, 'Zaragoza', 50),
(6, 'M�laga', 29),
(7, 'Murcia', 30),
(8, 'Palma de Mallorca', 7),
(9, 'Las Palmas', 35),
(10, 'Bilbao', 48);
GO

-- Inserci�n de 10 clientes
INSERT INTO cliente (DNI_cliente, N_cliente, Apel1_cliente, Apel2_cliente, Dir_cliente, Email_cliente, Telf_cliente, localidad_cod_localidad) VALUES
('12345678A', 'Mar�a', 'Garc�a', 'L�pez', 'Calle Real 123', 'maria.garcia@email.com', '612345678', 1),
('23456789B', 'Juan', 'Mart�nez', 'S�nchez', 'Avenida Principal 45', 'juan.martinez@email.com', '623456789', 2),
('34567890C', 'Ana', 'Fern�ndez', 'Ruiz', 'Plaza Mayor 7', 'ana.fernandez@email.com', '634567890', 3),
('45678901D', 'Carlos', 'L�pez', 'G�mez', 'Calle Nueva 56', 'carlos.lopez@email.com', '645678901', 4),
('56789012E', 'Laura', 'Rodr�guez', 'P�rez', 'Avenida Libertad 89', 'laura.rodriguez@email.com', '656789012', 5),
('67890123F', 'David', 'Gonz�lez', 'Mart�n', 'Calle del Sol 34', 'david.gonzalez@email.com', '667890123', 6),
('78901234G', 'Elena', 'S�nchez', 'Jim�nez', 'Plaza Espa�a 12', 'elena.sanchez@email.com', '678901234', 7),
('89012345H', 'Pablo', 'D�az', 'Moreno', 'Calle Mayor 78', 'pablo.diaz@email.com', '689012345', 8),
('90123456I', 'Luc�a', 'Mu�oz', 'Alonso', 'Avenida del Parque 23', 'lucia.munoz@email.com', '690123456', 9),
('01234567J', 'Javier', 'Romero', 'Navarro', 'Calle Ancha 90', 'javier.romero@email.com', '601234567', 10);
GO

-- Inserci�n de 10 profesores
INSERT INTO profesor (profesor_DNI_profe, profesor_N_profe, profesor_Apel1_profe, profesor_Apel2_profe, profesor_Dir_profe, profesor_Email_profe, profesor_Telf_profe, localidad_cod_localidad) VALUES
('98765432Z', 'Carlos', 'Rodr�guez', 'G�mez', 'Calle Escuela 10', 'c.rodriguez@autoescuela.com', '698765432', 1),
('87654321Y', 'Laura', 'L�pez', 'Mart�n', 'Avenida Ense�anza 22', 'l.lopez@autoescuela.com', '687654321', 2),
('76543210X', 'David', 'S�nchez', 'P�rez', 'Calle Formaci�n 5', 'd.sanchez@autoescuela.com', '676543210', 3),
('65432109W', 'Ana', 'Mart�nez', 'Garc�a', 'Plaza Educaci�n 8', 'a.martinez@autoescuela.com', '665432109', 4),
('54321098V', 'Jorge', 'Fern�ndez', 'L�pez', 'Avenida Conducir 15', 'j.fernandez@autoescuela.com', '654321098', 5),
('43210987U', 'Elena', 'Gonz�lez', 'Ruiz', 'Calle Pr�ctica 30', 'e.gonzalez@autoescuela.com', '643210987', 6),
('32109876T', 'Miguel', 'D�az', 'S�nchez', 'Plaza Te�rica 7', 'm.diaz@autoescuela.com', '632109876', 7),
('21098765S', 'Isabel', 'P�rez', 'Mart�n', 'Avenida Seguridad 40', 'i.perez@autoescuela.com', '621098765', 8),
('10987654R', 'Alberto', 'Jim�nez', 'Rodr�guez', 'Calle Tr�fico 25', 'a.jimenez@autoescuela.com', '610987654', 9),
('09876543Q', 'Carmen', 'Moreno', 'Alonso', 'Plaza Vial 3', 'c.moreno@autoescuela.com', '609876543', 10);
GO

-- Inserci�n de datos en la tabla contrato
INSERT INTO contrato (ID_contrato, Cargo, T_contrato, T_jornada, Sueldo, Antiguedad, profesor_profesor_DNI_profe) VALUES
(1, 'Profesor', 'Indefinido', 'Completa', 2500.00, '5 a�os', '98765432Z'),
(2, 'Profesor', 'Temporal', 'Parcial', 1800.00, '2 a�os', '87654321Y'),
(3, 'Profesor', 'Indefinido', 'Completa', 2300.00, '3 a�os', '76543210X'),
(4, 'Profesor', 'Indefinido', 'Completa', 2400.00, '4 a�os', '65432109W'),
(5, 'Profesor', 'Temporal', 'Completa', 2200.00, '1 a�o', '54321098V'),
(6, 'Profesor', 'Indefinido', 'Parcial', 1900.00, '6 a�os', '43210987U'),
(7, 'Profesor', 'Temporal', 'Parcial', 1700.00, '1 a�o', '32109876T'),
(8, 'Profesor', 'Indefinido', 'Completa', 2600.00, '7 a�os', '21098765S'),
(9, 'Profesor', 'Indefinido', 'Completa', 2450.00, '4 a�os', '10987654R'),
(10, 'Profesor', 'Temporal', 'Completa', 2100.00, '2 a�os', '09876543Q');
GO

INSERT INTO Nomina (Id_Nomina, Department, Nivel, H_extra, N_Cuenta, contrato_ID_contrato) VALUES
('NOM001', 'Ense�anza', 'Senior', '10', 'ES6621000418401234567891', 1),
('NOM002', 'Ense�anza', 'Junior', '5', 'ES6000491500051234567892', 2),
('NOM003', 'Ense�anza', 'Medio', '8', 'ES9420805801101234567893', 3),
('NOM004', 'Ense�anza', 'Senior', '12', 'ES9000246912501234567894', 4),
('NOM005', 'Ense�anza', 'Junior', '6', 'ES6621000418401234567895', 5),
('NOM006', 'Ense�anza', 'Medio', '7', 'ES1720852066201234567896', 6),
('NOM007', 'Ense�anza', 'Junior', '4', 'ES0182038454701234567897', 7),
('NOM008', 'Ense�anza', 'Senior', '15', 'ES7100302053091234567898', 8),
('NOM009', 'Ense�anza', 'Medio', '9', 'ES1000492352081234567899', 9),
('NOM010', 'Ense�anza', 'Junior', '5', 'ES0049295427011234567800', 10);
GO

-- Inserci�n de datos en la tabla profe_teorica
INSERT INTO profe_teorica (profesor_DNI_profe, profe_teorica_Clase_imparte, profe_teorica_Horas_practicas) VALUES
('98765432Z', 'Se�ales', 20),
('76543210X', 'Normativa', 25),
('54321098V', 'Mec�nica', 15),
('32109876T', 'Seguridad', 22),
('10987654R', 'Primeros A', 18),
('65432109W', 'Normativa', 24),
('21098765S', 'Se�ales', 21);

-- Inserci�n de datos en la tabla profe_practicas
INSERT INTO profe_practicas (profesor_DNI_profe, profe_practicas_Titulacion, profe_practicas_Horas_practicas) VALUES
('87654321Y', 'B+E', 30),
('65432109W', 'A2', 28),
('43210987U', 'B', 35),
('21098765S', 'C+E', 40),
('09876543Q', 'D', 32),
('98765432Z', 'A', 25),
('54321098V', 'B', 33);
GO

-- Inserci�n de datos en la tabla teorica (asumiendo que los profesores con DNI par son de teor�a)
INSERT INTO teorica (ID_teorica, F_teorica, Aula, cliente_DNI_cliente, profe_teorica_profesor_DNI_profe) VALUES
(1, '2023-10-20', 1, '12345678A', '98765432Z'),
(2, '2023-10-22', 2, '23456789B', '76543210X'),
(3, '2023-10-24', 1, '34567890C', '54321098V'),
(4, '2023-10-26', 3, '45678901D', '32109876T'),
(5, '2023-10-28', 2, '56789012E', '10987654R');
GO

-- Inserci�n de datos en la tabla vehiculo
INSERT INTO vehiculo (Matricula_vehiculo, Marca, Modelo, F_compra) VALUES
('1234ABC', 'Seat', 'Ibiza', '2020-01-15'),
('5678DEF', 'Renault', 'Clio', '2019-06-22'),
('9012GHI', 'Peugeot', '208', '2021-03-10'),
('3456JKL', 'Ford', 'Fiesta', '2020-11-05'),
('7890MNO', 'Volkswagen', 'Polo', '2022-02-20'),
('2345PQR', 'Opel', 'Corsa', '2021-05-30'),
('6789STU', 'Citro�n', 'C3', '2019-12-15'),
('0123VWX', 'Nissan', 'Micra', '2020-07-18'),
('4567YZA', 'Toyota', 'Yaris', '2022-04-25'),
('8901BCD', 'Kia', 'Rio', '2021-08-12');
GO

-- Inserci�n de datos en la tabla practica (asumiendo que los profesores con DNI impar son de pr�ctica)
INSERT INTO practica (ID_practica, F_practica, Estado_practica, cliente_DNI_cliente, vehiculo_vehiculo_ID, profe_practicas_profesor_DNI_profe) VALUES
(1, '2023-10-21', 'Completada', '67890123F', 1, '87654321Y'),
(2, '2023-10-23', 'Pendiente', '78901234G', 2, '65432109W'),
(3, '2023-10-25', 'En curso', '89012345H', 3, '43210987U'),
(4, '2023-10-27', 'Completada', '90123456I', 4, '21098765S'),
(5, '2023-10-29', 'Pendiente', '01234567J', 5, '09876543Q');
GO


INSERT INTO examen (ID_examen, F_examen, Tipo_examen, Tipo_carnet, cliente_DNI_cliente, vehiculo_vehiculo_ID) VALUES
(1, '2023-11-05', 'Te�rico', 'B', '12345678A', 1),
(2, '2023-11-10', 'Pr�ctico', 'B', '23456789B', 2),
(3, '2023-11-15', 'Te�rico', 'A', '34567890C', 3),
(4, '2023-11-20', 'Pr�ctico', 'C', '45678901D', 4),
(5, '2023-11-25', 'Te�rico', 'B', '56789012E', 5),
(6, '2023-12-01', 'Pr�ctico', 'A', '67890123F', 6),
(7, '2023-12-05', 'Te�rico', 'D', '78901234G', 7),
(8, '2023-12-10', 'Pr�ctico', 'B', '89012345H', 8),
(9, '2023-12-15', 'Te�rico', 'C', '90123456I', 9),
(10, '2023-12-20', 'Pr�ctico', 'B', '01234567J', 10);
GO



                    -- VISTAS
-- creamos un usuario
CREATE USER JBenitez WITHOUT LOGIN;
GO
-- creamos un role
CREATE ROLE db_trabajador;
GO
-- a�adimos el usuario al role
ALTER ROLE db_trabajador
ADD MEMBER JBenitez;
GO
-- damos permiso de consulta al role
REVOKE SELECT ON dbo.contrato TO db_trabajador;
REVOKE SELECT ON dbo.profesor TO db_trabajador;
GO

-- Creamos una vista, limitar� los datos que podremos ver de los empleados
-- De esta manera se ver�n los datos principales pero no los personales (en este caso la direcci�n)

-- Vista que muestra datos principales de los profesores sin incluir la direcci�n
CREATE VIEW vista_profesores
AS
SELECT
    profesor_N_profe AS Nombre,
    profesor_Apel1_profe AS Apellido1,
    profesor_Apel2_profe AS Apellido2,
    profesor_Email_profe AS Email,
    profesor_Telf_profe AS Telefono
FROM profesor
GO

-- Vista que combina datos de profesores y contratos
CREATE VIEW vista_profesores_completo AS
SELECT  
    p.profesor_N_profe AS Nombre,
    p.profesor_Apel1_profe AS Apellido1,
    p.profesor_Apel2_profe AS Apellido2,
    p.profesor_Email_profe AS Email,
    p.profesor_Telf_profe AS Telefono,
    c.Cargo,
    c.Antiguedad,
    c.Sueldo
FROM 
    profesor p
INNER JOIN 
    contrato c ON p.profesor_DNI_profe = c.profesor_profesor_DNI_profe
GO


-- Conceder acceso a las vistas
GRANT SELECT ON dbo.vista_profesores TO db_trabajador;
GRANT SELECT ON dbo.vista_profesores_completo TO db_trabajador;
GO

-- Impersonamos al usuario JBenitez
EXECUTE AS USER = 'JBenitez';

-- Probamos una consulta
SELECT
    profesor_N_profe AS Nombre,
    profesor_Dir_profe AS Direccion
FROM
    profesor
GO

EXECUTE AS USER = 'JBenitez';
SELECT * FROM vista_profesores;
GO
REVERT
GO

EXECUTE AS USER = 'JBenitez';
SELECT * FROM vista_profesores_completo;
GO
REVERT
GO

PRINT USER; 
GO

-- Creamos el procedimiento almacenado para modificar el sueldo de un profesor
CREATE PROCEDURE Actualiza_Sueldo
    @DNI_profesor VARCHAR(9),
    @Nuevo_sueldo DECIMAL(10,2)
AS
BEGIN
    UPDATE contrato
    SET Sueldo = @Nuevo_sueldo
    WHERE profesor_profesor_DNI_profe = @DNI_profesor
END
GO

-- Creamos el usuario, rol y asignamos permisos
CREATE USER BCosta WITHOUT LOGIN;
GO
CREATE ROLE R_Humanos;
GO
ALTER ROLE R_Humanos
ADD MEMBER BCosta;
GO

-- Retiramos permisos de consulta sobre contrato y profesor
REVOKE SELECT ON contrato TO R_Humanos;
GO
REVOKE SELECT ON profesor TO R_Humanos;
GO

-- Damos permiso sobre la vista al rol
GRANT SELECT ON vista_profesores_completo TO R_Humanos;
GO
-- Damos permiso sobre el procedimiento
GRANT EXEC ON Actualiza_Sueldo TO R_Humanos;
GO


CREATE OR ALTER PROCEDURE Actualiza_Sueldo
    @DNI_profe VARCHAR(9),
    @SueldoNuevo DECIMAL(10,2)
AS 
BEGIN
    DECLARE @SueldoAntiguo DECIMAL(10,2);  -- Variable para almacenar el sueldo antiguo
    DECLARE @Nombre_profe VARCHAR(12);    -- Variable para almacenar el nombre
    DECLARE @Apellido1_profe VARCHAR(12); -- Variable para almacenar el primer apellido

    -- Obtener los datos actuales
    SELECT 
        @SueldoAntiguo = c.Sueldo,
        @Nombre_profe = p.profesor_N_profe,
        @Apellido1_profe = p.profesor_Apel1_profe
    FROM 
        contrato c
    INNER JOIN 
        profesor p ON c.profesor_profesor_DNI_profe = p.profesor_DNI_profe
    WHERE 
        p.profesor_DNI_profe = @DNI_profe;

    -- Actualizar el sueldo
    UPDATE contrato
    SET Sueldo = @SueldoNuevo
    WHERE profesor_profesor_DNI_profe = @DNI_profe;

    -- Mostrar los resultados
    SELECT 
        @DNI_profe AS DNI_profesor,
        @Nombre_profe AS Nombre,
        @Apellido1_profe AS Apellido1,
        @SueldoAntiguo AS Sueldo_Antiguo,
        @SueldoNuevo AS Sueldo_Nuevo;
END;
GO


-- Conceder permiso de ejecuci�n al rol R_Humanos
GRANT EXEC ON Actualiza_Sueldo TO R_Humanos;

-- Revocar permiso de ejecuci�n al rol db_trabajador (si existe)
-- Nota: Aseg�rate de que este rol exista en tu base de datos
IF EXISTS (SELECT * FROM sys.database_principals WHERE name = 'db_trabajador' AND type = 'R')
BEGIN
    REVOKE EXEC ON Actualiza_Sueldo TO db_trabajador;
END
GO

-- Ejecutar el procedimiento como usuario JBenitez
EXECUTE AS USER = 'JBenitez';
EXEC Actualiza_Sueldo '98765432Z', 2500.00;
GO
REVERT;
GO

-- Ejecutar el procedimiento como usuario BCosta
EXECUTE AS USER = 'BCosta';
EXEC Actualiza_Sueldo '98765432Z', 3500.00;
GO
REVERT;
GO

-- Mostrar todos los profesores (da error con usuario Bcosta)
SELECT * FROM profesor;
GO

-- Mostrar el usuario actual
PRINT USER;
GO

-- Procedimiento para realizar backups (SIN CURSORES)

















   -- TRANSACIONES EXPLICITAS
-- Crear procedimiento que baje el sueldo a un profesor y le suba la misma cantidad a otro


-- Creamos el procedimiento y definimos variables de entrada ( los dos profesores y la cantidad de sueldo)
CREATE OR ALTER PROCEDURE sp_VariarSueldos
    @dniProfesor1 NVARCHAR(9),  
    @dniProfesor2 NVARCHAR(9),  
    @cantidad DECIMAL(10, 2)       
AS
BEGIN
    -- Comenzamos una transacci�n expl�cita
    BEGIN TRANSACTION

    BEGIN TRY
        -- Comprobamos que el salario del profesor sea superior al salario m�nimo
        IF EXISTS (SELECT 1 FROM contrato WHERE profesor_profesor_DNI_profe = @dniProfesor1 AND Sueldo > 800)
        BEGIN
            -- Restar el monto al primer profesor
            UPDATE contrato
            SET Sueldo = Sueldo - @cantidad
            WHERE profesor_profesor_DNI_profe = @dniProfesor1;
        END
        ELSE
        BEGIN
            -- Si el sueldo es menor que el monto, mostrar los sueldos y lanzar un error
            SELECT * FROM contrato 
						WHERE profesor_profesor_DNI_profe IN (@dniProfesor1, @dniProfesor2);
						THROW 50001, 'El sueldo no debe ser inferior al salario m�nimo.', 1;
        END

        -- Subir el monto al segundo profesor
        UPDATE contrato
        SET Sueldo = Sueldo + @cantidad
        WHERE profesor_profesor_DNI_profe = @dniProfesor2;

        -- Si ambas actualizaciones son exitosas, confirmar la transacci�n
        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        -- En caso de error, deshacer toda la transacci�n
        ROLLBACK TRANSACTION;

        -- Lanzar el error 
        THROW;
    END CATCH

    -- Mostrar los sueldos resultantes
    SELECT * FROM contrato 
    WHERE profesor_profesor_DNI_profe IN (@dniProfesor1, @dniProfesor2);
END

SELECT * FROM contrato;
GO


EXEC sp_VariarSueldos '98765432Z', '87654321Y', 800;
GO

EXEC sp_VariarSueldos '87654321Y', '98765432Z', 800;
GO

-- Prueba con transacciones implicitas

DECLARE @dniProfesor1 NVARCHAR(9)  
DECLARE @dniProfesor2 NVARCHAR(9) 
DECLARE @cantidad DECIMAL(10, 2)
	
SET @dniProfesor1 = '87654321Y'
SET @dniProfesor2 = '98765432Z'
SET @cantidad = 800

UPDATE contrato
SET Sueldo = Sueldo + @cantidad
WHERE profesor_profesor_DNI_profe = @dniProfesor2;

-- Provocar un error
SELECT * FROM contratos_error; 

UPDATE contrato
SET Sueldo = Sueldo - @cantidad
WHERE profesor_profesor_DNI_profe = @dniProfesor1;

-- Consultar los resultados

SELECT * FROM contrato;
GO



      -- IMPORTAR/EXPORTAR IMAGENES
-- VARBINARY (max) -> sustituye al tipo image

-- Creamos una tabla Pictures en nuestra base de datos para insertar foto de cada profesor
-- Le daremos a cada imagen de nombre el dni del profesor para poder enlazarlos

CREATE TABLE Pictures (
   pictureName NVARCHAR(40) PRIMARY KEY NOT NULL,
   picFileName NVARCHAR (100),
   PictureData VARBINARY (max)
   )
GO

-- Nos movemos a master para 
-- sp_configure: Activa la posibilidad de configurar opciones avanzadas del servidor.
-- Ole Automation Procedures: Permite interactuar con archivos del sistema y realizar operaciones avanzadas, como importar archivos binarios. 
Use master
Go
EXEC sp_configure 'show advanced options', 1; 
GO 
RECONFIGURE; 
GO 

EXEC sp_configure 'Ole Automation Procedures', 1; 
GO 
RECONFIGURE; 
GO

-- Al intentar a�adir "sa" al rol bulkadmin no nos deja porque "sa" ya es una cuenta especial con todos los permisos
ALTER SERVER ROLE [bulkadmin] ADD MEMBER [sa] 
GO  
-- Lo intentamos con nuestro usuario y comprobamos que nos deja
ALTER SERVER ROLE [bulkadmin] ADD MEMBER [BCR_SXBD\cjgal] 
GO

PRINT user;
GO

USE autoescuelaP
GO

CREATE OR ALTER PROCEDURE usp_ImportImage(
-- Declaramos variables de entrada
    @PicName NVARCHAR (100),
    @ImageFolderPath NVARCHAR (1000),
    @Filename NVARCHAR (1000)
   )
AS
BEGIN
-- Declaramos variables internas
   DECLARE @Path2OutFile NVARCHAR (2000);
   DECLARE @tsql NVARCHAR (2000);
   -- Concatenamos la ruta con el nombre de la imagen
   SET @Path2OutFile = CONCAT (@ImageFolderPath,'\', @Filename);

   -- Creamos comando SQL din�mico con la instrucci�n para insertar
   -- Quedar�a as�: INSERT INTO PICTURES (pictureName, picFileName, PictureData)
   --                  SELECT 'MiImagen', 'imagen.jpg', * 
   --                  FROM Openrowset(Bulk 'C:\CarpetaDeImagenes\imagen.jpg', Single_Blob) as img;
   
   SET @tsql = 'insert into Pictures (pictureName, picFileName, PictureData) ' +
               ' SELECT ' + '''' + @PicName + '''' + ',' + '''' + @Filename + '''' + ', * ' + 
               'FROM Openrowset( Bulk ' + '''' + @Path2OutFile + '''' + ', Single_Blob) as img'
   -- Ejecutamos el comando din�mico
   EXEC (@tsql)
END
GO

EXEC usp_ImportImage '32840700N', 'C:\transactsql', '32840700N.jpg';  
SELECT * FROM Pictures;
GO

-- Procedimiento para exportar im�genes

CREATE OR ALTER PROCEDURE usp_ExportImage (
-- Declaramos variables de entrada
   @PicName NVARCHAR (100), -- Nombre de la imagen en la tabla
   @ImageFolderPath NVARCHAR(1000), -- ruta donde guardar la imagen
   @Filename NVARCHAR(1000) -- Nombre con el que guardaremos la imagen
   )

AS
BEGIN
-- Declaramos variables internas
   DECLARE @ImageData VARBINARY (max); -- Datos binarios de la imagen
   DECLARE @Path2OutFile NVARCHAR (2000); -- ruta del archivo
   DECLARE @Obj INT -- variable para almacenar ADODB.Stream para manejar archivos en SQL

-- Extraemos la imagen de la tabla
   SELECT @ImageData = (SELECT convert (VARBINARY (max), PictureData, 1)
						FROM Pictures
						WHERE pictureName = @PicName
						);
-- Obtenemos la ruta 
   SET @Path2OutFile = CONCAT (@ImageFolderPath,'\', @Filename);

-- Parte "complicada"
   BEGIN TRY
   -- Creamos un objeto llamado ADODB.Stream y lo asociamos a la variable @Obj. (nos permite escribir en un archivo)
     EXEC sp_OACreate 'ADODB.Stream' ,@Obj OUTPUT;
   -- Configuramos el objeto para trabajar con datos binarios (Type = 1).
     EXEC sp_OASetProperty @Obj ,'Type',1;
   -- Abrimos el flujo para que est� listo para recibir datos.
     EXEC sp_OAMethod @Obj,'Open';
   -- Escribimos los datos binarios de la imagen (@ImageData) en el flujo.
     EXEC sp_OAMethod @Obj,'Write', NULL, @ImageData;
   -- Guardamos los datos del flujo en un archivo, usando la ruta completa (@Path2OutFile) que definimos antes.
   -- El "2" indica que si el archivo existe se reescribir�
     EXEC sp_OAMethod @Obj,'SaveToFile', NULL, @Path2OutFile, 2;
   -- Cerramos el flujo y liberamos los recursos asociados al objeto ADODB.Stream.
     EXEC sp_OAMethod @Obj,'Close';
     EXEC sp_OADestroy @Obj;
    END TRY

	BEGIN CATCH
   -- Esto asegura que si hay alg�n error se liberan los recursos del objeto.
	 EXEC sp_OADestroy @Obj;
	END CATCH

END;
GO

EXEC usp_ExportImage '32840700N', 'C:\transactsql\SALIDA', '32840700N.jpg';
GO

xp_cmdshell "dir C:\transactsql\SALIDA"
go

EXEC sp_configure 'xp_cmdshell', 1; 
GO 
RECONFIGURE; 
GO

xp_cmdshell "dir C:\transactsql\SALIDA"
go






       -- CURSORES
-- Procedimiento almacenado para crear backup de base de datos

CREATE OR ALTER PROCEDURE sp_Backup
    @Nbase VARCHAR(260)
AS
BEGIN
    DECLARE @DatabaseName NVARCHAR(128)
    DECLARE @BackupName NVARCHAR(260)
    DECLARE @Date NVARCHAR(20)
    DECLARE @ruta NVARCHAR(30)

    SET @Date = CONVERT(NVARCHAR(20), GETDATE(), 112)
	SET @ruta = N'C:\transactsql\backups\'

    DECLARE db_cursor CURSOR FOR
    SELECT name
    FROM sys.databases
    WHERE name IN (@Nbase)

    OPEN db_cursor
    FETCH NEXT FROM db_cursor INTO @DatabaseName

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @BackupName = @ruta + @DatabaseName + '_' + @Date + '.bak'
		PRINT 'Backup file name: ' + @BackupName
        BACKUP DATABASE @DatabaseName TO DISK = @BackupName

        FETCH NEXT FROM db_cursor INTO @DatabaseName
    END

    CLOSE db_cursor
    DEALLOCATE db_cursor
END

exec sp_Backup autoescuelaP;
GO


-- Procedimiento almacenado que aportando un a�o nos devuelva los veh�culos comprados en dicho a�o

USE autoescuelaP;
GO

-- Crear el procedimiento almacenado
CREATE OR ALTER PROCEDURE ComprasAnuales
    @AnoCompra INT -- Par�metro de entrada para el a�o de compra
AS
BEGIN
    -- Declarar variables
    DECLARE @F_compra DATE;
    DECLARE @CantidadVehiculos INT = 0;

    -- Declarar el cursor para recorrer las filas
    DECLARE VehiculoCursor CURSOR FOR
    SELECT F_compra
    FROM vehiculo
    WHERE YEAR(F_compra) = @AnoCompra;

    -- Abrir el cursor
    OPEN VehiculoCursor;

    -- Obtener cada fila del cursor
    FETCH NEXT FROM VehiculoCursor INTO @F_compra;
    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Incrementar el contador por cada fila encontrada
        SET @CantidadVehiculos = @CantidadVehiculos + 1;

        -- Pasar a la siguiente fila
        FETCH NEXT FROM VehiculoCursor INTO @F_compra;
    END;

    -- Cerrar y liberar el cursor
    CLOSE VehiculoCursor;
    DEALLOCATE VehiculoCursor;

    -- Mostrar el resultado
    IF @CantidadVehiculos > 0
    BEGIN
        PRINT 'N�mero de veh�culos comprados en el a�o ' + CAST(@AnoCompra AS NVARCHAR(4)) + ': ' + CAST(@CantidadVehiculos AS NVARCHAR(10));
    END
    ELSE
    BEGIN
        PRINT 'No se han comprado veh�culos ese a�o.';
    END
	SELECT * FROM vehiculo WHERE YEAR(F_Compra)= @AnoCompra;
END;
GO

EXEC ComprasAnuales 2020;
GO

