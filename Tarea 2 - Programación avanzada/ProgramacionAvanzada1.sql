use autoescuela;
GO

-- Insertar Autonomías
INSERT INTO autonomia (cod_autonomia, n_autonomia) VALUES
(1, 'Andalucía'),
(2, 'Aragón'),
(3, 'Asturias'),
(4, 'Islas Baleares'),
(5, 'Canarias'),
(6, 'Cantabria'),
(7, 'Castilla-La Mancha'),
(8, 'Castilla y León'),
(9, 'Cataluña'),
(10, 'Comunidad Valenciana'),
(11, 'Extremadura'),
(12, 'Galicia'),
(13, 'Madrid'),
(14, 'Murcia'),
(15, 'Navarra'),
(16, 'País Vasco'),
(17, 'La Rioja'),
(18, 'Ceuta'),
(19, 'Melilla');
GO

-- Insertar Provincias
INSERT INTO provincia (cod_provincia, n_provincia, autonomia_cod_autonomia) VALUES
(1, 'Álava', 16),
(2, 'Albacete', 7),
(3, 'Alicante', 10),
(4, 'Almería', 1),
(5, 'Ávila', 8),
(6, 'Badajoz', 11),
(7, 'Islas Baleares', 4),
(8, 'Barcelona', 9),
(9, 'Burgos', 8),
(10, 'Cáceres', 11),
(11, 'Cádiz', 1),
(12, 'Castellón', 10),
(13, 'Ciudad Real', 7),
(14, 'Córdoba', 1),
(15, 'A Coruña', 12),
(16, 'Cuenca', 7),
(17, 'Girona', 9),
(18, 'Granada', 1),
(19, 'Guadalajara', 7),
(20, 'Guipúzcoa', 16),
(21, 'Huelva', 1),
(22, 'Huesca', 2),
(23, 'Jaén', 1),
(24, 'León', 8),
(25, 'Lleida', 9),
(26, 'La Rioja', 17),
(27, 'Lugo', 12),
(28, 'Madrid', 13),
(29, 'Málaga', 1),
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
(6, 'Málaga', 29),
(7, 'Murcia', 30),
(8, 'Palma de Mallorca', 7),
(9, 'Las Palmas', 35),
(10, 'Bilbao', 48);
GO

-- Inserción de 10 clientes
INSERT INTO cliente (DNI_cliente, N_cliente, Apel1_cliente, Apel2_cliente, Dir_cliente, Email_cliente, Telf_cliente, localidad_cod_localidad) VALUES
('12345678A', 'María', 'García', 'López', 'Calle Real 123', 'maria.garcia@email.com', '612345678', 1),
('23456789B', 'Juan', 'Martínez', 'Sánchez', 'Avenida Principal 45', 'juan.martinez@email.com', '623456789', 2),
('34567890C', 'Ana', 'Fernández', 'Ruiz', 'Plaza Mayor 7', 'ana.fernandez@email.com', '634567890', 3),
('45678901D', 'Carlos', 'López', 'Gómez', 'Calle Nueva 56', 'carlos.lopez@email.com', '645678901', 4),
('56789012E', 'Laura', 'Rodríguez', 'Pérez', 'Avenida Libertad 89', 'laura.rodriguez@email.com', '656789012', 5),
('67890123F', 'David', 'González', 'Martín', 'Calle del Sol 34', 'david.gonzalez@email.com', '667890123', 6),
('78901234G', 'Elena', 'Sánchez', 'Jiménez', 'Plaza España 12', 'elena.sanchez@email.com', '678901234', 7),
('89012345H', 'Pablo', 'Díaz', 'Moreno', 'Calle Mayor 78', 'pablo.diaz@email.com', '689012345', 8),
('90123456I', 'Lucía', 'Muñoz', 'Alonso', 'Avenida del Parque 23', 'lucia.munoz@email.com', '690123456', 9),
('01234567J', 'Javier', 'Romero', 'Navarro', 'Calle Ancha 90', 'javier.romero@email.com', '601234567', 10);
GO

