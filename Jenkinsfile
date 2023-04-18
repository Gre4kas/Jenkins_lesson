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
}
