pipeline {
    agent any
    stages {
        stage('Build jar') {
            steps {
                sh 'mvn -B -DskipTests clean package'
                sh 'echo Build done'
            }
        }
        stage('Build image') {
            steps {
                sh 'mvn docker:build'
                sh 'echo Build done'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -p 9000:8080 -d jswdwsx/url'
            }
        }
    }
}
