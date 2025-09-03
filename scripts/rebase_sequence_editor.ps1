param(
  [Parameter(Mandatory=$true, Position=0)][string]$TodoFile
)

$lines = Get-Content -Path $TodoFile -Encoding UTF8
if ($lines.Length -ge 2) {
  $lines[1] = $lines[1] -replace '^(pick)(\s+)', 'reword$2'
}
[System.IO.File]::WriteAllText($TodoFile, ($lines -join [Environment]::NewLine), [System.Text.UTF8Encoding]::new($false))

