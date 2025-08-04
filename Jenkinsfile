pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning GitHub repo...'
                checkout scm
            }
        }

        stage('Generate Report') {
            steps {
                echo 'Running report script...'
                bat 'generate_report.bat'
            }
        }

        stage('Archive Report') {
            steps {
                echo 'Archiving ZIP file...'
                archiveArtifacts artifacts: '*.zip', fingerprint: true
            }
        }
    }
}
