param($RepoPath)

if (!$RepoPath) {
  Write-Output "Missing RepoPath argument."
  exit 1
}

if (! (Get-Command ag -ErrorAction SilentlyContinue)) {
  Write-Output "Note: these hooks require the silver searcher to run."
  Write-Output "https://github.com/ggreer/the_silver_searcher"
}

Remove-Item -Recurse -Force "$RepoPath\.git\hooks" -ErrorAction SilentlyContinue
New-Item -ItemType Junction -Value "$PSScriptRoot\src" -Path "$RepoPath\.git\hooks"
