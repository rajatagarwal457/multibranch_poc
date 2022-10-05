pipeline {
    agent { dockerfile true }
    stages {
        stage('dockerization') {
            steps {
                sh 'docker stop c2'
                sh 'docker build -t c2 .'
                sh 'docker run -d -p 8001:8000 --name c2 c2'
            }
        }
    }
}