############################################################################
<#
Get random strings
#>
Function Get-RandomAlphanumericString {
	
	[CmdletBinding()]
	Param (
        [int] $length = 8
	)

	Begin{
	}

	Process{
        Write-Output ( -join ((0x30..0x39) + ( 0x41..0x5A) + ( 0x61..0x7A) | Get-Random -Count $length  | % {[char]$_}) )
	}	
}

<#
Loop dns query until 150
#>

$i=1
Do {
    $i
    $i++
    $randstr = Get-RandomAlphanumericString -length 64
    $url = ".ya.ru"
    $randurl = $randstr + $url
    Resolve-DnsName -Name $randurl -Type TXT 
    Write-Host "Queried $randurl"
    }
Until ($i -gt 150)

############################################################################
