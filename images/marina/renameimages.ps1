$folder = "F:\Documents\Mayteck\mayteckcs.com\images\marina"
Set-Location $folder

# Get the list of target files
$files = Get-ChildItem -File | Where-Object {
    $_.Name -like "ChatGPT Image*" -or $_.Name -like "Generated Image*"
}

$count = 1
foreach ($file in $files) {
    $ext = $file.Extension
    $newName = "marina_vikings_{0:D2}{1}" -f $count, $ext
    Rename-Item -Path $file.FullName -NewName $newName
    $count++
}
