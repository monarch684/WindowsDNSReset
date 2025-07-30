# Reset DNS settings to dynamic for all network adapters
Write-Host "Resetting DNS settings to dynamic for all network adapters..." -ForegroundColor Yellow

# Get all network adapters that are currently connected
$connectedAdapters = Get-NetAdapter | Where-Object { $_.Status -eq "Up" }

if ($connectedAdapters.Count -eq 0) {
    Write-Host "No connected network adapters found." -ForegroundColor Red
    exit
}

foreach ($adapter in $connectedAdapters) {
    Write-Host "Resetting DNS for interface: $($adapter.Name)" -ForegroundColor Cyan
    
    try {
        # Reset DNS to automatic (DHCP) for both IPv4 and IPv6
        Set-DnsClientServerAddress -InterfaceAlias $adapter.Name -ResetServerAddresses
        
        Write-Host "Successfully reset DNS for: $($adapter.Name)" -ForegroundColor Green
    }
    catch {
        Write-Host "Failed to reset DNS for: $($adapter.Name) - Error: $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host "`nDNS reset operation completed." -ForegroundColor Yellow
