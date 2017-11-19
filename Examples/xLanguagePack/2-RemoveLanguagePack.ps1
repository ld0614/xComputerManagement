<#
    .EXAMPLE
    This configuration removes German language pack from the serer
#>
Configuration Example
{
    
    Import-DscResource -Module xComputerManagement
    
    xLanguagePack removeDE-DE
    {
        LanguagePackName = "de-DE"
        Ensure = "Absent"
    }
}
