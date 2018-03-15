pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') { 
            steps {
                sh 'ls -la'
                sh 'cd aspnet-core-dotnet-core'
                sh 'ls -la'
                sh 'dotnet build'
            }
        }
        stage('Test') {
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
