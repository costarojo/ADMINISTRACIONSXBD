use autoescuelaP;
GO

-- INSERCION DE DATOS EN TABLAS
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
INSERT INTO [AutoescuelaWirtz].[dbo].[profesor] 
  ([dni_profesor], [n_profesor], [apell1_profe], [apell2_profe], [dir_profe], [email_profe], [telf_profe], [localidad_cod_localidad]) 
VALUES
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
('001', 'Ense�anza', 'Sen', '10', 'ES6621000418401234567891', 1),
('002', 'Ense�anza', 'Jun', '5', 'ES6000491500051234567892', 2),
('003', 'Ense�anza', 'Med', '8', 'ES9420805801101234567893', 3),
('004', 'Ense�anza', 'Sen', '12', 'ES9000246912501234567894', 4),
('005', 'Ense�anza', 'Jun', '6', 'ES6621000418401234567895', 5),
('006', 'Ense�anza', 'MeD', '7', 'ES1720852066201234567896', 6),
('007', 'Ense�anza', 'Jun', '4', 'ES0182038454701234567897', 7),
('008', 'Ense�anza', 'Sen', '15', 'ES7100302053091234567898', 8),
('009', 'Ense�anza', 'Med', '9', 'ES1000492352081234567899', 9),
('010', 'Ense�anza', 'Jun', '5', 'ES0049295427011234567800', 10);
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

--

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
-------------------------------------------------------------------------------------------------------------





-- PROCEDIMIENTO PARA MODIFICAR SUELDO DE UN PROFESOR
CREATE PROCEDURE Actualiza_Sueldo  --Se crea el procedimiento y se declaran variables de entrada
    @DNI_profesor VARCHAR(9),
    @Nuevo_sueldo DECIMAL(10,2)
AS
BEGIN
    UPDATE contrato  -- Actualizaci�n del sueldo donde coincida el dni
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
-- Retiramos permisos para ver datos de contrato y de profesor al personal de RRHH
REVOKE SELECT ON contrato TO R_Humanos;
GO
REVOKE SELECT ON profesor TO R_Humanos;
GO
-- Concedemos permiso sobre la vista y sobre el procedimiento
GRANT SELECT ON vista_profesores_completo TO R_Humanos;
GO
GRANT EXEC ON Actualiza_Sueldo TO R_Humanos;
GO


-- Modificamos el procedimiento para mostrar el resultado
CREATE OR ALTER PROCEDURE Actualiza_Sueldo
    @DNI_profe VARCHAR(9),
    @SueldoNuevo DECIMAL(10,2)
AS 
BEGIN
    DECLARE @SueldoAntiguo DECIMAL(10,2);  
    DECLARE @Nombre_profe NVARCHAR(12);    
    DECLARE @Apellido1_profe NVARCHAR(12); 

    -- Obtenemos los datos actuales
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

    -- Actualizamos el sueldo
    UPDATE contrato
    SET Sueldo = @SueldoNuevo
    WHERE profesor_profesor_DNI_profe = @DNI_profe;

    -- Mostramos los resultados
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
IF EXISTS (SELECT * FROM sys.database_principals WHERE name = 'db_trabajador' AND type = 'R')
BEGIN
    REVOKE EXEC ON Actualiza_Sueldo TO db_trabajador;
END
GO

-- Ejecutar el procedimiento como usuario JBenitez
EXECUTE AS USER = 'JBenitez';
EXEC Actualiza_Sueldo '98765432Z', 2000.00;
GO
REVERT;
GO

-- Ejecutar el procedimiento como usuario BCosta
EXECUTE AS USER = 'BCosta';
EXEC Actualiza_Sueldo '98765432Z', 3000.00;
GO
REVERT;

-- Mostrar todos los profesores
SELECT * FROM dbo.profesor;
GO

-- Mostrar el usuario actual
PRINT USER;
GO

USE autoescuelaP;

GO



-- Vamos a crear varios roles en la base de datos, uno para cada departamento/puesto

