pipeline {
    agent any
 
   tools
    {
       maven "Maven"
    }
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/devops4solutions/CI-CD-using-Docker.git'
             
          }
        }
  stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
          }
        }
		stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t helloworld:latest .' 
                sh 'docker tag helloworld hemchandh/helloworld:latest'
                //sh 'docker tag samplewebapp hemchandh/helloworld:$BUILD_NUMBER'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ credentialsId: "50badc91-aa3f-4ca9-ab05-3069c00dc2b5", url: "https://hub.docker.com/" ]) {
          sh  'docker push hemchandh/helloworld:latest'
 
        }
                  
          }
        }
     
      stage('Run Docker container on Jenkins Agent') {
             
            steps 
   {
                sh "docker run -d -p 8081:8080 hemchandh/helloworld"
 
            }
        }
 
    }
 }