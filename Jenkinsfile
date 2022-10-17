pipeline {
    agent any
    environment {
        DOCKERHUB_CREDS = credentials('demo-app-git-cred')
    }
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
    stage('Docker Login') {
        steps {
            sh 'echo $DOCKERHUB_CREDS_PSW | docker login -u DOCKERHUB_CREDS_USR --password-stdin'
        }
    }
    stage('Docker Push') {
        steps {
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
