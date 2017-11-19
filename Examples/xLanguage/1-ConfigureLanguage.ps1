<#
    .EXAMPLE
    This configuration sets the machine language and all related settings
    to en-GB. 
    Note: this requires the en-GB Language Pack to already be installed
#>
Configuration Example
{
    Import-DscResource -Module xComputerManagement

    xLanguage ConfigureLanguage
    {
        IsSingleInstance = "Yes"
        LocationID = 242
        MUILanguage = "en-GB"
        MUIFallbackLanguage = "en-US"
        SystemLocale = "en-GB"
        AddInputLanguages = @("0809:00000809")
        RemoveInputLanguages = @("0409:00000409")
        UserLocale = "en-GB"
        CopySystem = $true
        CopyNewUser = $true
    }
}
