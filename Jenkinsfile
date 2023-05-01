pipeline {
    agent any 
    stages {
      stage('Cloning repo') {
        steps {
            git branch: 'main', url: 'https://github.com/jsebastianherrera/rp-portafolio'
            sh """
                docker build -t django .
            """
            }
          }
     stage('run') {
        steps {
            sh """
                docker run --rm -p 8000:8000 django 
            """
            }
          }
   }
}

