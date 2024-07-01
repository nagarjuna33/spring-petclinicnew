pipeline{
  agent {label ('maven') }
  stages{
    stage('scm'){
       steps{
         git url:'https://github.com/nagarjuna33/spring-petclinicnew.git', branch:main
    }

     stage('build'){
       steps {
             sh 'mvn deploy'
      }
     }
    }
   }
