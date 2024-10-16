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
      def scannerHome = tool 'SonarScanner for .NET'
      withSonarQubeEnv() {
        bat "dotnet ${scannerHome}\\SonarScanner.MSBuild.dll begin /k:\"testsonarqube\""
        bat "dotnet build"
        bat "dotnet ${scannerHome}\\SonarScanner.MSBuild.dll end"
      }
    }
  }
}