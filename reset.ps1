$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$Repo = Join-Path $ScriptDir "assessment-repository"
$Remote = Join-Path $ScriptDir "starter-remote.git"

if (Test-Path $Repo) { Remove-Item -Recurse -Force $Repo }
if (Test-Path $Remote) { Remove-Item -Recurse -Force $Remote }

& (Join-Path $ScriptDir "setup.ps1")
