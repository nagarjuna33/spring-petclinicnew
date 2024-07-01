pipeline{
  agent {label ('maven') }
  trigger { pollSCM('* * * * *') }
  parameters { choice(name: 'BRANCH', choices: ['main', 'dev', 'test'], description: '') }
  stages{
    stage('scm'){
       steps{
         git url:'https://github.com/nagarjuna33/spring-petclinicnew.git', branch:'${params.BRANCH}'
    }

     stage('build'){
       steps {
         configFileProvider([configFile(fileId: 'c6032746-ae1d-430c-95bc-ab0f117ee56f	', variable: 'MAVEN_SETTINGS')]) {
         sh 'mvn -s $MAVEN_SETTINGS deploy'
          }
       } 
      }
     }
    }
   }
