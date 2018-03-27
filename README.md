
# Ubuntu Server Desktop

## Specifications
* Docker Community Edition Version 18.03.0-ce-mac59 (23608)

## Setup
* Build it - Run `docker build -t ubuntu-server-desktop .`
* Run it - Run `docker run -it --rm -p 5901:5901 -e USER=root ubuntu-server-desktop bash -c "vncserver :1 -geometry 1280x800 -depth 24 && tail -F /root/.vnc/*.log"'
