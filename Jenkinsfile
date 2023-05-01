pipeline {
    agent { dockerfile true } 
    stages {
      stage('Cloning repo') {
        steps {
            git branch: 'main', url: 'https://github.com/jsebastianherrera/rp-portafolio'
            sh 'python manage.py runserver 0.0.0.0:8000'
            }
          }
   }
}