-- Inserción de 10 profesores
INSERT INTO profesor (profesor_DNI_profe, profesor_N_profe, profesor_Apel1_profe, profesor_Apel2_profe, profesor_Dir_profe, profesor_Email_profe, profesor_Telf_profe, localidad_cod_localidad) VALUES
('98765432Z', 'Carlos', 'Rodríguez', 'Gómez', 'Calle Escuela 10', 'c.rodriguez@autoescuela.com', '698765432', 1),
('87654321Y', 'Laura', 'López', 'Martín', 'Avenida Enseñanza 22', 'l.lopez@autoescuela.com', '687654321', 2),
('76543210X', 'David', 'Sánchez', 'Pérez', 'Calle Formación 5', 'd.sanchez@autoescuela.com', '676543210', 3),
('65432109W', 'Ana', 'Martínez', 'García', 'Plaza Educación 8', 'a.martinez@autoescuela.com', '665432109', 4),
('54321098V', 'Jorge', 'Fernández', 'López', 'Avenida Conducir 15', 'j.fernandez@autoescuela.com', '654321098', 5),
('43210987U', 'Elena', 'González', 'Ruiz', 'Calle Práctica 30', 'e.gonzalez@autoescuela.com', '643210987', 6),
('32109876T', 'Miguel', 'Díaz', 'Sánchez', 'Plaza Teórica 7', 'm.diaz@autoescuela.com', '632109876', 7),
('21098765S', 'Isabel', 'Pérez', 'Martín', 'Avenida Seguridad 40', 'i.perez@autoescuela.com', '621098765', 8),
('10987654R', 'Alberto', 'Jiménez', 'Rodríguez', 'Calle Tráfico 25', 'a.jimenez@autoescuela.com', '610987654', 9),
('09876543Q', 'Carmen', 'Moreno', 'Alonso', 'Plaza Vial 3', 'c.moreno@autoescuela.com', '609876543', 10);
GO

-- Inserción de datos en la tabla contrato
INSERT INTO contrato (ID_contrato, Cargo, T_contrato, T_jornada, Sueldo, Antiguedad, profesor_profesor_DNI_profe) VALUES
(1, 'Profesor', 'Indefinido', 'Completa', 2500.00, '5 años', '98765432Z'),
(2, 'Profesor', 'Temporal', 'Parcial', 1800.00, '2 años', '87654321Y'),
(3, 'Profesor', 'Indefinido', 'Completa', 2300.00, '3 años', '76543210X'),
(4, 'Profesor', 'Indefinido', 'Completa', 2400.00, '4 años', '65432109W'),
(5, 'Profesor', 'Temporal', 'Completa', 2200.00, '1 año', '54321098V'),
(6, 'Profesor', 'Indefinido', 'Parcial', 1900.00, '6 años', '43210987U'),
(7, 'Profesor', 'Temporal', 'Parcial', 1700.00, '1 año', '32109876T'),
(8, 'Profesor', 'Indefinido', 'Completa', 2600.00, '7 años', '21098765S'),
(9, 'Profesor', 'Indefinido', 'Completa', 2450.00, '4 años', '10987654R'),
(10, 'Profesor', 'Temporal', 'Completa', 2100.00, '2 años', '09876543Q');
GO

INSERT INTO Nomina (Id_Nomina, Department, Nivel, H_extra, N_Cuenta, contrato_ID_contrato) VALUES
('NOM001', 'Enseñanza', 'Senior', '10', 'ES6621000418401234567891', 1),
('NOM002', 'Enseñanza', 'Junior', '5', 'ES6000491500051234567892', 2),
('NOM003', 'Enseñanza', 'Medio', '8', 'ES9420805801101234567893', 3),
('NOM004', 'Enseñanza', 'Senior', '12', 'ES9000246912501234567894', 4),
('NOM005', 'Enseñanza', 'Junior', '6', 'ES6621000418401234567895', 5),
('NOM006', 'Enseñanza', 'Medio', '7', 'ES1720852066201234567896', 6),
('NOM007', 'Enseñanza', 'Junior', '4', 'ES0182038454701234567897', 7),
('NOM008', 'Enseñanza', 'Senior', '15', 'ES7100302053091234567898', 8),
('NOM009', 'Enseñanza', 'Medio', '9', 'ES1000492352081234567899', 9),
('NOM010', 'Enseñanza', 'Junior', '5', 'ES0049295427011234567800', 10);
GO

-- Inserción de datos en la tabla profe_teorica
INSERT INTO profe_teorica (profesor_DNI_profe, profe_teorica_Clase_imparte, profe_teorica_Horas_practicas) VALUES
('98765432Z', 'Señales', 20),
('76543210X', 'Normativa', 25),
('54321098V', 'Mecánica', 15),
('32109876T', 'Seguridad', 22),
('10987654R', 'Primeros A', 18),
('65432109W', 'Normativa', 24),
('21098765S', 'Señales', 21);

-- Inserción de datos en la tabla profe_practicas
INSERT INTO profe_practicas (profesor_DNI_profe, profe_practicas_Titulacion, profe_practicas_Horas_practicas) VALUES
('87654321Y', 'B+E', 30),
('65432109W', 'A2', 28),
('43210987U', 'B', 35),
('21098765S', 'C+E', 40),
('09876543Q', 'D', 32),
('98765432Z', 'A', 25),
('54321098V', 'B', 33);
GO

