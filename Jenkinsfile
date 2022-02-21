node{
  def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("abir/nginx")
    }

    stage('Test image') {
        docker.image('abir/nginx').withRun('-p 89:80') { c ->
        sh 'docker ps'
        sh 'curl localhost'
	     }
    }
}
