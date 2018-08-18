FROM ubuntu

# Environment
ENV PACKAGES curl wget git sudo vim apt-transport-https build-essential
ENV TERM=linux
ENV PS1 "\n\n>> ubuntu \W \$ "

# Install packages
RUN apt-get update && apt-get install $PACKAGES -y

# Set a passwordless sudoer user
RUN adduser --disabled-password --gecos "" ubuntu && \
    usermod -aG sudo ubuntu && \
    echo "%sudo  ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/nopasswd

# Start the container as the user
WORKDIR /home/ubuntu
USER ubuntu
CMD bash
