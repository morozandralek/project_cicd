pipeline {
    agent {
    	label 'node3'
    }
        
    stages {

        stage('Clone repository') { 
            steps { 
                    deleteDir()
                    git url: 'git@github.com:morozandralek/project_cicd.git'
            }
        }
        stage('Git push'){
        	steps {
        	        sh """
        				vagrant up
        			"""
        	}
        }
    }
    post {
            success {
                slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
            }
            failure {
                slackSend (color: '#FF0000', message: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
            }
        }
}