CREATE ROLE R_Administracion
CREATE ROLE R_Contabilidad
CREATE ROLE R_RecursosHumanos
CREATE ROLE R_Direccion
CREATE ROLE R_Profesor;
GO  
---------------------------------------------------------------------------------------------------

-- CREAR PROCEDIMIENTO PARA GENERAR USUARIOS CON LETRA Y APELLIDO DE CADA PROFESOR
-- Creamos procedimiento
CREATE OR ALTER PROCEDURE Actualizar_Usuarios_Profesor
AS
BEGIN
-- Declaramos las variables internas y el cursor
    DECLARE @nombre NVARCHAR(100)
    DECLARE @apellido NVARCHAR(100)
    DECLARE @user_name NVARCHAR(101)
    DECLARE profesor_cursor CURSOR FOR
	
-- Seleccionamos los datos para el cursor, lo abrimos y apuntamos a la primera fila
    SELECT profesor_N_profe, profesor_Apel1_profe FROM profesor
    OPEN profesor_cursor
    FETCH NEXT FROM profesor_cursor INTO @nombre, @apellido
-- Mientras queden filas, crea el usuario con los datos
    WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @user_name = LEFT(@nombre, 1) + @apellido
            CREATE USER [@user_name]  WITHOUT LOGIN;
	        ALTER ROLE R_Profesor ADD MEMBER [@user_name];
			FETCH NEXT FROM profesor_cursor INTO @nombre, @apellido
		END
-- Cerramos el cursor y liberamos memoria
    CLOSE profesor_cursor
    DEALLOCATE profesor_cursor
END


-- Nos da error y tras consultar nos damos cuenta que en SQL no se pueden usar variables directamente en 
--las sentencias CREATE/ALTER/DROP.... 
-- Para este tipo de casos debemos usar "Consultas din�micas", esto significa hacer consultas que en cada iteraci�n tomen valores distintos.

CREATE OR ALTER PROCEDURE Actualizar_Usuarios_Profesor
AS
BEGIN
    DECLARE @nombre NVARCHAR(100)
    DECLARE @apellido NVARCHAR(100)
    DECLARE @user_name NVARCHAR(101)
    DECLARE @sql NVARCHAR(MAX) -- Para consultas din�micas
    DECLARE profesor_cursor CURSOR FOR 

    SELECT profesor_N_profe, profesor_Apel1_profe FROM profesor
    OPEN profesor_cursor
    FETCH NEXT FROM profesor_cursor INTO @nombre, @apellido
    WHILE @@FETCH_STATUS = 0
		BEGIN
			-- Creamos el nombre de usuario
			SET @user_name = LEFT(@nombre, 1) + @apellido

			-- Creamos la consulta din�mica para crear el usuario y al ejecutamos
			SET @sql = N'CREATE USER [' + @user_name + '] WITHOUT LOGIN;'
			EXEC sp_executesql @sql

			-- Creamos la consulta din�mica para a�adir al rol y la ejecutamos
			SET @sql = N'ALTER ROLE R_Profesor ADD MEMBER [' + @user_name + '];'
			EXEC sp_executesql @sql

			FETCH NEXT FROM profesor_cursor INTO @nombre, @apellido
		END
    CLOSE profesor_cursor
    DEALLOCATE profesor_cursor
END

Actualizar_Usuarios_Profesor;
GO

print user;
GO

use autoescuela
GO

-- Pruebo a seleccionar usuarios del rol R_Humanos
SELECT u.name AS Usuario
FROM sys.database_role_members rm
JOIN sys.database_principals u ON rm.member_principal_id = u.principal_id
WHERE rm.role_principal_id = (SELECT principal_id FROM sys.database_principals WHERE name = 'R_Humanos');
GO

-- Pruebo a seleccionar usuarios de la base de datos (S para autenticacion SQL y U para la base de datos)
SELECT name AS Usuario
FROM sys.database_principals
WHERE TYPE IN ('S','U');
GO

----------------------------------------------------------------------------------------------------------


-- PROCEDIMIENTO PARA REALIZAR BACKUPS (SIN CURSORES)

