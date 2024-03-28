pipeline {
    agent any
  
    tools {
        nodejs "recent node"
        DockerTool 'docker'
    }
    
  
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
                    echo 'Uploading..'
                    sh 'service docker status'
                }
            }
        }
    }
}
