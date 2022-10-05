pipeline {
    agent { dockerfile true }
    stages {
        stage('dockerization') {
            steps {
                sh 'docker -v /var/lib/jenkins/workspace/poc_c2:/var/lib/jenkins/workspace/poc_c2:rw,z -v /var/lib/jenkins/workspace/poc_c2@tmp:/var/lib/jenkins/workspace/poc_c2@tmp:rw,z stop c2'
                sh 'docker build -t c2 .'
                sh 'docker run -d -p 8001:8000 --name c2 c2'
            }
        }
    }
}