CREATE OR ALTER PROC sp_Backups_ruta

-- Declaramos par�metro de entrada y asignamos la carpeta por defecto
	@ruta VARCHAR(256) = 'C:\backups\'

AS
-- Declaramos variables internas

DECLARE @name VARCHAR(50), -- nombre base de datos
@fileName VARCHAR(256), -- nombre del backup
@fileDate VARCHAR(20), -- fecha del backup
@backupCount INT -- contador

-- Creamos tabla temporal para almacenar los nombres de las bases de datos
CREATE TABLE #tempBackup( 
	 intID INT IDENTITY (1, 1), 
	 name VARCHAR(200)
	 )

-- Se convierte la fecha actual a varchary se mete en la variable
SET @fileDate = CONVERT(VARCHAR(20), GETDATE(), 112)

-- Se a�aden a la tabla temporal los nombres de las bases de datos que no sean las de prueba
INSERT INTO #tempBackup (name)
	SELECT name
	FROM master.dbo.sysdatabases
    WHERE name NOT IN ('master', 'model', 'msdb', 'tempdb', 'AdventureWorks', 'WideWorldImporters')

-- Seleccionamos la primera fila de la tabla tempora donde el ID sea igual al contador (en orden inverso)
SELECT TOP 1 @backupCount = intID 
FROM #tempBackup 
ORDER BY intID DESC

-- Si el contador no es nulo y es mayor que 0, iniciamos proceso
IF ((@backupCount IS NOT NULL) AND (@backupCount > 0))

BEGIN
	DECLARE @currentBackup INT
	SET @currentBackup = 1 -- se pone a 1 el contador de backup
	WHILE (@currentBackup <= @backupCount) -- Mientras la backup actual sea menor o igual que el contador de backups inicia el bucle
		BEGIN
			SELECT
				@name = name,
				@fileName = @ruta + name + '_' + @fileDate + '.BAK' 
				FROM #tempBackup
				WHERE intID = @currentBackup
				-- Se realiza backup y se incrementa el contador
				BACKUP DATABASE @name TO DISK = @fileName
				SET @currentBackup = @currentBackup + 1 
		END

END



-- Mostramos bases de datos de las que se ha realizado copia
SELECT * FROM #tempBackup
DROP TABLE #tempBackup

GO

EXEC sp_Backups_ruta 'C:\backups2024\' ;
GO
---------------------------------------------------------------------------------------------------
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
	SET @ruta = N'C:\backups\'

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

exec sp_Backup AutoescuelaWirtz;
GO
------------------------------------------------------------------------------------------------------------


-- Procedimiento almacenado que aportando un a�o nos devuelva los veh�culos comprados en dicho a�o

USE autoescuelaP;
GO

-- Creamos el procedimiento almacenado
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




---------------------------------------------------------------------------------------------------
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
END;
GO


SELECT * FROM contrato;
GO

-- Comprobamos:
EXEC sp_VariarSueldos '98765432Z', '87654321Y', 800;
GO

EXEC sp_VariarSueldos '87654321Y', '98765432Z', 100;
GO
----------------------------------------------------------



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

-- Consultar los resultados, se le ha subido el sueldo al profesor2 pero no se le ha restado al profesor1

SELECT * FROM contrato;
GO




---------------------------------------------------------------------------------------------------

-- CREAR PROCEDIMIENTO PARA SUBIR PRECIOS 
CREATE OR ALTER PROCEDURE AumentarPrecio
@IDProducto int,
@porcentaje int

AS BEGIN
	DECLARE 
		@preciofinal decimal

	IF @porcentaje > 0
		BEGIN 
			UPDATE precios
			SET Precio = (Precio + (@porcentaje*Precio/100))
			WHERE id_precio = @IDProducto
			PRINT ('Se ha aumentado el precio un ' + CONVERT(VARCHAR, @porcentaje) + '%.')
		END
	ELSE
		THROW 50000, 'El porcentaje debe ser mayor que cero', 1;
		SELECT * FROM precios WHERE id_precio=@IDProducto;

END;

SELECT * FROM precios;
GO

