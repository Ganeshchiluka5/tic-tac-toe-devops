pipeline {
    agent any

    environment {
        IMAGE_NAME = 'tic-tac-toe-app'
        CONTAINER_NAME = 'tic-tac-toe'
    }

    stages {

        stage('Checkout SCM') {
            steps {
                // GitHub repo URL + branch correct ga mention cheyyandi
                git branch: 'main', url: 'https://github.com/Ganeshchiluka5/tic-tac-toe-devops.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Docker image build
                    sh "docker build -t ${IMAGE_NAME}:latest ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Existing container unna delete cheyandi
                    sh "docker rm -f ${CONTAINER_NAME} || true"

                    // New container run
                    sh "docker run -d --name ${CONTAINER_NAME} -p 8082:8080 ${IMAGE_NAME}:latest"
                }
            }
        }
    }

    post {
        success {
            echo "Pipeline completed successfully. App running on port 8082"
        }
        failure {
            echo "Pipeline failed. Check logs for errors."
        }
    }
}
