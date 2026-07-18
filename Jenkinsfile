pipeline {
    agent any
    stages {
        stage ("Build stage"){
            steps {
                docker build -t dk8Image .
            }
        }

        stage ("running image"){
            steps {
                docker run -d --name d-k8-1 -p 5001:5000 dk8Image
            }
        }
    }
}