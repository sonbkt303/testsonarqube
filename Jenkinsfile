pipeline {
    agent any
    tools {
        // Install the .NET SDK
        dotnet 'dotnet-sdk'
    }
    stages {
        stage('Prepare Analysis Configuration') {
            steps {
                script {
                    withSonarQubeEnv('sq1') {
                        sh 'dotnet sonarscanner begin /k:"testsonarqube" /d:sonar.login="squ_f0e0b9fbaa8df0615f1344b54f9cab0a0191b8ab"'
                    }
                }
            }
        }
        stage('Build') {
            steps {
                sh 'dotnet build'
            }
        }
        stage('Run SonarQube Analysis') {
            steps {
                script {
                    sh 'dotnet sonarscanner end /d:sonar.login="squ_f0e0b9fbaa8df0615f1344b54f9cab0a0191b8ab"'
                }
            }
        }
        stage('Quality Gate') {
            steps {
                waitForQualityGate abortPipeline: true
            }
        }
    }
}