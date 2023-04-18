pipeline {
    agent any

    stages {
        stage('Run Docker Container') {
            steps {
                sh 'docker run -p 8080:90 da1ly/test'
            }
        }
    }
}
