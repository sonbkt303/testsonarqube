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

     stage('Restore') {
      steps {
        sh 'dotnet restore'
      }
    }

    // stage('SonarQube Analysis') {
    //   steps {
    //     script {
    //       def scannerHome = tool 'SonarScanner for .NET'
    //       withSonarQubeEnv('sq1') {
    //         sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll begin /k:\"testsonarqube\""
    //         sh "dotnet build"
    //         sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll end"
    //       }
    //     }
    //   }
    // }

    stage('Build + SonarQube analysis') {
      def sqScannerMsBuildHome = tool 'Scanner for .Net Framework'
      withSonarQubeEnv('My SonarQube Server') {
        bat "${sqScannerMsBuildHome}\\SonarQube.Scanner.MSBuild.exe begin /k:myKey"
        bat 'MSBuild.exe /t:Rebuild'
        bat "${sqScannerMsBuildHome}\\SonarQube.Scanner.MSBuild.exe end"
      }
    }
  }
}