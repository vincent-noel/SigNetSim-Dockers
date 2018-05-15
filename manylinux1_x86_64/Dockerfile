FROM quay.io/pypa/manylinux1_x86_64:latest

MAINTAINER Vincent Noel version: 0.1

RUN yum -y update
RUN yum -y install openmpi.x86_64 openmpi-devel.x86_64 lapack-devel.x86_64 blas-devel.x86_64 atlas-devel.x86_64

RUN curl https://cmake.org/files/v3.11/cmake-3.11.1.tar.gz --output cmake-3.11.1.tar.gz
RUN tar -zxvf cmake-3.11.1.tar.gz
RUN cd cmake-3.11.1; ./bootstrap && make && make install; cd ..

RUN curl https://computation.llnl.gov/projects/sundials/download/sundials-3.1.1.tar.gz --output sundials-3.1.1.tar.gz
RUN tar -zxvf sundials-3.1.1.tar.gz
RUN cd sundials-3.1.1; mkdir builddir; cd builddir; cmake ..; make; make install; cd ../..

ADD build-wheels.sh /
