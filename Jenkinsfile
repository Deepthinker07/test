pipeline{
    agent any
    tools {
        maven "singh"
    }
    stages {
        stage ("git checkout") {
            steps {
                git branch: 'main', url: 'https://github.com/Deepthinker07/java.git'
            }
        }
        stage ("build") {
            steps {
                sh "mvn compile"
            }
        }
        stage ("code analysis") {
                steps {
                    withSonarQubeEnv('singh') {
                    sh 'mvn sonar:sonar'
              }
            }
        }
        stage ("test") {
            steps {
                sh "mvn test"
            }
        }
        stage ("package") {
            steps {
                sh "mvn package"
            }
        }
        stage ("docker build") {
            steps {
                sh "docker build -t deepthinker07/singh ."
            }
        }
        stage ("docker push") {
            steps {
                withDockerRegistry(credentialsId: 'docker') {
                    sh " docker push deepthinker07/singh "
                }
            }
        }
    }
}