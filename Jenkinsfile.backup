pipeline {

  environment {
    SCANNER_HOME = tool 'SonarScanner' // Name of the SonarScanner installation
  }

  agent any

  stages {
    
    stage('SonarQube Analysis') {
      steps {
        // withSonarQubeEnv('SonarQube') {
        //     sh 'sonar-scanner -Dsonar.projectKey=node-library -Dsonar.sources=. -Dsonar.host.url=http://172.76.10.185:9000 -Dsonar.login=sqp_4f6e914fb0f7a6cd57eea823e0e4406d7ab4b78b'
        // }
        // sh 'npm run sonar'
        withSonarQubeEnv('sq1') { // Name of the SonarQube server
          // sh "${SCANNER_HOME}/bin/sonar-scanner"
          // sh "${SCANNER_HOME}/bin/sonar-scanner -Dsonar.projectKey=node-library -Dsonar.sources=."
          sh "${SCANNER_HOME}/bin/sonar-scanner"

        }
      }
    }

    // stage('Cleaning Up') {
    //   steps{
    //     sh "docker rmi --force $registry/$repos:$BUILD_NUMBER"
    //   }
    // }

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

