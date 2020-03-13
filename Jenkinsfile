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
                sh label: '', script: 'docker build -t pokeman:1.0 .'
            }
        }
    }
}
