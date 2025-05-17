# Изменить параметры панели задач
# Требует запуска от имени администратора

# Скрыть поиск на панели задач (0 - скрыть, 1 - показать)
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Value 0 -Force

# Отключить представление задач (0 - отключить, 1 - включить)
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Value 0 -Force

# Отключить мини-приложения (Widgets) (0 - отключить, 1 - включить)
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarDa" -Value 0 -Force
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarMn" -Value 0 -Force

# Перезапустить проводник для применения изменений
Stop-Process -Name "explorer" -Force
Start-Process "explorer.exe"