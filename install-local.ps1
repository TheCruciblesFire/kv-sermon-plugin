$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourcePlugin = Join-Path $repoRoot 'plugins\kv-sermon-plugin'
$destPlugin = Join-Path $HOME '.codex\plugins\kv-sermon-plugin'
$marketDir = Join-Path $HOME '.agents\plugins'
$marketFile = Join-Path $marketDir 'marketplace.json'
$timestamp = Get-Date -Format 'yyyyMMdd-HHmmss'

if (-not (Test-Path $sourcePlugin)) {
  throw "Plugin source not found: $sourcePlugin"
}

New-Item -ItemType Directory -Force -Path (Split-Path -Parent $destPlugin) | Out-Null
if (Test-Path $destPlugin) {
  $backup = "$destPlugin.bak-$timestamp"
  Copy-Item -Recurse -Force $destPlugin $backup
  Remove-Item -Recurse -Force $destPlugin
  Write-Host "Backed up existing plugin to $backup"
}
Copy-Item -Recurse -Force $sourcePlugin $destPlugin

New-Item -ItemType Directory -Force -Path $marketDir | Out-Null
if (Test-Path $marketFile) {
  Copy-Item -Force $marketFile "$marketFile.bak-$timestamp"
  $market = Get-Content -Raw $marketFile | ConvertFrom-Json
} else {
  $market = [pscustomobject]@{
    name = 'personal-plugins'
    interface = [pscustomobject]@{ displayName = 'Personal Plugins' }
    plugins = @()
  }
}

if (-not $market.PSObject.Properties['plugins']) {
  $market | Add-Member -NotePropertyName plugins -NotePropertyValue @()
}

$entry = [pscustomobject]@{
  name = 'kv-sermon-plugin'
  source = [pscustomobject]@{
    source = 'local'
    path = './.codex/plugins/kv-sermon-plugin'
  }
  policy = [pscustomobject]@{
    installation = 'AVAILABLE'
    authentication = 'ON_INSTALL'
  }
  category = 'Productivity'
}

$kept = @($market.plugins | Where-Object { $_.name -ne 'kv-sermon-plugin' })
$market.plugins = @($kept + $entry)
$market | ConvertTo-Json -Depth 10 | Set-Content -Encoding utf8 $marketFile

Write-Host "Installed KV Sermon Plugin Stage 5 regression package to: $destPlugin"
Write-Host "Updated personal marketplace: $marketFile"
Write-Host "Restart the ChatGPT Desktop app, then open Plugins and install KV Sermon Plugin."