-- Inserción de datos en la tabla teorica (asumiendo que los profesores con DNI par son de teoría)
INSERT INTO teorica (ID_teorica, F_teorica, Aula, cliente_DNI_cliente, profe_teorica_profesor_DNI_profe) VALUES
(1, '2023-10-20', 1, '12345678A', '98765432Z'),
(2, '2023-10-22', 2, '23456789B', '76543210X'),
(3, '2023-10-24', 1, '34567890C', '54321098V'),
(4, '2023-10-26', 3, '45678901D', '32109876T'),
(5, '2023-10-28', 2, '56789012E', '10987654R');
GO

-- Inserción de datos en la tabla vehiculo
INSERT INTO vehiculo (Matricula_vehiculo, Marca, Modelo, F_compra) VALUES
('1234ABC', 'Seat', 'Ibiza', '2020-01-15'),
('5678DEF', 'Renault', 'Clio', '2019-06-22'),
('9012GHI', 'Peugeot', '208', '2021-03-10'),
('3456JKL', 'Ford', 'Fiesta', '2020-11-05'),
('7890MNO', 'Volkswagen', 'Polo', '2022-02-20'),
('2345PQR', 'Opel', 'Corsa', '2021-05-30'),
('6789STU', 'Citroën', 'C3', '2019-12-15'),
('0123VWX', 'Nissan', 'Micra', '2020-07-18'),
('4567YZA', 'Toyota', 'Yaris', '2022-04-25'),
('8901BCD', 'Kia', 'Rio', '2021-08-12');
GO

-- Inserción de datos en la tabla practica (asumiendo que los profesores con DNI impar son de práctica)
INSERT INTO practica (ID_practica, F_practica, Estado_practica, cliente_DNI_cliente, vehiculo_vehiculo_ID, profe_practicas_profesor_DNI_profe) VALUES
(1, '2023-10-21', 'Completada', '67890123F', 1, '87654321Y'),
(2, '2023-10-23', 'Pendiente', '78901234G', 2, '65432109W'),
(3, '2023-10-25', 'En curso', '89012345H', 3, '43210987U'),
(4, '2023-10-27', 'Completada', '90123456I', 4, '21098765S'),
(5, '2023-10-29', 'Pendiente', '01234567J', 5, '09876543Q');
GO


INSERT INTO examen (ID_examen, F_examen, Tipo_examen, Tipo_carnet, cliente_DNI_cliente, vehiculo_vehiculo_ID) VALUES
(1, '2023-11-05', 'Teórico', 'B', '12345678A', 1),
(2, '2023-11-10', 'Práctico', 'B', '23456789B', 2),
(3, '2023-11-15', 'Teórico', 'A', '34567890C', 3),
(4, '2023-11-20', 'Práctico', 'C', '45678901D', 4),
(5, '2023-11-25', 'Teórico', 'B', '56789012E', 5),
(6, '2023-12-01', 'Práctico', 'A', '67890123F', 6),
(7, '2023-12-05', 'Teórico', 'D', '78901234G', 7),
(8, '2023-12-10', 'Práctico', 'B', '89012345H', 8),
(9, '2023-12-15', 'Teórico', 'C', '90123456I', 9),
(10, '2023-12-20', 'Práctico', 'B', '01234567J', 10);
GO




                    -- VISTAS
-- creamos un usuario
CREATE USER JBenitez WITHOUT LOGIN;
GO
-- creamos un role
CREATE ROLE db_trabajador;
GO
-- añadimos el usuario al role
ALTER ROLE db_trabajador
ADD MEMBER JBenitez;
GO
-- damos permiso de consulta al role
REVOKE SELECT ON dbo.contrato TO db_trabajador;
REVOKE SELECT ON dbo.profesor TO db_trabajador;
GO

-- Creamos una vista, limitará los datos que podremos ver de los empleados
-- De esta manera se verán los datos principales pero no los personales (en este caso la dirección)

-- Vista que muestra datos principales de los profesores sin incluir la dirección
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

-- Creamos procedimiento de actualizar sueldo a un profesor
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


-- Conceder permiso de ejecución al rol R_Humanos
GRANT EXEC ON Actualiza_Sueldo TO R_Humanos;

-- Revocamos permiso de ejecución al rol db_trabajador 
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

CREATE PROCEDURE sp_backups
(@Ruta VARCHAR(MAX))

