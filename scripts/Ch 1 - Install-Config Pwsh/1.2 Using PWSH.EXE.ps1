# 1.2 Using the PowerShell 7 Console
#
# Run on SRV1 after you install PowerShell
# Run in elevated console

# 1. Run PowerShell 7 From the Command Line

no output


# 2. View the PowerShell Version
$PSVersionTable

# 3. View the $Host variable
$Host

# 4. Look at the PowerShell process
Get-Process -Id $PID| 
  Format-Custom MainModule -Depth 1

# 5. Look at resource usage statistics
Get-Process -Id $PID | 
  Format-List CPU,*Memory* 

# 6. Update PowerShell Help
$Before = Get-Help -Name about_*
Update-Help -Force | Out-Null
$After = Get-Help -Name about_*
$Delta = $After.Count - $Before.Count
"{0} Conceptual Help Files Added" -f $Delta

# 7. How many commands are available?
Get-Command | 
  Group-Object -Property CommandType