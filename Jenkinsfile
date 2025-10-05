pipeline {
    agent any
    options {
        buildDiscarder(logRotator(daysToKeepStr: '10', numToKeepStr: '10'))
        timeout(time: 12, unit: 'HOURS')
        timestamps()
    }
    stages {
        stage('Requirements') {
            steps {
                // On Windows, no need for chmod; just make sure the batch file exists
                bat 'echo Checking script...'
            }
        }
        stage('Build') {
            steps {
                // Run the algorithm batch script
                bat 'scripts\\algorithm.bat'

                // Archive the report created by the script
                archiveArtifacts allowEmptyArchive: true,
                    artifacts: '*.txt',
                    fingerprint: true,
                    onlyIfSuccessful: true
            }
        }
    }
}

