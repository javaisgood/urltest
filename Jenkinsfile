pipeline {
    agent any
    parameters {
        string(name: 'AppName', defaultValue: 'jswdwsx/url', description: 'this is the app name')
    }
    stages {
        stage('Build jar') {
            steps {
                sh 'mvn -B -DskipTests clean package'
                sh 'echo Build jar done!'
            }
        }
        stage('Remove image') {
                    steps {
                        sh 'echo Remove image done!'
                    }
                }
        stage('Build image') {
            steps {
                sh 'mvn docker:build'
                sh 'echo Build image done!'
            }
        }
        stage('Deploy') {
            steps {
                sh "docker run -p 9000:8080 -d ${params.AppName}"
            }
        }
    }
}
