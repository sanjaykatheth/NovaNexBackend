pipeline {
    agent any

    stages {
        stage('install') {
            steps {
                sh 'sudo apt-get update'
                sh 'sudo apt-get install maven -y'
            }
        }
        stage('build') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}
