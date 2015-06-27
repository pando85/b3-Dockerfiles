Docker files for BigBrotherBot (B3)
===================================

Docker files to run different flavours of B3 in [Docker containers](http://docker.io)


| Dockerfile            |  description                               |
|-----------------------|--------------------------------------------|
| Dockerfile-b3         | B3 latest stable version                   |




requirements
------------

* a host running [Docker](http://docker.io)
* one of the B3 Dockerfiles

Build the images
----------------

```bash
docker build -t b3 github.com/pando85/b3-Dockerfiles
```


Run the containers
------------------

* create a directory with your B3 config on the docker host machine in `/home/yourname/b3-share/`
* copy in there your `b3.xml` file and other B3 plugin config files
* create a new B3 container using config file `/home/yourname/b3-share/b3.xml` 

```bash
docker run -d -v /home/yourname/b3-share:/root/b3 b3 --config root/b3/b3.xml
```
