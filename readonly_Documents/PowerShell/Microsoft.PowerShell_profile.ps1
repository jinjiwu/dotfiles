# [init] tools initialization
starship init powershell | Out-String | Invoke-Expression
zoxide init powershell --cmd cd | Out-String | Invoke-Expression
# [init.psfzf] replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
# [init.uv.completion]
(& uv generate-shell-completion powershell) | Out-String | Invoke-Expression
(& uvx --generate-shell-completion powershell) | Out-String | Invoke-Expression

# [winget]
Import-Module -Name Microsoft.WinGet.CommandNotFound

# [functions]
# [functions.eza]
function ls { eza --icons --git $args }
function ll { eza -l --icons --git --time-style relative $args }
# [functions.yazi] `q` quit to current directory, `Q` quit to start directory
function y {
    $tmp = (New-TemporaryFile).FullName
    yazi.exe $args --cwd-file="$tmp"
    $cwd = Get-Content -Path $tmp -Encoding UTF8
    if ($cwd -ne $PWD.Path -and (Test-Path -LiteralPath $cwd -PathType Container)) {
        Set-Location -LiteralPath (Resolve-Path -LiteralPath $cwd).Path
    }
    Remove-Item -Path $tmp
}
