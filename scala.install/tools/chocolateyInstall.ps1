$packageName = 'scala.install'
$installerType = 'msi'
$url = 'https://downloads.lightbend.com/scala/2.11.12/scala-2.11.12.msi'
$silentArgs = '/passive'

Install-ChocolateyPackage $packageName $installerType $silentArgs $url
