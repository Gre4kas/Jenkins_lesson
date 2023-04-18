pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-image:17 -f Dockerfile .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -p 8080:80 my-image:17'
            }
        }
    }
    post {
        always {
            sh 'docker stop $(docker ps -a -q)'
            sh 'docker rm $(docker ps -a -q)'
        }
    }
    environment {
        DOCKER_TLS_CERTDIR = ''
    }
    options {
        docker.withRegistry('https://registry.example.com', 'docker-credentials-id')
        {
            docker.image('docker-image-name').inside('--privileged') {
                // docker commands go here
            }
        }
        disableConcurrentBuilds()
    }
}
