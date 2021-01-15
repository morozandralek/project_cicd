pipeline {
    agent any
    stages {


        stage('Clone repository') { 
            steps { 
                    deleteDir()
                    git branch: 'test_bash_cred', url: 'git@github.com:morozandralek/project_cicd.git'
                    sh 'pwd && ls -l'
            }
        }

        stage('Password') { 
            steps { 
                    withCredentials([usernamePassword(credentialsId: '12e01b37-86a4-4082-89c0-f1fd4a666769', usernameVariable: 'PSQL_USERNAME', passwordVariable: 'PSQL_PASSWORD')]) {			
	                   sh """
	                   psql postgresql://${PSQL_USERNAME}:${PSQL_PASSWORD}@localhost:5432/postgres -c 'select * from test_table'
	                   """
	          	    }

                     withCredentials([usernamePassword(credentialsId: '12e01b37-86a4-4082-89c0-f1fd4a666769', usernameVariable: 'PSQL_USERNAME', passwordVariable: 'PSQL_PASSWORD')]) {			
	                   sh """
	                   pwd
                       ./update_credentials_fixicch2_test.sh ${PSQL_USERNAME} ${PSQL_PASSWORD}
                       """
	          	    }

                    sh """
                    cat docker-image/local.app.properties
                    """

            }
        }

    }
}