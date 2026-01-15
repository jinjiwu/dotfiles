starship init powershell | Out-String | Invoke-Expression
zoxide init powershell --cmd cd | Out-String | Invoke-Expression
# uv shell completion
(& uv generate-shell-completion powershell) | Out-String | Invoke-Expression
(& uvx --generate-shell-completion powershell) | Out-String | Invoke-Expression
# eza
function ls { eza --icons --git $args }
function ll { eza -l --icons --git --time-style relative $args }

# replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

Import-Module -Name Microsoft.WinGet.CommandNotFound
