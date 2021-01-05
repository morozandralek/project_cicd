pipeline {

    agent any

    environment {
        url = 'Test'
    }

    def urlWithDef = 'Test2'

    stages {

        stage('Build_FEX_CMECE_RH8') { 

            steps { 
                    print("print env url", env.first_path)
                    print(${urlWithDef})
                    print(${urlWithUI})
                    deleteDir()
            }
        }

    }
}