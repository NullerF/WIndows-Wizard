
$RegPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"
$IconCLSID = "{20D04FE0-3AEA-1069-A2D8-08002B30309D}"  # Это CLSID для "Этот компьютер"

# Создаем ключ, если его нет
if (-not (Test-Path $RegPath)) {
    New-Item -Path $RegPath -Force | Out-Null
}

# Устанавливаем значение 0 (значок виден)
Set-ItemProperty -Path $RegPath -Name $IconCLSID -Value 0 -Type DWord -Force

# Обновляем рабочий стол (перезапускаем проводник)
Stop-Process -Name explorer -Force

Write-Host "Значок 'Этот компьютер' добавлен на рабочий стол (системный, не ярлык)."