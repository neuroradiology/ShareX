if ($env:APPVEYOR_PULL_REQUEST_NUMBER -eq $null)
{
    if ($env:CONFIGURATION -eq "Release")
    {
        & "ShareX.Setup\bin\Release\ShareX.Setup.exe" -AppVeyorRelease
    }
    elseif ($env:CONFIGURATION -eq "Steam")
    {
        & "ShareX.Setup\bin\Steam\ShareX.Setup.exe" -AppVeyorSteamRelease
    }
    elseif ($env:CONFIGURATION -eq "WindowsStore")
    {
        & "ShareX.Setup\bin\WindowsStore\ShareX.Setup.exe" -AppVeyorWindowsStoreRelease
    }
}