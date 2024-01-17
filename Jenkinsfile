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
                chmod +x ./start.sh
                sh './start.sh'
            }
        }
    }
}
