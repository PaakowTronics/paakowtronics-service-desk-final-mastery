$ErrorActionPreference = 'Stop'

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$Bundle = Join-Path $ScriptDir 'starter-remote.bundle'
$Remote = Join-Path $ScriptDir 'starter-remote.git'
$Target = Join-Path $ScriptDir 'assessment-repository'

if (-not (Test-Path $Bundle -PathType Leaf)) {
    Write-Error 'starter-remote.bundle was not found.'
}

if (Test-Path $Target) {
    Write-Error 'assessment-repository already exists. Use .\reset.ps1 if you want a clean copy.'
}

if (-not (Test-Path $Remote)) {
    Write-Host 'Preparing the assessment Git repository from starter-remote.bundle...'
    git clone --bare $Bundle $Remote
}

git clone $Remote $Target
Set-Location $Target

git config user.name 'Git Essentials Learner'
git config user.email 'learner@training.invalid'

Write-Host ''
Write-Host 'Assessment repository created:'
Write-Host "  $Target"
Write-Host ''
Write-Host 'Starting branch:'
git branch --show-current
Write-Host ''
Write-Host 'Remote:'
git remote -v
