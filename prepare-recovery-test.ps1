$ErrorActionPreference = 'Stop'
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$Target = if ($args.Count -gt 0) { $args[0] } else { Join-Path $ScriptDir 'assessment-repository' }

if (-not (Test-Path (Join-Path $Target '.git'))) {
    Write-Error 'Usage: .\prepare-recovery-test.ps1 [path-to-learner-repository]'
}

Set-Location $Target
$Branch = (git branch --show-current).Trim()
if ([string]::IsNullOrWhiteSpace($Branch)) {
    Write-Error 'The learner repository is not on a normal branch. Stop and inspect it first.'
}

$Status = git status --porcelain
if ($Status) {
    Write-Error 'The learner has uncommitted changes. Do not prepare the recovery test until the working tree is clean.'
}

Add-Content -Path 'docs/incident-response.md' -Value @'

## Temporary escalation note

For a confirmed P1 incident, the Service Desk should identify an incident owner immediately and record the first escalation action.
'@

git add docs/incident-response.md
git commit -m 'docs: add temporary escalation note' | Out-Null
$TempCommit = (git rev-parse HEAD).Trim()
git reset --hard HEAD~1 | Out-Null

Write-Host "Recovery test prepared for branch: $Branch"
Write-Host 'The useful commit was deliberately removed from the branch tip.'
Write-Host 'The commit id is intentionally not shown to the learner.'
Write-Host "Instructor reference: $TempCommit"
