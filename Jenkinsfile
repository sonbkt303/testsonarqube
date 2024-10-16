node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def msbuildHome = tool 'Default MSBuild'
    def scannerHome = tool 'SonarScannerNet'
    withSonarQubeEnv('sq1') {
      bat "\"${scannerHome}\\SonarScanner.MSBuild.exe\" begin /k:\"testsonarqube\""
      bat "\"${msbuildHome}\\MSBuild.exe\" /t:Rebuild"
      bat "\"${scannerHome}\\SonarScanner.MSBuild.exe\" end"
    }
  }
}