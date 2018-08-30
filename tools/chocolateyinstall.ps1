
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/MutonUfoAI/pgina/releases/download/" + $env:ChocolateyPackageVersion + "/pGinaSetup-" + $env:ChocolateyPackageVersion + ".exe" # download url, HTTPS preferred

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'pGina Fork'
  checksum      = 'a36ca9364eccc75c1cd96d2e54e4ee91ea97984e7312cf33a640ac00d002169f'

  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

