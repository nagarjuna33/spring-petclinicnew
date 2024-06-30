pipeline{
    agent {label ('maven') }
    stages{
        stage('scm'){
            steps{
                git url:'https://github.com/nagarjuna33/spring-petclinicnew.git', branch:'main'
            }
        }
         stage("build & SonarQube analysis") {
            agent any
            steps {
              withSonarQubeEnv('sonarid') {
                sh 'mvn clean package sonar:sonar'
              }
            }
          }
          stage("Quality Gate") {
            steps {
              timeout(time: 1, unit: 'HOURS') {
                waitForQualityGate abortPipeline: true
         stage('build'){
         steps {
            configFileProvider([configFile(fileId: '85029f9d-932c-4b98-8921-d5459c08cce7', variable: 'MAVEN_SETTINGS')]) {
        sh 'mvn -s $MAVEN_SETTINGS deploy'
    }
        } 
}
}
}
