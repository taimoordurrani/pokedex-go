pipeline {
    agent any
    
    stages {
        stage("checkout") {
            steps {
                checkout scm
            }
        }
        
        stage("build") {
            steps {
                docker.build("pokedex:${env.BUILD_ID}")
            }
        }
    
        stage("test") {
            agent {
                docker { image "pokedex:${env.BUILD_ID}" }
            }
            steps {
                sh "npm test"
            }
        }
​
        stage("deploy") {
            steps {
                sh """docker run -d pokedex:${env.BUILD_ID} -p 5555"""
            }
        }
    }
}
