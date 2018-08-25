Configuration azure_aws
{
    Import-DscResource -ModuleName PsDesiredStateConfiguration
    Import-DscResource -ModuleName cChoco
    Node localhost
    {
    #installation of azure cli
    cChocoPackageInstaller azure-cli
    {
        Name = "azure-cli"
        Ensure = "present"
    }
    #installation of aws cli
    cChocoPackageInstaller aws-cli
    {
        Name = "awscli"
        Ensure = "present"
    }
}
}
azure_aws