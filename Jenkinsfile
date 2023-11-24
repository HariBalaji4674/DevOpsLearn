pipeline {
    agent {node {label 'agent1' }}
    options {
        ansiColor('xterm')
        timeout (time: 1, unit: 'MINUTES')
    }
    environment{
        USER = 'peddireddy'
    }
    stages{
        stage('Init'){
            steps{
                sh ''' 
                echo "Initiating"
                '''
            }

        }
        stage('example') {
            environment {
                AUTH = credentials('ssh-auth')
            }
            steps{
                sh "printenv" 
            }
        }
        stage ('plan'){
            steps {
                sh '''
                  echo "planning" 
               '''
            }
        }
        // stage('Approve') {
        //     steps {
        //         input "Please Approve the Request?"
        //     }
        // }
    }
    post {
        always {
            echo "execute all the time this senstences"
        }
        failure {
            echo "the execution got failed due to some issues"
        }
    }
}