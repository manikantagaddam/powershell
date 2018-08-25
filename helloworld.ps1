Configuration helloworld{
  Import-DscResource -ModuleName PsDesiredStateConfiguration
  Import-DscResource -ModuleName cChoco
   Node localhost
    {
      File myfile{
             DestinationPath = "D:\mani5a3.txt"
             Ensure= " present"
             Contents= "this is test file for powershell"
           }
 }
 }
helloworld