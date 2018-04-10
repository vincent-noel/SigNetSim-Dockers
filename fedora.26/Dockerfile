FROM fedora:26

MAINTAINER Vincent Noel version: 0.1

RUN dnf -y update
RUN dnf -y install findutils git
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/develop/scripts/install_dep_fedora.sh | bash -

RUN dnf -y install nodejs
RUN npm install -g yarn

RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/develop/requirements.txt | xargs pip install
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/SigNetSim/develop/scripts/pip_requirements | sed 's|git+https://github.com/vincent-noel/libSigNetSim.git@develop||' | xargs pip install

RUN git clone -b develop https://github.com/vincent-noel/sbml-test-suite.git /tmp/sbml-test-suite
RUN mv /tmp/sbml-test-suite/dev/utilities/make-tag-map/make-tag-map.sh /tmp/sbml-test-suite/
RUN cd /tmp/sbml-test-suite; ./make-tag-map.sh cases/semantic/.cases-tags-map; python dev/utilities/python-sedml/write_sedml.py; cd /

RUN mkdir -p /home/travis/build/vincent-noel/libSigNetSim/
RUN mkdir -p /home/travis/build/vincent-noel/SigNetSim/