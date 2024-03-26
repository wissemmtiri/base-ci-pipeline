pipeline {
    agent any 
    stages {
        stage('Build') {
            steps {
                script {
                    sh 'npm install'
                    sh 'npm run build'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    sh 'npm test'
                }
            }
        }
        stage('Scan') {
            steps {
                script {
                    echo 'Scanning..'
                }
            }
        }
        stage('Upload') {
            steps {
                script {
                    sh 'tar -czvf nest-base.tar.gz dist/'
                    archiveArtifacts artifacts: 'nest-base.tar.gz'
                }
            }
        }
    }
}
