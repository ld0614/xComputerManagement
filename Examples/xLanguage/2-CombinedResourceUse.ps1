<#
    .EXAMPLE
    This configuration installs the en-GB language pack from
    an existing fileserver and then configures the language settings
    Note: this requires the language cab files to be available on a fileserver
#>
Configuration Example
{

    Import-DscResource -Module xComputerManagement

    xLanguagePack InstallLanguagePack
    {
        LanguagePackName = "en-GB"
        LanguagePackLocation = "\\fileserver1\LanguagePacks\"
    }

    xLanguage ConfigureLanguage {
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
        Dependson = "[LanguagePack]InstallLanguagePack"
    }

    LocalConfigurationManager
    {
        RebootNodeIfNeeded = $true
        ActionAfterReboot = 'ContinueConfiguration'
        ConfigurationMode = 'ApplyAndAutoCorrect'
    }
}
