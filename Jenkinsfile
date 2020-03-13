pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                echo "checking out"
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/taimoordurrani/pokedex-go.git']]])
            }
        }
    }
}
