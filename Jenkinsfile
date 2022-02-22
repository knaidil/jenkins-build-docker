node{
  def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("abir/nginx")
    }

    stage('Test image') {
        docker.image('abir/nginx').withRun('-p 94:94') { c ->
        sh 'docker ps'
        sh 'curl localhost'
	     }
    }
}
