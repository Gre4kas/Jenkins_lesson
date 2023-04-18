pipeline {
    agent any
    
    stages {
        stage('Run') {
            steps {
                script {
                    docker.run("-p 90:90 -d da1ly/test")
                }
            }
        }
    }
}
