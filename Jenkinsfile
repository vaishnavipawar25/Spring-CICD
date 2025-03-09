pipeline {
    agent any
    tools
    {
        maven 'Maven'
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/vaishnavipawar25/Spring-CICD.git']])
                bat 'mvn clean install'
            }
        }
         stage('Build Docker Image') {
            steps {
                script{
                    bat 'docker build -t vaishnavip25/spring-docker-demo .'
                }
                
            }
        }
         stage('Run Container') {
            steps {
                script{
                    bat 'docker run -d -p 8083:8080 vaishnavip25/spring-docker-demo'
                }
                
            }
        }
    }
}
