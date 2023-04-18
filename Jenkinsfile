pipeline {
    agent any
    environment {
        DOCKER_TLS_VERIFY = "1"
        DOCKER_CERT_PATH = "/root/.docker"
        DOCKER_HOST = "tcp://192.168.65.0:2376"
    }
    stages {
        stage('Run Docker Container') {
            steps {
                sh 'docker run -p 8080:90 da1ly/test'
            }
        }
    }
}
