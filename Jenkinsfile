pipeline {
    agent any

    tools {
         dockerTool 'Docker'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t react-app .'
                    sh 'docker run -d -p 3000:3000 --name reactapp react-app'
                }
            }
        }
    }

    post {
        success {
            echo 'CI/CD pipeline ran successfully!'
        }

        failure {
            echo 'CI/CD pipeline failed!'
        }

        always{
            script{
                sh 'docker stop reactapp'
                sh 'docker rm -f reactapp'
            }
          echo 'CI/CD Pipeline Operations have been discontinued.'
        }
    }
}
