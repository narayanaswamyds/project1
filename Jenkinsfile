pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build and Deploy') {
            steps {
                // Call the shell script
                sh "chmod +x ./start.sh"
                sh './start.sh'
            }
        }
    }
}
