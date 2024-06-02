# oh-my-posh setup
& ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\negligible.omp.json" --print) -join "`n"))
# negligible.omp.json
# cobalt2.omp.json
# multiverse-neon.omp.json

# Alias
function workdir { Set-Location -Path $HOME\Documents\projects\lwb360-drafting\word\add-in }

function docs { Set-Location -Path $HOME\Documents }

function dtop { Set-Location -Path $HOME\Desktop }



# Enhanced PowerShell Experience
Set-PSReadLineOption -Colors @{
    Command = 'Yellow'
    Parameter = 'Green'
    String = 'DarkCyan'
}

# Linux style functions

function touch($file) { "" | Out-File $file -Encoding ASCII }

function reload-profile {
    & $profile
}

function grep($regex, $dir) {
    if ( $dir ) {
        Get-ChildItem $dir | select-string $regex
        return
    }
    $input | select-string $regex
}

function which($name) {
    Get-Command $name | Select-Object -ExpandProperty Definition
}