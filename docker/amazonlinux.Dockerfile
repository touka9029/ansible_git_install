FROM centos:centos7.7.1908

RUN yum update -y \
  && yum install -y yum-utils \
  && yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
  && yum-config-manager --enable epel \
  && yum install -y ansible

CMD [ "tail", "-f", "/dev/null" ]
