pipeline{
    agent {label ('maven') }
    stages{
        stage('scm'){
            steps{
                git url:'https://github.com/nagarjuna33/spring-petclinicnew.git', branch:'main'
            }
        }
         stage('build'){
         steps {
            configFileProvider([configFile(fileId: '85029f9d-932c-4b98-8921-d5459c08cce7', variable: 'MAVEN_SETTINGS')]) {
        sh 'mvn -s $MAVEN_SETTINGS deploy'
    }
        } 
}
}
}