AS
	BEGIN
	  -- Obtener la lista de bases de datos
	  DECLARE @Databases TABLE (
		Name VARCHAR(MAX)
	    );

	  INSERT INTO @Databases
	  SELECT name
	  FROM sys.databases
	  WHERE database_id > 4;

	  -- Iterar sobre las bases de datos
	  WHILE EXISTS (SELECT 1 FROM @Databases)
	  BEGIN

		-- Obtener el nombre de la base de datos actual
		DECLARE @DatabaseName VARCHAR(MAX);
		SET @DatabaseName = (SELECT Name FROM @Databases);

		-- Obtener la fecha y hora actual
		DECLARE @Date DATETIME;
		SET @Date = GETDATE();

		-- Obtener el nombre del archivo de backup
		DECLARE @BackupFileName VARCHAR(MAX);
		SET @BackupFileName = CONCAT(@Ruta, '/', @DatabaseName, '_', @Date, '.bak');

		-- Realizar la copia de seguridad
		BACKUP DATABASE @DatabaseName TO DISK = @BackupFileName WITH FORMAT;

		-- Eliminar la base de datos de la lista
		DELETE FROM @Databases
		WHERE Name = @DatabaseName;

	  END;

	END;

	EXEC sp_Backups 'C:\transactsql\Bakcups';
	GO





   -- TRANSACIONES EXPLICITAS
-- Crear procedimiento que baje el sueldo a un profesor y le suba la misma cantidad a otro


-- Creamos el procedimiento y definimos variables de entrada ( los dos profesores y la cantidad de sueldo)
CREATE OR ALTER PROCEDURE sp_VariarSueldos
    @dniProfesor1 NVARCHAR(9),  
    @dniProfesor2 NVARCHAR(9),  
    @cantidad DECIMAL(10, 2)       
AS
BEGIN
    -- Comenzamos una transacción explícita
    BEGIN TRANSACTION

    BEGIN TRY
        -- Comprobamos que el salario del profesor sea superior al salario mínimo
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
						THROW 50001, 'El sueldo no debe ser inferior al salario mínimo.', 1;
        END

        -- Subir el monto al segundo profesor
        UPDATE contrato
        SET Sueldo = Sueldo + @cantidad
        WHERE profesor_profesor_DNI_profe = @dniProfesor2;

        -- Si ambas actualizaciones son exitosas, confirmar la transacción
        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        -- En caso de error, deshacer toda la transacción
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

-- Al intentar añadir "sa" al rol bulkadmin no nos deja porque "sa" ya es una cuenta especial con todos los permisos
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

   -- Creamos comando SQL dinámico con la instrucción para insertar
   -- Quedaría así: INSERT INTO PICTURES (pictureName, picFileName, PictureData)
   --                  SELECT 'MiImagen', 'imagen.jpg', * 
   --                  FROM Openrowset(Bulk 'C:\CarpetaDeImagenes\imagen.jpg', Single_Blob) as img;
   
   SET @tsql = 'insert into Pictures (pictureName, picFileName, PictureData) ' +
               ' SELECT ' + '''' + @PicName + '''' + ',' + '''' + @Filename + '''' + ', * ' + 
               'FROM Openrowset( Bulk ' + '''' + @Path2OutFile + '''' + ', Single_Blob) as img'
   -- Ejecutamos el comando dinámico
   EXEC (@tsql)
END
GO

EXEC usp_ImportImage '32840700N', 'C:\transactsql', '32840700N.jpg';  
SELECT * FROM Pictures;
GO

-- Procedimiento para exportar imágenes

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
   -- Abrimos el flujo para que esté listo para recibir datos.
     EXEC sp_OAMethod @Obj,'Open';
   -- Escribimos los datos binarios de la imagen (@ImageData) en el flujo.
     EXEC sp_OAMethod @Obj,'Write', NULL, @ImageData;
   -- Guardamos los datos del flujo en un archivo, usando la ruta completa (@Path2OutFile) que definimos antes.
   -- El "2" indica que si el archivo existe se reescribirá
     EXEC sp_OAMethod @Obj,'SaveToFile', NULL, @Path2OutFile, 2;
   -- Cerramos el flujo y liberamos los recursos asociados al objeto ADODB.Stream.
     EXEC sp_OAMethod @Obj,'Close';
     EXEC sp_OADestroy @Obj;
    END TRY

	BEGIN CATCH
   -- Esto asegura que si hay algún error se liberan los recursos del objeto.
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


-- Procedimiento almacenado que aportando un año nos devuelva los vehículos comprados en dicho año

USE autoescuelaP;
GO

-- Crear el procedimiento almacenado
CREATE OR ALTER PROCEDURE ComprasAnuales
    @AnoCompra INT -- Parámetro de entrada para el año de compra
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
        PRINT 'Número de vehículos comprados en el año ' + CAST(@AnoCompra AS NVARCHAR(4)) + ': ' + CAST(@CantidadVehiculos AS NVARCHAR(10));
    END
    ELSE
    BEGIN
        PRINT 'No se han comprado vehículos ese año.';
    END
	SELECT * FROM vehiculo WHERE YEAR(F_Compra)= @AnoCompra;
END;
GO

EXEC ComprasAnuales 2020;
GO

