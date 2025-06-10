$folderPath = "C:\Program Files\SCMATE_RXiClient"
$processes = Get-WmiObject Win32_Process | Where-Object { $_.ExecutablePath -like "$folderPath*" }
foreach ($process in $processes) {
    Stop-Process -Id $process.ProcessId -Force
}