-- Lo probamos
EXEC AumentarPrecio 1, 20.5;
GO

--Restauramos precio
UPDATE precios 
SET precio = 120
WHERE id_precio = 1;
GO
-------------------------------------------------------------------------------------------

-- EJERCICIO PRACTICAR 1
-- Crear un procedimiento que le suba el sueldo a los profesores en funci�n de su localidad
-- Que se ejecuten todas las actualizaciones o ninguna
-- Al finalizar el procedimiento que se guarden la confirmacion o error en una tabla


 CREATE TABLE LogTable (
				Estado VARCHAR(30),
				Fecha VARCHAR(200)
				);



CREATE OR ALTER PROCEDURE sp_ActualizarSueldoLocalidad
 AS BEGIN
	DECLARE
		@profesor varchar(20),
		@localidad varchar(20)

	DECLARE CursorProfe CURSOR FOR
		SELECT p.dni_profesor, 
			   l.n_localidad 
		FROM  profesor p
		INNER JOIN localidad l
		ON cod_localidad = localidad_cod_localidad;

	BEGIN TRY

        -- Abrir el cursor
        OPEN CursorProfe;
        -- Iniciar la transacci�n expl�cita
        BEGIN TRAN;

		FETCH NEXT FROM CursorProfe INTO @profesor, @localidad
		WHILE @@FETCH_STATUS = 0 
			BEGIN 
				IF @localidad = 'Madrid'
					BEGIN
						UPDATE contrato
							SET sueldo = sueldo+(5*sueldo/100)
							WHERE profesor_profesor_DNI_profe = @profesor;
					END
				IF @localidad = 'Barcelona'
					BEGIN
						UPDATE contrato
						SET sueldo = sueldo+(10*sueldo/100)
						WHERE profesor_profesor_DNI_profe = @profesor;
					END
				IF @localidad NOT IN ('Madrid', 'Barcelona')
					BEGIN
						print 'El profesor con dni ' + @profesor + ' se queda con el mismo sueldo'
					END
				FETCH NEXT FROM CursorProfe INTO @profesor, @localidad;
			END
					SELECT 
		p.dni_profesor AS DNI,
		p.n_profesor AS Nombre,
		c.sueldo AS Sueldo,
		l.n_localidad AS Localidad
		FROM profesor p
		INNER JOIN
			contrato c ON dni_profesor = profesor_profesor_DNI_profe
		INNER JOIN
			localidad l ON localidad_cod_localidad = cod_localidad;

				INSERT INTO LogTable(Estado, Fecha)
			VALUES ('Actualizaci�n de los salarios', (CONVERT(VARCHAR, GETDATE(), 103) + ' ' + CONVERT(VARCHAR, GETDATE(), 108)));
			-- Confirmamos transacci�n
			COMMIT TRAN;
			END TRY

			BEGIN CATCH
        -- En caso de error, revertir la transacci�n y manejar errores
        IF @@TRANCOUNT > 0
            ROLLBACK TRAN;

        -- Mostrar el error
        THROW;
			INSERT INTO LogTable (Estado, Fecha)
			VALUES ('Error al realizar la operacion', (CONVERT(VARCHAR, GETDATE(), 103) + ' ' + CONVERT(VARCHAR, GETDATE(), 108)));
    END CATCH
-- Cerramos y liberamos memoria
	CLOSE CursorProfe;
	DEALLOCATE CursorProfe;

END;

		
-- Lo probamos
EXEC sp_ActualizarSueldoLocalidad;
GO

DROP TABLE LogTable;
GO

		 CREATE TABLE LogTable (
				Estado VARCHAR(30),
				Fecha VARCHAR(200)
				);

SELECT * FROM LogTable;
GO
-------------------------------------------------------------------------------------------

-- EJERCICIO PRACTICAR 2
-- Crea un procedimiento almacenado llamado sp_GestionarReabastecimiento que realice las siguientes tareas:

