pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') { 
            steps {
                sh 'which dotnet'
                sh '/usr/bin/dotnet build'
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
