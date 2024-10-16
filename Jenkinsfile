node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'SonarScannerNet'
    withSonarQubeEnv('sq1') {
      bat "dotnet ${scannerHome}\\SonarScanner.MSBuild.dll begin /k:\"testsonarqube\""
      bat "dotnet build"
      bat "dotnet ${scannerHome}\\SonarScanner.MSBuild.dll end"
    }
  }
}
