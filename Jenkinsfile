pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                script {
                    echo 'Building..'
                    bat 'npm install'
                    bat 'npm run build'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    echo 'Testing..'
                    bat 'npm test'
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
                    echo 'Uploading..'
                    bat 'docker build -t base-nest .'
                }
            }
        }
    }
}
