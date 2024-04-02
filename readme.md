# Jenkinsfile for compiling pacaking and deploying openssl

## The Jenkinsfile

### Step Checkout
checks out openssl-3.2.1 from github

### Step Build
compile the source of openssl-3.2.1

will break if the compile itself failes (exit 1) , however has a post step action to notify that build failed (actions like mail or Slack can be put here)

compiled data is saved into /tmp/openssl

### Step Package
Creates a .deb package out of the compiled data, a debian pakcage file will be created: /tmp/openssl/openssl.deb

### Step Deploy
copies the .deb package to a server (ip can be configured with the SERVER_IP env variable )
also accepts a remote dir to put the file into (can be configured with the REMOTE_DIR variable )
perform install of the .deb package to that server via ssh, using credentails injected by Jenkins (needs to be configured by user with Jenkins interface)


## Prerequisits:

### Jenkins with the follwing plugins:
 - Docker Pipeline
 - Git plugin
 - SSH Credentials Plugin

###  The follwoing should have been installed by default:
 - Pipeline
 - Plugin Utilities API Plugin
 - Credentials plugin


## How to run this in Jenkins

In your Jenkins instance, go to: `New Item` --> `Enter an item name`

Select `Pipeline`

Scroll to `Pipline Definition` --> select `pipeline script from SCM` , configure the follwing fields:

`SCM:` --> __Git__

`Repository URL:` __https://github.com/eftalor/q.git__

`Branches to build:` __*/main__

`Script path:` __jenkinsfile__

Click save
