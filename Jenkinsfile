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
          // withSonarQubeEnv('sq1') {
          //   sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll begin /k:\"testsonarqube\""
          //   sh 'dotnet build'
          //   sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll end"
          // }
          withSonarQubeEnv('sq1') {
            sh "dotnet sonarscanner begin /k:\"testsonarqube\" /d:sonar.cs.opencover.reportsPaths=coverage/coverage.cobertura.xml"
            sh 'dotnet build'
            sh "dotnet sonarscanner end"
          }
          
        }
      }
    }
  }
}