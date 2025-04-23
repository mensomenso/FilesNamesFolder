# Ruta de la carpeta a escanear
$folderPath = "C:\Ruta\A\Tu\Carpeta"

# Ruta del archivo Excel de salida
$outputExcel = "C:\Ruta\A\Tu\Salida\ListadoDeArchivos.xlsx"

# Obtener lista de archivos (no carpetas)
$fileList = Get-ChildItem -Path $folderPath -File | Select-Object Name, FullName, Length, LastWriteTime

# Exportar a Excel
$fileList | Export-Excel -Path $outputExcel -AutoSize -Title "Listado de Archivos" -WorksheetName "Archivos"
