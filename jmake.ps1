Write-Output ""
Write-Output "JMake, by draumaz (2021)"
Write-Output ""
Write-Host -NoNewLine "Creating classes... "
$build = "javac *.java"
$package = "jar cfe out.jar main *"
$clean = "del *.class"
Invoke-Expression $build
if ($LASTEXITCODE -eq 0)
{
	Write-Output "done."
}
else
{
	Write-Output "failed."
	exit
}
Write-Host -NoNewLine "Generating JAR... "
Invoke-Expression $package
if ($LASTEXITCODE -eq 0)
{
	Write-Output "done."
}
else
{
	Write-Output "failed."
	exit
}
Write-Host -NoNewLine "Cleaning up... "
Invoke-Expression $clean
if ($LASTEXITCODE -eq 0)
{
	Write-Output "done."
}
else
{
	Write-Output "failed."
	exit
}
Write-Output ""
