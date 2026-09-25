$ErrorActionPreference = 'Stop'

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$Bundle = Join-Path $ScriptDir 'starter-remote.bundle'
$Remote = Join-Path $ScriptDir 'starter-remote.git'
$Target = Join-Path $ScriptDir 'assessment-repository'

if (-not (Test-Path $Bundle -PathType Leaf)) {
    Write-Error 'starter-remote.bundle was not found.'
}

if (Test-Path $Target) {
    Write-Host 'This will permanently delete:'
    Write-Host "  $Target"
    $Answer = Read-Host 'Type RESET to continue'

    if ($Answer -ne 'RESET') {
        Write-Host 'Reset cancelled.'
        exit 1
    }

    Remove-Item -LiteralPath $Target -Recurse -Force
}

if (Test-Path $Remote) {
    Remove-Item -LiteralPath $Remote -Recurse -Force
}

Write-Host 'Preparing the assessment Git repository from starter-remote.bundle...'
git clone --bare $Bundle $Remote

git clone $Remote $Target
Set-Location $Target

git config user.name 'Git Essentials Learner'
git config user.email 'learner@training.invalid'

Write-Host 'Fresh assessment repository created.'
