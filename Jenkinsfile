pipeline {
    agent { dockerfile true }

    stages {
        stage('Build') { 
            steps {
                sh 'dotnet build'
            }
        }
        stage('Test') {
            environment {
                DOTNET_CLI_TELEMETRY_OPTOUT = '1'
            }
            steps {
                sh 'dotnet test'
            }
            post {
                always {
                    nunit testResultsPattern: 'TestResult.xml'
                }
            }
        }
        stage('Deliver') {
            steps {
                sh 'dotnet run'
            }
        }
    }
}
