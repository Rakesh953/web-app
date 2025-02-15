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
                sh 'mvn clean package'  // Builds the WAR file
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t tomcatimg3 .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker stop tomcat-container || true'
                sh 'docker rm tomcat-container || true'
                sh 'docker run -d -p 8081:8080 --name tomcat-container tomcatimg3'
            }
        }
    }
}
