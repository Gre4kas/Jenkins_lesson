pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                script {
                    def dockerImage = docker.build("homework:1", ".")
                }
            }
        }
        
        stage('Run') {
            steps {
                script {
                    docker.run("-p 90:90 -d homework:1")
                }
            }
        }
    }
}
