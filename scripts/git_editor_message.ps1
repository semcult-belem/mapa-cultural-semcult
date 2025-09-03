param(
  [Parameter(Mandatory=$true, Position=0)][string]$MessageFile
)

$msg = 'feat(branding): update site title to "Mapa Cultural de Belém"' + [Environment]::NewLine
[System.IO.File]::WriteAllText($MessageFile, $msg, [System.Text.UTF8Encoding]::new($false))
