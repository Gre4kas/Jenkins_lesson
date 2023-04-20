pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                script {
                    def dockerImage = docker.build("Test_j", ".")
                }
            }
        }
        
        stage('Run') {
            steps {
                script {
                    docker.run("-p 90:90 -d Run_test")
                }
            }
        }
    }
}
