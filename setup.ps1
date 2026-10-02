$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$Bundle = Join-Path $ScriptDir "starter-remote.bundle"
$Remote = Join-Path $ScriptDir "starter-remote.git"
$Repo = Join-Path $ScriptDir "assessment-repository"

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw "Git is required but was not found in PATH."
}
if (-not (Test-Path $Bundle)) {
    throw "Missing starter-remote.bundle"
}
if (Test-Path $Repo) {
    throw "assessment-repository already exists. Use .\reset.ps1 for a fresh assessment."
}

if (Test-Path $Remote) {
    Remove-Item -Recurse -Force $Remote
}

Write-Host "Creating clean assessment remote..."
git -c init.defaultBranch=main clone --bare $Bundle $Remote

Write-Host "Creating learner repository..."
git clone $Remote $Repo

$UserName = git -C $Repo config user.name 2>$null
if ([string]::IsNullOrWhiteSpace($UserName)) { git -C $Repo config user.name "Assessment Learner" }
$UserEmail = git -C $Repo config user.email 2>$null
if ([string]::IsNullOrWhiteSpace($UserEmail)) { git -C $Repo config user.email "learner@example.invalid" }

Write-Host ""
Write-Host "Assessment ready: $Repo"
Write-Host "The learner starts on local main with a clean working tree."
