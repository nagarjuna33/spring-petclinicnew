pipeline{
  agent {label ('maven') }
  stages{
    stage('scm'){
       steps{
         git url:'https://github.com/nagarjuna33/spring-petclinicnew.git', branch:main
    }

     stage('build'){
       steps {
         configFileProvider([configFile(fileId: 'c6032746-ae1d-430c-95bc-ab0f117ee56f')]) {
         sh 'mvn deploy'
          }
       } 
      }
     }
    }
   }
