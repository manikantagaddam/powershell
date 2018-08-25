Configuration devops_softwares
{
    Import-DscResource -ModuleName PsDesiredStateConfiguration
    Import-DscResource -ModuleName cChoco
Node localhost {
    #installation of git
        cChocoPackageInstaller git
        {
        Name = "git"
        Ensure = "present"
        }
    #installation of visualstudiocode
        cChocoPackageInstaller visualstudiocode
        {
        Name = "visualstudiocode"
        Ensure = "present"
    }
    #installation of vagrant
    cChocoPackageInstaller vagrant
    {
        Name = "vagrant"
        Ensure = "present"
        DependsOn= "[cChocoPackageInstaller]virtualbox"
    }
    #installation of oracle virtual box
    cChocoPackageInstaller virtualbox
    {
        Name = "virtualbox"
        Ensure = "present"
    }
    #installation of jenkins
    cChocoPackageInstaller jenkins
    {
        Name = "jenkins"
        Ensure = "present"
        DependsOn="[cChocoPackageInstaller]java"
    }
    #installation of maven
    cChocoPackageInstaller maven
    {
        Name = "maven"
        Ensure = "present"
        DependsOn="[cChocoPackageInstaller]java"
    }
    #installation of tomcat
    cChocoPackageInstaller tomcat
    {
        Name = "tomcat"
        Ensure = "present"
        DependsOn="[cChocoPackageInstaller]java"
    }
    #installation of artifactory
   cChocoPackageInstaller artifacory
   {
        Name = "artifacory"
        Ensure = "present"
        DependsOn="[cChocoPackageInstaller]java"
   }
   #installation of sonar qube
   cChocoPackageInstaller sonarqube
   {
        Name = "sonarcube-scanner"
        Ensure = "present"
        DependsOn="[cChocoPackageInstaller]java"
   }
   #installation of java
   cChocoPackageInstaller java
   {
        Name = "jdk8"
        Ensure = "present"
   }
   #installation of Chef
   cChocoPackageInstaller chefdk
   {
        Name = "chefdk"
        Ensure = "present"
   }
   WindowsFeature hyperv
{
    Ensure = "Present"
    Name = "hyper-v"
}
cChocoPackageInstaller docker
   {
        Name = "docker"
        Ensure = "present"
   }
}
}
devops_softwares