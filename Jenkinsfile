pipeline {
    agent any
    environment {
        PATH = "C:/ProgramData/chocolatey/bin;${env.PATH}"
    }
    stages {
        stage('Provisionar Infraestrutura') {
            steps {
                script {
                    bat 'terraform init'
                    bat 'terraform apply -auto-approve'
                }
            }
        }
    }
}
