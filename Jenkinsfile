pipeline {
  agent any 
     stages{
         stage ('install') {
              sh 'sudo apt-get update'
              sh 'sudo apt install maven -y'
               }
        stage ('build')
           {
            sh  'mvn clean install' 
           }
     }
 }
