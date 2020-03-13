pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                echo "STEP CHECKOUT"
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/taimoordurrani/pokedex-go.git']]])
            }
        }
		stage('build docker image') {
            steps {
				echo "BUILD DOCKER IMAGE"
                script {
             		docker build -t pokeman:1.0 .
                }
            }
        }
    }
}
