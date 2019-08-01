node{
   
   stage("App Build started"){
      echo 'App build started..'
      git credentialsId: 'Github-ID', url: 'https://github.com/vickeyreddy/jenkins-image.git'
      }
   
   stage('Docker Build') {
     def app = docker.build "vickeyreddy/jenkins-docker"
    }
   
   stage("Tag & Push image"){
      withDockerRegistry([credentialsId: 'dockerhub',url: ""]) {
          sh 'docker tag vickeyreddy/jenkins-docker vickeyreddy/jenkins-docker:1.0'
          sh 'docker push vickeyreddy/jenkins-docker:1.0'
          sh 'docker push vickeyreddy/jenkins-docker:latest'
      }
    }
   
   stage("App deployment started"){
     //sh 'oc login https://api.starter-us-west-1.openshift.com --token=l334xAzzGBl7kvYuUFcvfRCCXMsQxeQJox3pEzbSQrQ'
     //sh 'oc new project padmavathy'
     //sh 'oc new-app vickeyreddy/jenkins-image --name jenkins-image'
     //sh 'oc expose svc jenkins-image --name=jenkins-image'
     //sh 'oc status'
    }
   
    stage('App deployed to Openshift environment') {
     echo 'App deployed to Openshift environment..'
    }
}
