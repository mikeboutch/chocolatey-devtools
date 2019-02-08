$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'Salt-Minion-2018.3.3-Py3-x86-Setup.exe'
$fileLocation64 = Join-Path $toolsDir 'Salt-Minion-2018.3.3-Py3-AMD64-Setup.exe'
if (Get-ProcessorBits 64) {
$forceX86 = $env:chocolateyForceX86
  if ($forceX86 -eq 'true') {
    Write-Debug "User specified '-x86' so forcing 32-bit"
  } else {
    $fileLocation = $fileLocation64
  }
}

#Based on Nsis
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'saltminion.builder*'
  file          = $fileLocation
  fileType      = 'exe'
  silentArgs    = "/S"
  validExitCodes= @(0)
  url           = ""
  checksum      = '33DBC7E1AC37E5AED3517AD48080F980CAE36E95DDFC04DF7D7AB8737DEB1E62'
  checksumType  = 'sha256'
  url64bit      = ""
  checksum64    = 'B1D251196BF49266C52853925B8DBD6580CBBAC9E1A49BBFDC6DE97E17F94767'
  checksumType64= 'sha256'
  destination   = $toolsDir
  #installDir   = "" # passed when you want to override install directory - requires licensed editions 1.9.0+
}

Install-ChocolateyInstallPackage @packageArgs

