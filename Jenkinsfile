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
                    def msbuildHome = tool name: 'MSBuild', type: 'hudson.plugins.msbuild.MsBuildInstallation'
                    def scannerHome = tool name: 'SonarScanner for .NET', type: 'hudson.plugins.sonar.MsBuildSQRunnerInstallation'
                    withSonarQubeEnv('sq1') {
                        sh "\"${scannerHome}/SonarScanner.MSBuild.dll\" begin /k:\"testsonarqube\" /d:sonar.login=\"your-token\""
                        sh "\"${msbuildHome}/MSBuild.exe\" /t:Rebuild"
                        sh "\"${scannerHome}/SonarScanner.MSBuild.dll\" end /d:sonar.login=\"your-token\""
                    }
                }
            }
        }
    }
}
