pipeline {
    agent {
    	label 'node3'
    }
        
    stages {

        stage('Stop and Remove old VM') { 
            steps { 
                    sh """
                    cd project_cicd
                    vagrant halt
                    vagrant destroy -f
                    """
                    deleteDir()
            }
        }

        stage('Clone repository') { 
            steps { 
                    sh """
                    git clone git@github.com:morozandralek/project_cicd.git
                    """
            }
        }

        stage('Run VM'){
        	steps {
                    sh """
                    pwd
                    cd project_cicd
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
