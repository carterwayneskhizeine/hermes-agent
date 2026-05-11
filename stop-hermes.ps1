# stop-hermes.ps1 — 关闭 start-hermes.ps1 启动的所有 psmux session
$projectDir = "D:\Code\goldie-fork\hermes-agent"

@("default-gw","default-web","turing-gw","turing-web","belbin-gw","belbin-web","mem-gw","mem-web","goldie-gw","goldie-web") |
  ForEach-Object { psmux kill-session -t $_ 2>$null }

Write-Host "All Hermes psmux sessions killed."