--Utilice un cursor para recorrer todos los productos de la tabla Productos.
--Si el stock actual de un producto es inferior al Stock_Minimo, debe crear un registro en la tabla Ordenes_Reabastecimiento con la cantidad necesaria para alcanzar el doble del Stock_Minimo.
--Registre las �rdenes por proveedor y asocie correctamente las claves entre las tablas.
--Implementa una transacci�n expl�cita dentro del procedimiento para garantizar que todas las �rdenes de reabastecimiento se registren de manera at�mica.

--Crea un registro en una tabla de logs llamada LogReabastecimiento que almacene:

--Estado de la operaci�n ('Correcto' o 'Error').
--Fecha y hora del intento.
--Descripci�n del error en caso de fallo.


USE tempdb;
GO

CREATE TABLE Productos (
    ID_Producto INT PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Stock INT NOT NULL,
    Stock_Minimo INT NOT NULL,
    Proveedor NVARCHAR(100) NOT NULL
);

CREATE TABLE Ordenes_Reabastecimiento (
    ID_Orden INT PRIMARY KEY IDENTITY(1,1),
    ID_Producto INT NOT NULL,
    Cantidad INT NOT NULL,
    Fecha_Orden DATETIME NOT NULL,
    Proveedor NVARCHAR(100) NOT NULL,
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);

CREATE TABLE LogReabastecimiento (
    ID_Log INT PRIMARY KEY IDENTITY(1,1),
    Estado NVARCHAR(50),
    FechaHora DATETIME,
    Descripcion NVARCHAR(MAX)
);

INSERT INTO Productos (ID_Producto, Nombre, Stock, Stock_Minimo, Proveedor)
VALUES 
(1, 'Producto A', 15, 10, 'Proveedor A'),
(2, 'Producto B', 5, 20, 'Proveedor B'),
(3, 'Producto C', 30, 25, 'Proveedor C'),
(4, 'Producto D', 8, 15, 'Proveedor A'),
(5, 'Producto E', 50, 40, 'Proveedor B'),
(6, 'Producto F', 3, 10, 'Proveedor C'),
(7, 'Producto G', 18, 20, 'Proveedor A'),
(8, 'Producto H', 0, 5, 'Proveedor B'),
(9, 'Producto I', 12, 10, 'Proveedor C'),
(10, 'Producto J', 25, 15, 'Proveedor A');
GO


DROP PROCEDURE sp_GestionarReabastecimiento;
GO

CREATE OR ALTER PROCEDURE sp_GestionarReabastecimiento 
AS BEGIN
	DECLARE -- Declaro variables internas
		@ID_Producto INT,
		@Stock INT,
		@Stock_Minimo INT,
		@Proveedor NVARCHAR(100)
		-- Declaro el cursor
	DECLARE Logistico CURSOR FOR 
	SELECT ID_Producto, Stock, Stock_Minimo, Proveedor
	FROM Productos;
	BEGIN TRAN;
		BEGIN TRY
	-- Abro cursor y apunto a la primera fila
		OPEN Logistico;
		FETCH NEXT FROM Logistico INTO @ID_Producto, @Stock, @Stock_Minimo, @Proveedor
		-- Inicio bucle del cursor
		WHILE @@FETCH_STATUS = 0 
			BEGIN
				IF @Stock < @Stock_Minimo
					BEGIN
						INSERT INTO Ordenes_Reabastecimiento(ID_Producto, Cantidad, Fecha_Orden, Proveedor)
						VALUES 
							(@ID_Producto, (@Stock_Minimo*2-@Stock), GETDATE(), @Proveedor);
					END;
					
				FETCH NEXT FROM Logistico INTO @ID_Producto, @Stock, @Stock_Minimo, @Proveedor;
			END;
	INSERT INTO LogReabastecimiento (Estado, FechaHora, Descripcion)
	VALUES ('Pedido Realizado', GETDATE(), 'Actualizaci�n de pedidos');
	COMMIT TRAN
	END TRY
		
	BEGIN CATCH
		ROLLBACK TRANSACTION;
				INSERT INTO LogReabastecimiento (Estado, FechaHora, Descripcion)
	VALUES ('Error en el pedido', GETDATE(), 'Intento de pedido');
	CLOSE Logistico;
	DEALLOCATE Logistico;
		PRINT 'ERROR EN LA TRANSACCI�N';
		THROW;
	END CATCH;

		SELECT 
		P.Nombre,
		O.Cantidad,
		O.Fecha_Orden,
		O.Proveedor
		FROM Productos P
		INNER JOIN Ordenes_Reabastecimiento O
		ON P.ID_Producto = O.ID_Producto;

		CLOSE Logistico;
	DEALLOCATE Logistico;
