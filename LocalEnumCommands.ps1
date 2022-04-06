# Listar usuarios locales
Get-LocalUser

# Listar grupos locales
Get-LocalGroup

# User to SID
$Name='NOMBRE_USER_A_RESOLVER'
(New-Object System.Security.Principal.NTAccount($Name)).Translate([System.Security.Principal.SecurityIdentifier]).value

# SID to user
$SID= 'SID_A_RESOLVER'
(New-Object System.Security.Principal.SecurityIdentifier($SID)).Translate([System.Security.Principal.NTAccount]).value

# Direccionamiento IP
Get-NetIPAddress

# Puertos en escucha
Get-NetTCPConnection -State Listen

#Parches instalados
Get-HotFix

# Procesos en ejecucion
Get-Process

# Tareas programadas
Get-ScheduledTask

# Buscar un string dentro del contenido de archivos
Get-ChildItem -Recurse | Select-String "<TEXTO_A_BUSCAR>" -List | Select Path

# El powershell history puede contender usuarios y credenciales, normalmente see ubica en>
cat %userprofile%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt
