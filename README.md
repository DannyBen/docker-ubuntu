# Sandbox Ubuntu Image

This ubuntu image attempts to immitate a standard (non docker) ubuntu 
workstation.

It contains the essential packages pre-installed, and a non root user
(with `sudo` privileges) named `ubuntu`


## Usage

    $ docker run --rm -it dannyben/ubuntu


## Using it as a base image

Since this image sets the user to `ubuntu`, if you need to execute commands
that require root access in your image, you need to use this pattern:

```dockerfile
FROM dannyben/ubuntu
USER root

# root stuff goes here

USER ubuntu
```

---

- [On Docker Hub](https://hub.docker.com/r/dannyben/ubuntu/)
- [On GitHub](https://github.com/DannyBen/docker-ubuntu)

