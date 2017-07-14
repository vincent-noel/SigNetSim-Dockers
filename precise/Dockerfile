FROM ubuntu:precise

MAINTAINER Vincent Noel version: 0.1

RUN apt-get -qq update
RUN apt-get install -y curl
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/develop/scripts/install_dep.sh | bash -

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g bower

RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/develop/requirements.txt | xargs pip install -v
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/SigNetSim/develop/scripts/pip_requirements | xargs pip install -v

RUN wget http://downloads.sourceforge.net/project/sbml/test-suite/3.2.0/case-archives/sbml-semantic-test-cases-2016-07-27.zip -O /tmp/temp.zip
RUN unzip -nq /tmp/temp.zip -d /tmp

RUN mkdir -p /home/travis/build/vincent-noel/libSigNetSim/
RUN mkdir -p /home/travis/build/vincent-noel/SigNetSim/