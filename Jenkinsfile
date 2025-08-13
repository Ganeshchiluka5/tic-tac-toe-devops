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
                sh 'docker build -t tic-tac-toe .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 80:80 tic-tac-toe'
            }
        }
    }
}
