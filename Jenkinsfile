pipeline {
  environment {
    SCANNER_HOME = tool 'SonarScanner' // Name of the SonarScanner installation
  }

  agent any

  stages {
    stage('SonarQube Analysis') {
      def scannerHome = tool 'SonarScanner for .NET'

      steps {
        withSonarQubeEnv('sq1') { // Name of the SonarQube server
          // sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll begin /k:\"testsonarqube\""
          // sh 'dotnet build'
          // sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll end"
          bat "${scannerHome}\\SonarScanner.MSBuild.exe begin /k:\"testsonarqube\""
          bat "dotnet build"
          bat "${scannerHome}\\SonarScanner.MSBuild.exe end"
        }
      }
    }
  }

  post {
    always {
      cleanWs(
        cleanWhenAborted: true,
        cleanWhenFailure: true,
        cleanWhenNotBuilt: false,
        cleanWhenSuccess: true,
        cleanWhenUnstable: true,
        deleteDirs: true,
        notFailBuild: true,
        disableDeferredWipeout: true
      )
    }
  }
}

