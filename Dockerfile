FROM ubuntu:16.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y ubuntu-server ubuntu-desktop tightvncserver openssh-server

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]

# Expose ports.
EXPOSE 5901
