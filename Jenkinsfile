pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') { 
            steps {
                sh 'dotnet restore' 
            }
        }
        stage('Test') {
            steps {
                sh 'dotnet build'
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