END;



EXEC sp_GestionarReabastecimiento;

SELECT * FROM LogReabastecimiento;
select * from Ordenes_Reabastecimiento;

---------------------------------------------------------------------------
-- INSERCION DE DATOS Y MODIFICACION DE TABLAS

ALTER TABLE profe_teorica
ALTER COLUMN clase VARCHAR(50);

ALTER TABLE profe_practicas
ALTER COLUMN titulacion VARCHAR(50);

--A�adimos datos a la tabla

INSERT INTO vehiculo (matricula_vehiculo, marca, modelo, f_compra)
VALUES
('ABC1234', 'Toyota', 'Corolla', '2018-05-10'),
('DEF5678', 'Ford', 'Focus', '2019-02-15'),
('GHI9012', 'Volkswagen', 'Golf', '2020-06-20'),
('JKL3456', 'Honda', 'Civic', '2019-12-12'),
('MNO7890', 'Nissan', 'Altima', '2021-03-30'),
('PQR1234', 'Chevrolet', 'Malibu', '2020-11-05'),
('STU5678', 'Hyundai', 'Elantra', '2022-01-15'),
('VWX9012', 'Kia', 'Forte', '2021-08-22'),
('YZA3456', 'Mazda', 'Mazda3', '2023-02-10'),
('BCD7890', 'Subaru', 'Impreza', '2023-07-01'),
('EFG1234', 'Renault', 'Clio', '2019-03-18'),
('HIJ5678', 'Peugeot', '308', '2020-07-14'),
('KLM9012', 'BMW', 'Serie 3', '2021-04-22'),
('NOP3456', 'Mercedes', 'Clase C', '2022-09-30'),
('QRS7890', 'Audi', 'A4', '2021-06-18'),
('TUV1234', 'Seat', 'Le�n', '2020-02-25'),
('WXY5678', 'Opel', 'Astra', '2022-12-11'),
('ZAB9012', 'Fiat', 'Tipo', '2023-03-20'),
('CDE3456', 'Tesla', 'Model 3', '2023-05-12'),
('FGH7890', 'Volvo', 'S60', '2022-11-25');

INSERT INTO teorica (id_teorica, f_teorica, aula, cliente_dni_cliente, profe_teorica_profesor_dni_profe)
VALUES
(1, '2019-03-12', 101, '01234567J', '09876543Q'),
(2, '2019-07-15', 102, '12345678A', '10987654R'),
(3, '2020-01-18', 103, '23456789B', '21098765S'),
(4, '2020-06-22', 104, '34567890C', '32109876T'),
(5, '2021-09-10', 105, '45678901D', '43210987U'),
(6, '2021-11-05', 106, '56789012E', '54321098V'),
(7, '2022-02-25', 107, '67890123F', '65432109W'),
(8, '2022-05-30', 108, '78901234G', '76543210X'),
(9, '2023-03-15', 109, '89012345H', '87654321Y'),
(10, '2023-08-20', 110, '90123456I', '98765432Z'),
(11, '2019-02-14', 201, '01234567J', '09876543Q'),
(12, '2019-10-18', 202, '12345678A', '10987654R'),
(13, '2020-04-12', 203, '23456789B', '21098765S'),
(14, '2020-11-20', 204, '34567890C', '32109876T'),
(15, '2021-06-15', 205, '45678901D', '43210987U'),
(16, '2021-12-25', 206, '56789012E', '54321098V'),
(17, '2022-03-17', 207, '67890123F', '65432109W'),
(18, '2022-07-11', 208, '78901234G', '76543210X'),
(19, '2023-01-08', 209, '89012345H', '87654321Y'),
(20, '2023-05-20', 210, '90123456I', '98765432Z');

