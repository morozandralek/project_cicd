pipeline {
    agent any
    stages {

        stage('Password') { 
            steps { 
                    withCredentials([usernamePassword(credentialsId: '12e01b37-86a4-4082-89c0-f1fd4a666769', usernameVariable: 'PSQL_USERNAME', passwordVariable: 'PSQL_PASSWORD')]) {			
	                sh '''
	                psql postgresql://${PSQL_USERNAME}:${PSQL_PASSWORD}@localhost:5432/postgres -c 'select * from test_table'
	                '''
	          	}

            }
        }
    }
}