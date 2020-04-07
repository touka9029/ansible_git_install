FROM centos:centos7.7.1908

RUN yum update -y \
  && yum install -y epel-release \
  && yum install -y \
    ansible \
    sudo

# sudoのパスワード設定が面倒なので保留
# RUN useradd -u 1000 centos
# USER centos
# WORKDIR /home/centos

VOLUME /tmp/ansible
WORKDIR /tmp/ansible

CMD [ "tail", "-f", "/dev/null" ]
