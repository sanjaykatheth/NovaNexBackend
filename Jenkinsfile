pipeline {
  agent any {
     stages{
         stage ('install') {
              apt-get update 
              apt install maven -y
               }
        stage ('build')
           {
             mvn clean install 
           }
       } 
    }
 }
