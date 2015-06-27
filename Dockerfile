FROM phusion/baseimage 

RUN apt-get update

# install B3
RUN apt-get -y install python-pip python-dev build-essential libsqlite3-dev 
RUN pip install b3

#
ENTRYPOINT ["/usr/local/bin/b3_run"]
CMD ["--help"]
