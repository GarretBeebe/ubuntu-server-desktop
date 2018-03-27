# Pull base image.
FROM ubuntu:16.04

# Install ubuntu server, desktop, and VNC server.
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y ubuntu-server ubuntu-desktop tightvncserver

# Define default command.
CMD ["bash"]

# Expose ports.
EXPOSE 5901
