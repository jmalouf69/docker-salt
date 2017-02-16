FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y upgrade --fix-missing
RUN apt-get -y install salt-api
RUN apt-get -y install salt-cloud
RUN apt-get -y install salt-master
RUN apt-get -y install salt-minion
RUN apt-get -y install salt-ssh
RUN apt-get -y install salt-syndic

CMD ["salt-master", "-d"]
CMD ["salt-minion", "-d"]

CMD ["salt-key", "-F", "master"]
