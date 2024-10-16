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
          def scannerHome = tool 'SonarScanner for .NET'
          // withSonarQubeEnv('sq1') {
          //   sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll begin /k:\"testsonarqube\""
          //   sh 'dotnet build'
          //   sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll end"
          // }
          withSonarQubeEnv('sq1') {
            sh "dotnet sonarscanner begin /k:\"testsonarqube\""
            sh "dotnet build"
            sh "dotnet sonarscanner end"

            // bat "\"${scannerHome}\\SonarScanner.MSBuild.exe\" begin /k:\"testsonarqube\""
            // bat "\"${msbuildHome}\\MSBuild.exe\" /t:Rebuild"
            // bat "\"${scannerHome}\\SonarScanner.MSBuild.exe\" end"
          }
          
        }
      }
    }
  }
}