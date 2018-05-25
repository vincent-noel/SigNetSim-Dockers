FROM ubuntu:bionic

MAINTAINER Vincent Noel version: 0.1

RUN apt-get -qq update
RUN apt-get install -y curl git
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/develop/scripts/install_dep3.sh | bash -

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn

RUN pip install python-libsbml python-libsedml
RUN git clone -b develop https://github.com/vincent-noel/sbml-test-suite.git /tmp/sbml-test-suite
RUN mv /tmp/sbml-test-suite/dev/utilities/make-tag-map/make-tag-map.sh /tmp/sbml-test-suite/
RUN cd /tmp/sbml-test-suite; ./make-tag-map.sh cases/semantic/.cases-tags-map; python3 dev/utilities/python-sedml/write_sedml.py; cd /

RUN mkdir -p /home/travis/build/vincent-noel/libSigNetSim/
RUN mkdir -p /home/travis/build/vincent-noel/SigNetSim/