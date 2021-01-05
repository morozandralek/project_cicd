def urlWithDef = 'Test2'

pipeline {

    agent any

    environment {
        url = 'Test'
    }

    stages {

        stage('Build_FEX_CMECE_RH8') { 

            steps { 
                    print(env.first_path)
                    echo "urlWithDef - ${urlWithDef}"
                    echo "urlWithUI - ${urlWithUI}"
                    deleteDir()
            }
        }

    }
}