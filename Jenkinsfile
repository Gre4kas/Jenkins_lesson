pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'sudo docker build -t test_d -f Dockerfile .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'sudo docker run -p 8080:90 test_d'
            }
        }
    }
}