INSERT INTO practica (id_practica, f_practica, estado_practica, cliente_dni_cliente, profe_practicas_profesor_dni_profe, matricula_vehiculo)
VALUES
(1, '2019-01-10', 'Completada', '01234567J', '09876543Q', 'ABC1234'),
(2, '2019-04-20', 'Pendiente', '12345678A', '10987654R', 'DEF5678'),
(3, '2020-02-14', 'Cancelada', '23456789B', '21098765S', 'GHI9012'),
(4, '2020-07-22', 'Completada', '34567890C', '32109876T', 'JKL3456'),
(5, '2021-08-30', 'Pendiente', '45678901D', '43210987U', 'MNO7890'),
(6, '2021-10-05', 'Cancelada', '56789012E', '54321098V', 'PQR1234'),
(7, '2022-01-17', 'Completada', '67890123F', '65432109W', 'STU5678'),
(8, '2022-04-21', 'Pendiente', '78901234G', '76543210X', 'VWX9012'),
(9, '2023-06-15', 'Cancelada', '89012345H', '87654321Y', 'YZA3456'),
(10, '2023-10-20', 'Completada', '90123456I', '98765432Z', 'BCD7890'),
(11, '2023-03-12', 'Pendiente', '01234567J', '09876543Q', 'EFG1234'),
(12, '2023-07-18', 'Cancelada', '12345678A', '10987654R', 'HIJ5678'),
(13, '2020-05-12', 'Completada', '23456789B', '21098765S', 'KLM9012'),
(14, '2020-09-22', 'Pendiente', '34567890C', '32109876T', 'NOP3456'),
(15, '2021-12-15', 'Cancelada', '45678901D', '43210987U', 'QRS7890'),
(16, '2021-03-10', 'Completada', '56789012E', '54321098V', 'TUV1234'),
(17, '2022-02-25', 'Pendiente', '67890123F', '65432109W', 'WXY5678'),
(18, '2022-06-05', 'Cancelada', '78901234G', '76543210X', 'ZAB9012'),
(19, '2023-04-08', 'Completada', '89012345H', '87654321Y', 'CDE3456'),
(20, '2023-09-15', 'Pendiente', '90123456I', '98765432Z', 'FGH7890');

INSERT INTO profe_teorica (profesor_profesor_dni_profe, clase, horas_clase, dni_profesor)
VALUES
('09876543Q', 'Reglamento de tr�fico', 20, '09876543Q'),
('10987654R', 'Se�alizaci�n vial', 15, '10987654R'),
('21098765S', 'Normativa medioambiental', 25, '21098765S'),
('32109876T', 'Normas de circulaci�n', 30, '32109876T'),
('43210987U', 'Educaci�n vial', 10, '43210987U'),
('54321098V', 'Psicot�cnico', 18, '54321098V'),
('65432109W', 'Primera ayuda en accidentes', 12, '65432109W'),
('76543210X', 'Mantenimiento de veh�culos', 20, '76543210X'),
('87654321Y', 'Factores de riesgo al conducir', 15, '87654321Y'),
('98765432Z', 'Planificaci�n de rutas', 10, '98765432Z');

INSERT INTO profe_practicas (profesor_profesor_dni_profe, titulacion, horas_practicas, dni_profesor)
VALUES
('09876543Q', 'Instructor avanzado', 40, '09876543Q'),
('10987654R', 'Instructor de seguridad vial', 35, '10987654R'),
('21098765S', 'Instructor ambiental', 30, '21098765S'),
('32109876T', 'Instructor especializado en maniobras', 25, '32109876T'),
('43210987U', 'Instructor de conducci�n defensiva', 20, '43210987U'),
('54321098V', 'Instructor en simuladores', 30, '54321098V'),
('65432109W', 'Instructor de mantenimiento b�sico', 20, '65432109W'),
('76543210X', 'Instructor de manejo de emergencias', 35, '76543210X'),
('87654321Y', 'Instructor de planificaci�n', 25, '87654321Y'),
('98765432Z', 'Instructor de t�cnicas avanzadas', 15, '98765432Z');


