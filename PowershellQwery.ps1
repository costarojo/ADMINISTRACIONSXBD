#VERSIONES
#consultamos versión
$PSVersionTable

#instalamos última versión con comando winget, no sustituye a powershell ISE
winget install --id Microsoft.PowerShell --source winget

#POLITICAS DE EJECUCION
#comprobamos la politica de ejecucuiones y la cambiamos a "sin restricciones" para evitar errores
Get-ExecutionPolicy

Set-ExecutionPolicy unrestricted

Get-ExecutionPolicy

#AYUDAS
Get-Help *SQL* -Examples

Get-Help Get-ExecutionPolicy

#ALIAS
Get-Alias

Set-Alias help Get-Help 

help *SQL*

Get-Help *SQL* -ShowWindow

#TUBERIAS (|)
Get-Help *SQL* -Examples | out-file c:/helpsql.txt

notepad c:/hlpsql.txt

Get-Process | Out-GridView

#PowerShell & SQL Server
#Instalar modulo

Install-Module -Name SqlServer

#Opcion que sobreescribe los parámetros que ya existiesen
Install-Module -Name SqlServer -AllowClobber

Get-Module SqlServer 

Get-Module -ListAvailable SqlServer

#Comprobamos los cmdlet que tenemos para SQL Serverr

Get-command -Module SqlServer -CommandType Cmdlet | Out-GridView

#Consultar servicios
Get-Service | where-Object{$_.name -like '*sql*'} | Format-List

Get-Service | Where-Object {$_.Name -like '*network*'} | Format-List

#Iniciar servicio
Start-Service SQLSERVERAGENT

#detener servicio
Stop-Service SQLSERVERAGENT

#Forzar la detención de un servicio
Stop-Service SQLSERVERAGENT -Force

#Ver un servicio
Get-Service SQLSERVERAGENT


#SENTENCIAS SQL

#Invoke-Sqlcmd

#Cuenta el nº de filas que hay en la tabla cliente de la BD autoescuela
Invoke-Sqlcmd -Query "SELECT COUNT(*) AS Count FROM cliente" -ConnectionString "Data Source=.;Initial Catalog=autoescuela;Integrated Security=True;ApplicationIntent=ReadOnly"

Invoke-Sqlcmd -Query "SELECT COUNT(*) AS Count FROM cliente" -ConnectionString "Data Source=.;Initial Catalog=autoescuela;Integrated Security=True;TrustServerCertificate=True;ApplicationIntent=ReadOnly"

#Devuelveme la lista de clientes en un archivo .txt y en formato tabla
Invoke-Sqlcmd -Query "SELECT * FROM cliente" -ConnectionString "Data Source=.;Initial Catalog=autoescuela;Integrated Security=True;TrustServerCertificate=True;ApplicationIntent=ReadOnly" | Format-Table -AutoSize | Out-File -FilePath "C:\transactsql\backups\clientes.txt"

#BACKUPS

#Backup usando Invoke
Invoke-Sqlcmd -Query "BACKUP DATABASE [autoescuela] TO DISK = 'C:\transactsql\backups\autoescuela.bak' WITH FORMAT" -ConnectionString "Server=localhost;Integrated Security=True;TrustServerCertificate=True"

#Backup usando Backup-SqlDatabase
Backup-SqlDatabase -ServerInstance "localhost" -Database "autoescuela" -BackupFile "C:\transactsql\backups\autoescuela.bak" 

#Backup sobreescritura
Backup-SqlDatabase -ServerInstance "localhost" -Database "autoescuela" -BackupFile "C:\transactsql\backups\autoescuela.bak" -Initialize


#Backup completo con fecha
$date = Get-Date -Format yyyyMMddHHmmss
Backup-SqlDatabase -ServerInstance "localhost" -Database "autoescuela" -BackupFile "C:\transactsql\backups\autoescuela($date).bak"


#restore
#Borramos la base de datos
Invoke-Sqlcmd -Serverinstance localhost -TrustServerCertificate -Query "Drop database autoescuela;"

#Restauramos la base de datos
Restore-Sqldatabase -Serverinstance "localhost" -Database autoescuela -Backupfile "C:\transactsql\backups\autoescuela(20241114002017).bak" -replacedatabase






