# Use Ubuntu as the base image
FROM ubuntu:latest

# Install SSH and Python
RUN apt-get update && \
    apt-get install -y openssh-server python3 python3-pip && \
    apt-get clean

# Set up SSH for root access
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# Expose the SSH port
EXPOSE 22

# Run the SSH serverS
CMD ["/usr/sbin/sshd", "-D"]