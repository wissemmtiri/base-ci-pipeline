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
                echo 'Scanning..'
            }
        }
        stage('Upload') {
            steps {
                echo 'Uploading....'
            }
        }
    }
}
