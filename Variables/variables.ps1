# $date = Get-Date
# Start-Sleep -seconds 10
# (get-date) -gt $date.AddSeconds(5)

$processes = get-process
start-sleep -seconds 10
$processes | Where-Object { $_.name -eq "VTDecoderXPCSer"}

$processes | Where-Object { $_.name -eq "WiFiAgent" }