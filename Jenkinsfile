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
               sudo sh './start.sh'
            }
        }
    }
}
