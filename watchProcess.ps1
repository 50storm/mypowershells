function Watch-Process {
  param
  (
    [string]$ProcessName,
    [int]$Span,
	[string]$StartComannd
	
  )
  while ($true) {
    $process = Get-Process -Name $ProcessName -ErrorAction SilentlyContinue
    if (!$process) { 
		Write-Host "not exist $ProcessName"; 
		Start-Process $StartComannd;
		break ;
	}
    $process
    Start-Sleep -Second $Span
  }
}

# Watch-Process -ProcessName wuauclt -Span 60 -StartComannd C:\Users\h-igarashi\Desktop\test.bat