FROM opensuse/leap:42.3

MAINTAINER Vincent Noel version: 0.1

RUN zypper -n refresh
RUN zypper -n install openssl-devel; zypper -n install python; zypper -n install git python-pip; pip install pip --upgrade; pip install setuptools distribute --upgrade

RUN pip install python-libsbml python-libsedml
RUN git clone -b develop https://github.com/vincent-noel/sbml-test-suite.git /tmp/sbml-test-suite
RUN mv /tmp/sbml-test-suite/dev/utilities/make-tag-map/make-tag-map.sh /tmp/sbml-test-suite/
RUN cd /tmp/sbml-test-suite; ./make-tag-map.sh cases/semantic/.cases-tags-map; python dev/utilities/python-sedml/write_sedml.py; cd /

RUN mkdir -p /home/travis/build/vincent-noel/libSigNetSim/
RUN mkdir -p /home/travis/build/vincent-noel/SigNetSim/