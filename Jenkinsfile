pipeline{
agent any

stages {
     stage('scm') {
        steps {
               git url: "https://github.com/nagarjunaduggireddy/spring-petclinicnew.git", 
                     branch:"main"
               }
     }

        stage ('package') {
            steps{
                     sh 'mvn clean install'
            }
            }
   
}
}
    
