pipeline {
    agent {
        docker {
            image 'microsoft/aspnetcore-build:2.0' 
            args '-v /.dotnet:/.dotnet --env DOTNET_CLI_TELEMETRY_OPTOUT=1' 
        }
    stages {
        stage('Build') { 
            steps {
                sh 'useradd jenkins'
                sh 'dotnet build'
            }
        }
        stage('Test') {
            steps {
                echo 'dotnet test'
            }
        }
        stage('Deliver') { 
            steps {
                sh 'dotnet run -p aspnet-core-dotnet-core'
            }
        }
    }
}
