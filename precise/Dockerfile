FROM ubuntu:precise

MAINTAINER Vincent Noel version: 0.1

RUN apt-get -qq update
RUN apt-get install -y libopenmpi-dev openmpi-bin libsundials-serial-dev libsundials-serial liblapack-dev libblas-dev libatlas-dev libfreetype6-dev libpng12-dev libatlas-base-dev python-dev python-pip python-setuptools git subversion gfortran g++ gcc make pkg-config unzip wget

RUN mkdir -p /home/travis/build/vincent-noel/libSigNetSim/
RUN wget http://downloads.sourceforge.net/project/sbml/test-suite/3.2.0/case-archives/sbml-semantic-test-cases-2016-07-27.zip -O /tmp/temp.zip 
RUN unzip -nq /tmp/temp.zip -d /tmp

RUN pip install pip --upgrade
RUN easy_install -U distribute
RUN pip install matplotlib mpld3 numpy PyDSTool python-libsbml scipy sympy python-libsedml bioservices pandas lxml coveralls
