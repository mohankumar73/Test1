$FilePath = 'C:\Users\mohan\Downloads\Test.targets'
[xml]$XmlDocument = Get-Content $FilePath

$versionPrint = $XmlDocument.Project.Target.CopyPluginUtilDependencies

Write-Output $versionPrint


$DMPkgVer = $versionPrint.DomainMetaPackageVersion

$PluginVer = $versionPrint.PluginUtilVersion


#Write-Host "##vso[task.setvariable DomainMetaPackageVersion=$DMPkgVer]secondValue"