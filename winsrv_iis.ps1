Install-WindowsFeature -name Web-Server -IncludeManagementTools

$vhost = "novo365.ch"
New-Item -Path "$env:systemdrive\inetpub" -Name "$vhost" -ItemType "directory"
New-WebSite -Name $vhost -Port 80 -HostHeader $vhost -PhysicalPath "$env:systemdrive\inetpub\$vhost"