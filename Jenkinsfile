pipeline {
    agent {
        docker {
            image 'microsoft/aspnetcore-build:2.0' 
            args '-v /root/.dotnet:/root/.dotnet' 
        }
    }

    stages {
        stage('Build') { 
            steps {
                sh 'ls -la'
                sh 'dotnet build aspnet-core-dotnet-core/aspnet-core-dotnet-core.csproj'
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
