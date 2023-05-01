pipeline {
    agent any 
    stages {
      stage('Cloning repo') {
        steps {
            git branch: 'main', url: 'https://github.com/jsebastianherrera/rp-portafolio'
            dir('rp-portafolio'){
                sh 'echo hello'
              }
            }
          }
        }
}
