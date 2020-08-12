# urltest
jswdwxs-url

This is demo for jenkins + docker + github + mvn

Assume you have jdk, mvn, docker, jenkins installed.
Create a jenkins pipeline job with SCM and left all the others config default.
This is all you need to do to run a spring boot application in docker by jenkins.

All the things will be done orderly:
 * Jenkins checkout this repo and find the Jenkinsfile.
 * Jenkins run the pipeline which define in the Jenkinsfile.
 * Jenkins run mvn package as Jenkinsfile said.
 * Jenkins stop origin container and remove origin image.
 * Jenkins run docker build by mvn-docker-plugin as Jenkinsfile said.
 * Maven run build docker image as dockerfile said.
 * Jenkins run docker image at port:8080.

Browse to http://localhost:9000/url/hello , it will print "http://localhost:9000/url/hello" too.   
try any thing you want http://localhost:9000/url/***.
