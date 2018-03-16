pipeline {
    agent {
        docker {
            image 'microsoft/aspnetcore-build:2.0' 
            args '-u root -p 127.0.0.1:80:57777 -v /var/lib/jenkins/.dotnet:/.dotnet --env DOTNET_CLI_TELEMETRY_OPTOUT=1' 
        }
    }
    stages {
        stage('Build') { 
            steps {
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
