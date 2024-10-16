pipeline {
  agent any

  environment {
    PATH = "${env.PATH}:${HOME}/.dotnet/tools"
  }

  stages {
    stage('Print Variable') {
      steps {
        script {
          echo "The value of PATH is: ${env.PATH}"
        }
      }
    }
    stage('SonarQube Analysis') {
      steps {
        script {
          def scannerHome = tool name: 'SonarScanner for .NET', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
          withSonarQubeEnv('sq1') {
            sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll begin /k:\"testsonarqube\""
            sh 'dotnet build'
            sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll end"
          }
        }
      }
    }
  }
  
  post {
    always {
      archiveArtifacts artifacts: 'publish/**', allowEmptyArchive: true
      junit 'TestResults/*.xml'
    }
    failure {
      emailext (
        to: 'recipient@example.com',
        subject: "Jenkins Build Failed: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
        body: "The build ${env.JOB_NAME} #${env.BUILD_NUMBER} has failed. Please check the Jenkins console output for more details: ${env.BUILD_URL}"
      )
    }
  }
}