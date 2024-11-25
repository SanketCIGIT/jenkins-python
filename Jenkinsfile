pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'hello-python:latest'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'python3 hello.py' 
            }
        }
        stage('Docker Build') {
            steps {
                sh """
                    docker build -t "${DOCKER_IMAGE}" .
                """
            }
        }
    }
    post {
        success {
            echo 'Build complete'
        }
        failure {
            echo 'Build failed'
        }
    }
}

