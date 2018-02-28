FROM centos:6.9
MAINTAINER Danny Ruijzendaal <danny.ruijzendaal@gmail.com>

# gdbserver port
EXPOSE 9091

RUN yum update -y
RUN yum groupinstall "Development Tools" -y
RUN yum groupinstall "Performance Tools" -y
RUN yum install valgrind libuuid-devel -y
RUN yum install gcc gcc-c++ make openssl-devel -y
RUN yum install gdb-gdbserver -y
RUN yum clean all
WORKDIR /app


CMD /bin/bash
