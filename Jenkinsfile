pipeline {
    agent any
    stages {
        stage ('Build stage'){
            steps {
                sh 'docker build -t dk8image .'
            }
        }

        stage ('running image'){
            steps {
                sh 'docker run -d --name d-k8-3 -p 5002:5000 dk8image'
            }
        }

        stage ('dockerhub login'){
            steps {
                echo 'pushing image'
                withCredentials([
                usernamePassword(
                credentialsId: 'docker-cred',
                usernameVariable: 'USER',
                passwordVariable: 'PASS'
                )
        ]){
            sh '''
            docker login -u $USER -p $PASS
            docker tag dk8image $USER/dk8image
            docker push $USER/dk8image
            '''
        }
            }
        }
    }
}