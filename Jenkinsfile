pipeline {
    agent { label "linux" } 
    stages {
      stage('Cloning repo') {
        steps {
            git branch: 'main', url: 'https://github.com/jsebastianherrera/rp-portafolio'
            sh """
                docker build -t django .
            """"
            }
          }
     stage('run') {
        steps {
            sh """
                docker build --rm --name django -p 8000:8000 django 
            """"
            }
          }
   }
}