Select * FROM profesor;
GO

Select * FROM practica;
GO
--------------------------------------------------------------------------
-- EJERCICIO PRACTICA
-- procedimiento para calcular el n�mero total de alumnos inscritos en cada curso (te�rico o pr�ctico) por a�os
-- almacenar� el resultado en una tabla de auditor�a.

-- Creamos tabla auditoria
CREATE TABLE Auditorianual(
	ID_auditoria INT IDENTITY PRIMARY KEY,
	anno INT,
	matriculas INT,
	tipo VARCHAR(20)
);
-- Creamos la vista clases
-- Podr�amos crear una vista para teoricas y otra para pr�cticas 
-- para restringir la informaci�n a cada departamento

CREATE VIEW w_clases AS
	SELECT anno, matriculas, tipo
	FROM Auditorianual;


-- Creamos procedimiento y declaramos par�metro de entrada
CREATE OR ALTER PROCEDURE sp_auditorianual
@anno INT

-- Declaramos variables internas y procedimiento
AS BEGIN
DECLARE
@contadorteorica INT,
@contadorpractica INT,
@f_teorica date,
@f_practica date

SET @contadorteorica = 0;
SET @contadorpractica = 0;
DECLARE cursorteorica CURSOR FOR
	SELECT 
		f_teorica
	FROM teorica;

DECLARE cursorpractica CURSOR FOR
	SELECT 
		f_practica
	FROM practica;
	-- Abrimos cursor y apuntamos a la primera fila
	BEGIN TRY
			BEGIN TRAN
			OPEN cursorteorica
			FETCH NEXT FROM cursorteorica INTO @f_teorica 
			WHILE @@FETCH_STATUS = 0
				BEGIN
					IF YEAR(@f_teorica) = @anno
					SET @contadorteorica = @contadorteorica + 1;
					FETCH NEXT FROM cursorteorica INTO @f_teorica
				END;
			CLOSE cursorteorica;
			DEALLOCATE cursorteorica;

			OPEN cursorpractica
			FETCH NEXT FROM cursorpractica INTO @f_practica
			WHILE @@FETCH_STATUS = 0
				BEGIN
					IF YEAR(@f_practica) = @anno
					SET @contadorpractica = @contadorpractica + 1;
					FETCH NEXT FROM cursorpractica INTO @f_practica
				END;
				CLOSE cursorpractica;
			DEALLOCATE cursorpractica;

			IF NOT EXISTS (SELECT 1 FROM Auditorianual WHERE anno = @anno)
			BEGIN
				INSERT INTO Auditorianual (anno, matriculas, tipo)
				VALUES (@anno, @contadorteorica, 'Teor�a'),
					   (@anno, @contadorpractica, 'Pr�ctica');
			END;
	COMMIT TRAN;
	END TRY

	BEGIN CATCH
		ROLLBACK TRAN;
		THROW;
	END CATCH;
	
	SELECT * FROM w_clases
	WHERE anno = @anno;
END;

EXEC sp_auditorianual 2019;

SELECT * FROM w_clases;
GO

DELETE FROM Auditorianual;
GO

---------------------------------------------------------------------------

-- INSERTAR DATOS EN UNA TABLA DESDE ARCHIVO CON BULK
--Para comprobaciones
-- CREATE DATABASE bcr;
-- GO
-- USE bcr;
--GO;
-- CREATE TABLE asignaturas (nombre VARCHAR(50), horas DECIMAL(10, 2), profesor VARCHAR(50));



BULK INSERT asignaturas
FROM 'C:\transactsql\curso.txt'
WITH (
    FIELDTERMINATOR = ',',  -- separador de las columnas
    ROWTERMINATOR = '\n',   --  separador de las filas
    FIRSTROW = 2            -- ponemos dos para que no lea el encabezado
);

SELECT * FROM asignaturas;
GO
