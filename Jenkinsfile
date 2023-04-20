pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -p 8080:90 test_d'
            }
        }
    }
}