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
        sh 'sudo docker build -t app:latest .'
        sh 'sudo docker images'
      }
    }
    
  }
}
    
