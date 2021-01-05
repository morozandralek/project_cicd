pipeline {

    agent any

    stages {

        stage('Build_FEX_CMECE_RH8') { 

            steps { 
                    deleteDir()
                    git url: 'git@github.com:morozandralek/project_cicd.git'
                    sh """
                    pwd
                    ls -la
                    """
            }
        }

    }
}