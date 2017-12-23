FROM jordan/rundeck:latest 

LABEL maintainer "Yutaka Nishimura <ytk.nishimura@gmail.com>"

RUN apt-get update && apt-get install python-setuptools 
RUN easy_install pip
RUN pip install ansible
ADD https://github.com/Batix/rundeck-ansible-plugin/releases/download/2.2.2/ansible-plugin-2.2.2.jar /var/lib/rundeck/libext
