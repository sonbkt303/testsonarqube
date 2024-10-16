pipeline {
  agent any
  tools {
    dotnet 'dotnet-sdk'
  }
  environment {
      PATH = "${env.PATH}:${HOME}/.dotnet/tools"
  }

  stages {
    stage('SCM') {
      steps {
        checkout scm
      }
    }
    stage('SonarQube Analysis') {
      steps {
        script {
          def scannerHome = tool 'SonarScanner for .NET'
          withSonarQubeEnv('sq1') {
            sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll begin /k:\"testsonarqube\""
            sh "dotnet build"
            sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll end"
          }
        }
      }
    }
  }
}