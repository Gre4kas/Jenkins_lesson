pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t test_d -f Dockerfile .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -p 8080:80 test_d'
            }
        }
    }
}