pipeline {
    agent {
        docker {
            image 'microsoft/aspnetcore-build:2.0' 
            args '-v /.dotnet:/.dotnet' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'touch testfile'
                sh 'ls -la testfile'
                sh 'rm testfile'
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
