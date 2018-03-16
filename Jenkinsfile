pipeline {
    agent { dockerfile true }
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
