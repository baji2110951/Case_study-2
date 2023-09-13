pipeline{
  agent any
  stages{
    stage("checkout"){
      steps{
          git branch: 'main', credentialsId: 'git_pwd', url: 'https://github.com/baji2110951/Case_study-2.git'
      }
    }
    stage("maven Clean , install , build"){
      steps{
        sh 'mvn clean'
        sh 'mvn install'
        sh 'mvn package'
      }
    }
    stage("build image"){
      steps{
        sh 'docker build -t app:latest .'
        sh 'docker images'
      }
    }
    stage("containerizing app"){
      steps{
        sh 'docker run --name myApp -d -p 9090:8080 app'
      }
    }
  }
}
    
