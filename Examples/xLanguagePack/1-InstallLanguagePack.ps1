<#
    .EXAMPLE
    This configuration installs the Engligh and German
    language packs on the serer
    Note: this requires the language cab files to be 
    available on a fileserver
#>
Configuration Example
{
    
    Import-DscResource -Module xComputerManagement
    
    xLanguagePack en-GB
    {
        LanguagePackName = "en-GB"
        LanguagePackLocation = "\\fileserver1\LanguagePacks\"
    }

    xLanguagePack de-DE
    {
        LanguagePackName = "de-DE"
        LanguagePackLocation = "\\fileserver1\LanguagePacks\de-DE.cab"
    }
}
