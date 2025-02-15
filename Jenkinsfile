pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/Rakesh953/web-app.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'  
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t tomimg1 .'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker run -itd -p 8082:8080 --name tomcat-container2 tomimg1'
            }
        }
    }
}
