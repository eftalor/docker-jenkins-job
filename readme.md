#Jenkinsfile for compiling pacaking and deploying openssl

##The Jenkinsfile

##Prerequisits:

Jenkins with Docker Plugin

##How to run this in Jenkins

In your Jenkins instance, go to: New Item --> Enter an item name

Select Pipeline

Scroll to Pipline Definition --> select "pipeline script from SCM", confiugre the follwing fields:

SCM: --> Git

Repository URL: https://github.com/eftalor/q.git

Branches to build: */main

script path: Jenkinsfile

Click save
