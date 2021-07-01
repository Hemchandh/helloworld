pipeline {
    agent any
 
   tools
    {
       maven "MAVEN_HOME"
    }
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/Hemchandh/helloworld.git'
             
          }
        }
  stage('Execute Maven') {
           steps {
             
                sh 'mvn clean install'             
          }
        }
		
    }
 }
