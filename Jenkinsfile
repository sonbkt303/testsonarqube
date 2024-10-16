pipeline {
  agent any

  tools {
    dotnetsdk 'dotnet-sdk'
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
          def scannerHome = tool name: 'SonarScanner for .NET', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
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