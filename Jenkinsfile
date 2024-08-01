    pipeline {
        agent any
        tools {
            maven "singh"
        }
        stages {
            stage ("cleanws") {
                steps {
                    cleanWs() 

                }
            }
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
            stage ("compile") {
                steps {
                    sh "mvn compile"
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
            stage ("Docker build") {
                steps {
                    sh "docker build -t singh ."
                }
            }
            stage ("Docker push") {
                steps {
                    withDockerRegistry(credentialsId: 'docker') {
                        sh "docker push singh"
                    }
                }
            }
            
        }

    }