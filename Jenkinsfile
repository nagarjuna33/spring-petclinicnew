pipeline {
    agent {label ('node1')}
    stages {
        stage('scm') {
            steps 
            {
                git url: 'https://github.com/nagarjuna33/spring-petclinicnew.git', branch: 'main'
            }
        }
        stage('build'){
            steps{
                rtMavenRun (
                    pom: 'pom.xml'
                    goals: 'clean, package'
                )
            }
        }
    }
}
