pipeline {

    agent any

    enviroment {
        first_path = 'Test'
    }

    stages {

        stage('Build_FEX_CMECE_RH8') { 

            steps { 
                    git url: 'git@github.com:morozandralek/project_cicd.git'
                    sh """
                    pwd
                    ls -la
                    """
                    print(env.first_path)
                    deleteDir()
            }
        }

    }
}