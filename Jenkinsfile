pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') { 
            steps {
                sh '/usr/bin/dotnet build'
            }
        }
        stage('Test') {
            steps {
                sh '/usr/bin/dotnet test'
            }
            post {
                always {
                    nunit testResultsPattern: 'TestResult.xml'
                }
            }
        }
        stage('Deliver') {
            steps {
                sh '/usr/bin/dotnet run'
            }
        }
    }
}
