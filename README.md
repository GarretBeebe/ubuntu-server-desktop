
# Ubuntu Desktop

## Setup
* Build it
  * Run: `docker build -t ubuntu-with-desktop .`
* Run it
  * Run: `docker run -itd -p 5901:5901 -e PASSWORD=<Your desired password> ubuntu-with-desktop`
* SSH into it
  * Run `docker exec -it <Container Name> /bin/bash`

## View
* vnc://<host>:5901 via VNC client

## Notes
* By default, the password will be created randomly.
* To find the password, please using the following command: `docker exec $CONTAINER_ID cat /home/ubuntu/password.txt`
* You can use this password to log in into this container.
