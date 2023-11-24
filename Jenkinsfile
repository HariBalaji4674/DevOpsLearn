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
                ls -ltr
                pwd
                
                '''
            }

        }
        stage ('plan'){
            steps {
                sh '''
               ls- ltr
               cd etc 
               ls -ltr
               '''
            }
        }
        stage('Approve') {
            steps {
                input "Please Approve the Request?"
            }
        }
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