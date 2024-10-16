pipeline {
  agent any

  tools {
    dotnetsdk 'dotnet-sdk'
  }
  environment {
    PATH = "${env.PATH}:${HOME}/.dotnet/tools"
  }

  stages {
    // stage('SCM') {
    //   steps {
    //     checkout scm
    //   }
    // }
    // stage('Restore') {
    //   steps {
    //     sh 'dotnet restore'
    //   }
    // }
    // stage('Build') {
    //   steps {
    //     sh 'dotnet build --configuration Release'
    //   }
    // }

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