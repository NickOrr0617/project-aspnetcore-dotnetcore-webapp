pipeline {
    agent {
        docker {
            image 'microsoft/aspnetcore-build:2.0' 
            args '-u root -v /.dotnet:/.dotnet --env DOTNET_CLI_TELEMETRY_OPTOUT=1' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'ls -la /home'
                sh 'dotnet build'
            }
        }
        stage('Test') {
            steps {
                sh 'dotnet test'
            }
        }
        stage('Deliver') { 
            steps {
                sh 'dotnet run'
            }
        }
    }
}
