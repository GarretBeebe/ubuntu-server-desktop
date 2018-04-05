FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV USER ubuntu
ENV HOME /home/$USER

# Create new user for vnc login.
RUN adduser $USER --disabled-password
RUN usermod -aG sudo ubuntu

# Install Ubuntu Unity.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ubuntu-desktop \
        unity-lens-applications \
        gnome-panel \
        gnome-settings-daemon \
        gnome-terminal \
        metacity \
        nautilus \
        gedit \
        xterm \
        sudo

# Install tigervnc
RUN apt-get install -y \
        tightvnc

# Install dependency components.
RUN apt-get install -y \
        supervisor \
        net-tools \
        curl \
        git \
        pwgen \
        libtasn1-3-bin \
        libglu1-mesa \
        nano \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

# Copy supervisor config
COPY supervisor.conf /etc/supervisor/conf.d/

# Set xsession of Unity
COPY xsession $HOME/.xsession

# Set xstartup of Unity
COPY xstartup $HOME/.xstartup

# Copy startup script
COPY startup.sh $HOME

EXPOSE 5901
CMD ["/bin/bash", "/home/ubuntu/startup.sh"]
