# DNS Reset Script

A PowerShell script that automatically resets DNS settings to dynamic (DHCP) configuration for all connected network adapters on Windows systems.

## Features

- **Automatic Detection**: Finds all active network adapters
- **Bulk Reset**: Resets DNS for all connected interfaces at once
- **Error Handling**: Robust error handling with detailed feedback
- **Color-Coded Output**: Clear visual feedback for success/failure status
- **IPv4/IPv6 Support**: Handles both IPv4 and IPv6 DNS settings

## Prerequisites

- Windows 10/11 or Windows Server
- PowerShell 5.1 or later
- Administrator privileges

## Installation

1. Download the script:
   ```bash
   git clone https://github.com/monarch684/WindowsDNSReset
   ```

2. Navigate to the script directory:
   ```bash
   cd dns-reset-script
   ```

## Usage

1. **Run PowerShell as Administrator** (required for network changes)

2. Execute the script:
   ```powershell
   .\Reset-DNS.ps1
   ```

3. The script will automatically:
   - Scan for connected network adapters
   - Reset DNS settings to automatic (DHCP) for each adapter
   - Display status for each operation

## Example Output

```
Resetting DNS settings to dynamic for all network adapters...
Resetting DNS for interface: Ethernet
Successfully reset DNS for: Ethernet
Resetting DNS for interface: Wi-Fi
Successfully reset DNS for: Wi-Fi

DNS reset operation completed.
```

## Use Cases

- **DNS Troubleshooting**: Reset to default DNS when experiencing connectivity issues
- **Configuration Cleanup**: Remove custom DNS servers (Google DNS, Cloudflare, etc.)
- **Network Migration**: Prepare systems to use new network's DNS automatically
- **System Maintenance**: Clean up network configuration after testing

## Important Notes

- **Administrator Rights Required**: The script must be run with elevated privileges
- **Network Interruption**: Brief network interruption may occur during DNS reset
- **Backup Settings**: Consider noting current DNS settings before running if you need to restore them

## Troubleshooting

**"Execution Policy" Error:**
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

**"Access Denied" Error:**
- Ensure PowerShell is running as Administrator
- Check that your user account has network configuration permissions

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/improvement`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/improvement`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

If you encounter any issues or have questions:
- Open an [issue](https://github.com/monarch684/WindowsDNSReset/issues)
- Check existing issues for solutions
- Provide system details and error messages when reporting bugs

## Acknowledgments

- Built as a PowerShell modernization of traditional batch DNS reset scripts
- Inspired by network troubleshooting best practices
