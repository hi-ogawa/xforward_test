FROM ubuntu:16.04

RUN apt-get update && apt-get install -y openssh-server xauth xterm

RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo 'root:pass' | chpasswd
RUN mkdir -p /var/run/sshd

RUN touch /root/.Xauthority

CMD ["/usr/sbin/sshd", "-D"]
