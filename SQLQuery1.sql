USE autoescuelaP;
GO

SELECT * FROM dbo.vehiculo;
GO

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