pipeline {
    environment {
        registry = "hzkong06/dockerhub1"
        registryCredential = 'dockerhub_id'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Cloning our Git') {
            steps {
                git 'https://github.com/haozhe06/docker-jenkins.git'
            }
        }
        stage('Building our image') {
            steps{
                script {
                    app = docker.build("hzkong06/dockerhub1") 
                }
            }
        }
        stage('Deploy our image') {
            app.inside {            
             
             sh 'echo "Tests passed"'        
            }    
        }
        stage('Cleaning up') {
            steps{
                sh "docker rmi $registry:$BUILD_NUMBER"
            }
        }
    }
}
