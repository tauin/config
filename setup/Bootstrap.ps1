function DetermineSystem() {
    if ($IsWindows) {
        Write-Output "--WINDOWS DETECTED--"
        $ExecutionValue = Get-ExecutionPolicy
        if (-not ($ExecutionValue -eq "RemoteSigned" -or $ExecutionValue -eq "AllSigned")) {
            Write-Output "Execution Policy is not AllSigned or RemoteSigned, Please run`r`nSet-ExecutionPolicy AllSigned"
            Exit
        }
        Get-Command winget
    }
    elseif ($IsLinux) {
        Write-Output "--LINUX DETECTED--"
        $DistroName = DetermineLinDistro
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    }
    elseif ($IsMacOS) {
        Write-Output "MacOS is not supported at this time"
        Exit
    }
}

function DetermineLinDistro {
    $Distro = Get-Content /etc/os-release | Select-String -Pattern "^ID"
    return $Distro
}

function Convert-Json-To-Packages {
    param (
        $json
    )

}

function Main {
    param (
        $json
    )
    DetermineSystem
}

Main -json $args[0]
