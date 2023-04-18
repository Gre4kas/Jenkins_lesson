pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    def image = docker.build("my-image:${env.BUILD_NUMBER}", "-f Dockerfile .")
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image("my-image:${env.BUILD_NUMBER}").run("-p 8080:90")
                }
            }
        }
    }
}
