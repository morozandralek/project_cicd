pipeline {
    agent any
    stages {

        stage('Clone repository') { 
            steps { 
                    deleteDir()
                    git url: 'git@github.com:morozandralek/project_cicd.git'
                    sh """
                    cp -r * /var/lib/jenkins/VM/
                    ls -la
                    """
            }
        }

    }
}