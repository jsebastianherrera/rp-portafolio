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
    stage('pylint') {
        steps {
            sh """
               pwd
               pylint --disable=C0111 --exit-zero rp-portafolio
            """
          }
      }
     stage('run') {
        steps {
            sh """
                docker rm -f django
                docker run --rm -d --name django -p 8000:8000 django  
            """
            }
          }
   }
}

