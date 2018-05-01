FROM debian:stretch

MAINTAINER Vincent Noel version: 0.1

RUN apt-get -qq update
RUN apt-get install -y curl git
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/develop/scripts/install_dep3.sh | bash -

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn

RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/develop/requirements.txt | xargs pip3 install
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/SigNetSim/develop/scripts/pip_requirements-python3 | xargs pip3 install

RUN git clone -b develop https://github.com/vincent-noel/SigNetSim.git
RUN /bin/bash /SigNetSim/scripts/install-python3.sh

EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND