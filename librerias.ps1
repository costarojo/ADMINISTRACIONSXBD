





Import-Module SQLSERVER


#Explicación
Instanciar la clase:
	Connection conexion = new connection();
	
Establecemos la propiedad 
	conexion.ConnectionString = "Data Source=localhost;Initial Catalog=northwind;Integrated Security=True";
	
Se usan propiedades de la clase
conexion.open();
conexion.close();


# SMO

#Crear base de datos con SMO

#Creamos la instancia
$instanceName = "localhost"
$server = New-Object -TypeName Microsoft.SqlServer.Management.Smo.Server -ArgumentList $instanceName

#comprobamos la existencia de la base de datos con una propiedad de la instancia
$server.Databases | Select Name, Status, Owner, CreateDate

#Crear base de datos nueva
$dbName = "bcr"
$db = New-Object -TypeName Microsoft.SqlServer.Management.Smo.Database($server, $dbName)
$db.Create()

#Comprobamos
$server.Databases | Select Name, Status, Owner, CreateDate


#Creamos conexion con BD bcr
$MyConnection = Connect-DbaInstance -SqlInstance LOCALHOST -TrustServerCertificate
Get-DbaDatabase -SqlInstance $MyConnection -Database bcr


#Borramos BD bcr

#Creamos la instancia
$instanceName = "localhost"
$server = New-Object -TypeName Microsoft.SqlServer.Management.Smo.Server -ArgumentList $instanceName

#Asignamos variable a nuestra base de datos
$dbName = "bcr"

#Si la base de datos existe, borrala
$db = $server.Databases[$dbName]
if ($db)
{
    $server.KillDatabase($dbName)   #se usa "kill" porque con drop daría error si existiese conexión
}
#Comprobamos
$server.Databases | Select Name, Status, Owner, CreateDate


# ADO.NET

#Crear una base de datos
$connectionString = "server=localhost;database=master;integrated security=true"
$sqlConnection = New-Object System.Data.SqlClient.SqlConnection($connectionString)

$sqlcommand = New-Object System.Data.SqlClient.SqlCommand("CREATE DATABASE bcr", $sqlConnection)

$sqlConnection.Open()
$sqlcommand.ExecuteNonQuery()
$sqlConnection.close()

write-Host "Database bcr creada con éxito"


#Comprobar y crear base de datos

$dbname = "bcr";

#Se crea la conexión y se abre
$con = New-Object Data.SqlClient.SqlConnection;
$con.ConnectionString = "Data Source=.;Initial Catalog=master;Integrated Security=True;";
$con.open();

#Se crea un select para listar las bases de datos con el mismo nombre
$sql = "SELECT name
        FROM sys.databases
        WHERE name = '$dbname';";

#Se crea un nuevo comando para lanzar el select contra la conexion
$cmd = New-Object Data.SqlClient.SqlCommand $sql, $con;
$rd = $cmd.ExecuteReader();
if ($rd.Read())
{
    Write-Host "Database $dbname ya existe";
    Return;
}
$rd.Close();
$rd.Dispose();

#CREAMOS LA BASE DE DATOS
#Creamos la conexion
$con = New-Object Data.SqlClient.SqlConnection;
$con.ConnectionString = "Data Source=.;Initial Catalog=master;Integrated Security=True;";
$con.open();

#Creamos la base de datos
$sql = "CREATE DATABASE [$dbname];"
$cmd = New-Object Data.SqlClient.SqlCommand $sql, $con;
$cmd.ExecuteNonQuery();
Write-Host "Database $dbname creada!";

#Cerramos y liberamos memoria
$cmd.Dispose();
$con.Close();
$con.Dispose();



#CREAMOS LA TABLA EN LA BASE DE DATOS
# Variables de conexión
$Server = "localhost" # Cambia esto si usas otro servidor
$Database = "bcr" # Nombre de la base de datos
$ConnectionString = "Server=$Server;Database=$Database;Integrated Security=True;"

# Crear conexión
$SqlConn = New-Object System.Data.SqlClient.SqlConnection($ConnectionString)

# Crear el comando SQL para crear la tabla
$CreateTableQuery = "CREATE TABLE asignaturas (nombre VARCHAR(50), horas DECIMAL(10, 2), profesor VARCHAR(50));"

# Abrir conexión
$SqlConn.Open()

# Crear el comando SQL
$SqlCmd = $SqlConn.CreateCommand()
$SqlCmd.CommandText = $CreateTableQuery

# Ejecutar el comando
$SqlCmd.ExecuteNonQuery()

# Mensaje de confirmación
Write-Host "Tabla 'asignaturas' creada exitosamente en la base de datos '$Database'."

# Cerrar conexión
$SqlConn.Close()





#Importamos datos a la tabla creada desde SSMS


#LEER DATOS DE TABLA Y MOSTRARLOS
# Definir la cadena de conexión
$connectionString = "Server=localhost;Database=bcr;Integrated Security=True;"

# Crear la conexión a la base de datos
$sqlConnection = New-Object System.Data.SqlClient.SqlConnection($connectionString)

# Crear la consulta SQL
$query = "SELECT * FROM asignaturas;"

# Crear el comando SQL
$sqlCommand = New-Object System.Data.SqlClient.SqlCommand($query, $sqlConnection)

# Abrir la conexión
$sqlConnection.Open()

# Ejecutar la consulta y leer los datos
$sqlReader = $sqlCommand.ExecuteReader()

# Mostrar los resultados en pantalla
while ($sqlReader.Read()) {
    $fila = ""
    for ($i = 0; $i -lt $sqlReader.FieldCount; $i++) {
        $fila += "$($sqlReader.GetValue($i)) "
    }
    Write-Host $fila.Trim()
}

# Cerrar el lector y la conexión
$sqlReader.Close()
$sqlConnection.Close()





#BORRAR BASE DE DATOS
#Borrar base de datos
#Creamos la instancia y la conexion
$connectionString = "Data Source=.;Initial Catalog=master;Integrated Security=True;"
$sqlConnection = New-Object Data.SqlClient.SqlConnection($connectionString)

#Creamos el comando dentro de la variable
$sqlCommand = New-Object Data.SqlClient.SqlCommand("DROP DATABASE bcr", $sqlConnection);

#Abrimos la conexión
$sqlConnection.Open();

#Ejecutamos el comando encerrado dentro de una pregunta. (Read-Host espera respuesta)
$confirm = Read-Host "Desea eliminar la base de datos? (S/N):"
if ($confirm -eq "S") {
    $sqlcommand.ExecuteNonQuery()
    Write-Host "Database bcr borrada."
}
#Cerramos la conexion
$sqlConnection.Close();
#!!!!NOS DA ERROR!!!!
#Excepción al llamar a "ExecuteNonQuery" con los argumentos "0": "Cannot drop database "bcr" because it is currently in use."
#En línea: 17 Carácter: 5
#+     $sqlcommand.ExecuteNonQuery()
#+     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#    + CategoryInfo          : NotSpecified: (:) [], MethodInvocationException
#    + FullyQualifiedErrorId : SqlException


#Añadimos cierre de conexiones
#Creamos la instancia y la conexion
$connectionString = "Data Source=.;Initial Catalog=master;Integrated Security=True;"
$sqlConnection = New-Object Data.SqlClient.SqlConnection($connectionString)
$bdname = "bcr"

#Creamos el comando dentro de la variable
$sqlCommand = New-Object Data.SqlClient.SqlCommand("DROP DATABASE $bdname", $sqlConnection);

#Abrimos la conexión
$sqlConnection.Open();

# Confirmación del usuario
$confirm = Read-Host "Desea eliminar la base de datos '$bdname'? (S/N):"
if ($confirm -eq "S") {
    try {
        # Comando para forzar el cierre de conexiones activas
        $sqlKillConnections = New-Object Data.SqlClient.SqlCommand("ALTER DATABASE $bdname SET SINGLE_USER WITH ROLLBACK IMMEDIATE;", $sqlConnection)
        $sqlKillConnections.ExecuteNonQuery()
        Write-Host "Conexiones activas cerradas en la base de datos '$bdname'."

        # Comando para eliminar la base de datos
        $sqlDropDB = New-Object Data.SqlClient.SqlCommand("DROP DATABASE $bdname;", $sqlConnection)
        $sqlDropDB.ExecuteNonQuery()
        Write-Host "Base de datos '$bdname' eliminada exitosamente." 
    } catch {
        Write-Host "Error: $($_.Exception.Message)" 
    }
}

#Cerramos la conexion
$sqlConnection.Close();





#Ejemplo de uso procedimiento almacenado con ado.net

#Creamos variables para servidor y base de datos
$Server = "localhost"
$Database = "AdventureWorks2019"

#Creamos la conexión
$SqlConn = New-Object System.Data.SqlClient.SqlConnection("Server = $Server; Database = $Database; Integrated Security = True;")

#Abrimos la conexión
$SqlConn.Open()


# creamos objeto comando sobre la conexión a la BD AdventureWorks2019
$cmd = $SqlConn.CreateCommand()

# Propiedad CommandType
$cmd.CommandType = 'StoredProcedure'

# Propiedad CommandText
$cmd.CommandText = 'dbo.uspGetBillOfMaterials'


# Parametro de entrada @StartProductID
$p1 = $cmd.Parameters.Add('@StartProductID',[int])
$p1.ParameterDirection.Input
$p1.Value = 749


# Parametro de entrada @CheckDate
$p2 = $cmd.Parameters.Add('@CheckDate',[DateTime])
$p2.ParameterDirection.Input
$p2.Value = '2010-05-26'


# Almacenamos los resultados en una variable
$results = $cmd.ExecuteReader()


# Crea un objeto DataTable
$dt = New-Object System.Data.DataTable
$dt.Load($results)


# Cerramos la conexión 
$SqlConn.Close()


# Almacenamos los resulstados e un documento csv (comma separated value) y lo abrimos con NOTEPAD
$dt | Export-Csv -LiteralPath "C:\transactsql\sproc.txt" -NoTypeInformation
notepad C:\transactsql\sproc.txt

.gkfyhgjk