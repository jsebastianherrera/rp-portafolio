pipeline {
    agent { dockerfile true } 
    stages {
      stage('Cloning repo') {
        steps {
            git branch: 'main', url: 'https://github.com/jsebastianherrera/rp-portafolio'
            }
          }
        stage('Run Docker container') {
            steps {
              sh 'docker ps'
            }
        }
    }
}
