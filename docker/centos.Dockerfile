FROM centos:centos7.7.1908

RUN yum update -y \
  && yum install -y epel-release \
  && yum install -y \
    ansible \
    sudo

# centosユーザを作ってパスワード無しでsudo可能にする
RUN useradd -u 1000 centos \
  && echo "centos ALL=NOPASSWD: ALL" >> /etc/sudoers
USER centos
WORKDIR /home/centos

VOLUME /home/centos/ansible

CMD [ "tail", "-f", "/dev/null" ]
