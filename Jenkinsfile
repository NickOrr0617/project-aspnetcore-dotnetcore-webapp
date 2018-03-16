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
                sh 'touch /.dotnet/2.1.101.dotnetFirstUseSentinel'
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
