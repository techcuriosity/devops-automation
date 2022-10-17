pipeline {
    agent any
stages {
    stage('Clone Repo') {
        steps {
            checkout scm
            sh 'ls *'
        }
    }
    stage('Build Image') {
        steps {
            sh 'docker build -t techcuriosity/jenkinstest:$BUILD_NUMBER .'
        }
    }
    stage('Docker Publish') {
        steps {
            withDockerRegistry([credentialsId: "", url: ""])
            sh 'docker push techcuriosity/jenkinstest:$BUILD_NUMBER'
        }
    }
}
    post {
        always {
            sh 'docker logout'
        }
    }
}
