docker run -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts-jdk11

#####  TO save the jenkins  chages and  persist them create a volumne

####create a volumne
docker volume create jenkins-save


###### saving a volume
docker container run -d \
    -p 8080:8080 \
    -v jenkins-save:/var/jenkins_home \
    jenkins/jenkins:lts-jdk11


####Check docker process
docker ps

### Stop jenkins
docker stop jenkins/jenkins
docker ps
docker stop <container id>==

#######
