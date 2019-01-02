$packageName = 'nginx'
$url = 'https://nginx.org/download/nginx-1.14.0.zip'
$checksum = '5976D87F7BD22245DCC53646029D39336C83122982B3945CD313B14555967230'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"