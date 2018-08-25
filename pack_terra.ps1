Configuration pack_terra
{
    Import-DscResource -ModuleName PsDesiredStateConfiguration
    Import-DscResource -ModuleName cChoco
    Node localhost
    {
        #installation of packer
        cChocoPackageInstaller packer
        {
        Name = "packer"
        Ensure = "present"
        }
        #installation of terraform
        cChocoPackageInstaller terraform
        {
        Name = "terraform"
        Ensure = "present"
        }
}
}

pack_terra