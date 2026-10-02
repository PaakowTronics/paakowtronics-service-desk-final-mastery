param(
    [string]$Repo = ""
)
$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
if ([string]::IsNullOrWhiteSpace($Repo)) { $Repo = Join-Path $ScriptDir "assessment-repository" }

if (-not (Test-Path (Join-Path $Repo ".git"))) { throw "Usage: .\prepare-recovery-test.ps1 [path-to-assessment-repository]" }

$Status = git -C $Repo status --porcelain
if (-not [string]::IsNullOrWhiteSpace(($Status -join "`n"))) { throw "Learner repository is not clean. Do not introduce the recovery incident until it is clean." }

$Branch = git -C $Repo branch --show-current
if ([string]::IsNullOrWhiteSpace($Branch)) { throw "Could not determine the current branch." }

$File = Join-Path $Repo "docs/incident-response.md"
$Content = Get-Content $File -Raw
if ($Content -match "Temporary escalation note") { throw "Recovery test content already exists. Refusing to run twice." }

Add-Content -Path $File -Value "`r`n## Temporary escalation note`r`n`r`nDuring an escalation, record the person who accepted the escalation and the next verification point.`r`n"
git -C $Repo add docs/incident-response.md
git -C $Repo commit -m "docs: add temporary escalation note" | Out-Null
$RecoveryCommit = git -C $Repo rev-parse HEAD
git -C $Repo reset --hard HEAD~1 | Out-Null

Write-Host "Recovery incident prepared on branch: $Branch"
Write-Host "The useful commit is no longer at the branch tip."
Write-Host "INSTRUCTOR ONLY — recovery commit: $RecoveryCommit"
Write-Host "Ask the learner to investigate and recover the missing work."
