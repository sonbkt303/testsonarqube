pipeline {
  agent any
  tools {
      // Install the .NET SDK
    dotnet 'dotnet-sdk'
  }
  stages {
    stage('Build') {
      steps {
        script {
          withSonarQubeEnv('sq1') {
            // sh 'dotnet build'
            sh 'dotnet sonarscanner'
            // sh 'dotnet build'
            // sh 'dotnet sonarscanner end /d:sonar.login="your-token"'
          }
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