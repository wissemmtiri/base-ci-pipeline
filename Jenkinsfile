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
                    sh 'docker build -t nest-base .'
                    echo 'Uploading..'
                }
            }
        }
    }
}
