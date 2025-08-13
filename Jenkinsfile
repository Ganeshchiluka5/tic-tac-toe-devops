pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Ganeshchiluka5/tic-tac-toe-devops.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t tic-tac-toe .'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    // ముందుగా పాత container stop & remove చేస్తాం
                    sh 'docker rm -f tic-tac-toe-container || true'
                    sh 'docker run -d --name tic-tac-toe-container -p 8080:80 tic-tac-toe'
                }
            }
        }
    }
}
