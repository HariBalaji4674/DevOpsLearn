pipeline {
    agent {node {label 'agent1' }}
    options {
        ansiColor('xterm')
        timeout (time: 1, unit: 'MINUTES')
    }
    environment{
        USER = 'peddireddy'
    }
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')
        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')
        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')
        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
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
        stage('Params') {
            steps {
                echo "Hello ${params.PERSON}"

                echo "Biography: ${params.BIOGRAPHY}"

                echo "Toggle: ${params.TOGGLE}"

                echo "Choice: ${params.CHOICE}"

                echo "Password: ${params.PASSWORD}"
            }
        }
        stage('Example') {
            input {
                message "Should we continue?"
                ok "Yes, we should."
                submitter "alice,bob"
                parameters {
                    string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
                }
            }
            steps {
                echo "Hello, ${PERSON}, nice to meet you."
            }
        }
        stage('Prod'){
            when {
                branch 'main'
            }
            steps {
                echo "Deploying to prod"
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