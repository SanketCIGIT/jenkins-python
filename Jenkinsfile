pipeline {
    agent any

    stages {
        	stage('checkout') {
	    	steps {
                    checkout scm
                      }
		}
	    	stage('build'){
                    steps {
                    sh 'python3 hello.py'
           	       }
		}
		stage('Docker Build') {
                     steps {
                     sh """
                        docker build -t $DOCKER_IMAGE .
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
