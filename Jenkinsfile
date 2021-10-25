pipeline{

    environment {
        PATH = "/opt/apache-maven-3.8.1/bin:$PATH"
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_KEY')
    }

    agent any
    stages {
        stage('checkout') {
            steps {
                git 'https://github.com/Katharine-git/HelloWorld-Tomcat.git'
            }
        }  
        stage('Maven Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Jenkins Deploy 2') {
            steps {
                ansiblePlaybook credentialsId: 'aws-private-key', disableHostKeyChecking: true, installation: 'ansible', inventory: 'hosts.ini', playbook: 'tomcat-deploy-2.yml'
            }
        
        }        
        
    }
}
