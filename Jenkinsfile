pipeline {
    agent any

    stages {
        stage('install') {
            steps {
                sh 'apt-get update'
                sh 'apt-get install maven -y'
            }
        }
        stage('build') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}
