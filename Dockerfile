# VERSION 1.0
FROM keboola/base
MAINTAINER Jiri Tobolka (jiri.tobolka@bizztreat.com)

WORKDIR /home

# Initialize 
RUN git clone https://github.com/jiritobolka/gd-user-management.git ./
RUN git checkout master

ENTRYPOINT ruby ./main.rb --data=/data
