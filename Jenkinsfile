pipeline {
    agent {
    	label 'node3'
    }
        
    stages {

        stage('Stop and Remove old VM') { 
            steps { 
                    sh """
                    cd /var/lib/jenkins/VM/
                    vagrant halt
                    vagrant destroy -f
                    rm -rf *
                    """
            }
        }

        stage('Clone repository') { 
            steps { 
                    deleteDir()
                    git url: 'git@github.com:morozandralek/ci_cd-home_task.git'
                    sh """
                    cp -r * /var/lib/jenkins/VM/
                    """
            }
        }

        stage('Run VM'){
        	steps {
                    sh """
                    pwd
                    cd /var/lib/jenkins/VM/
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
