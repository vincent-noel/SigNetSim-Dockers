FROM debian:stretch

MAINTAINER Vincent Noel version: 0.1

RUN apt-get -qq update
RUN apt-get install -y curl
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/master/scripts/install_dep.sh | bash -

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn

RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/master/requirements.txt | xargs pip install
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/SigNetSim/master/scripts/pip_requirements | sed 's|git+https://github.com/vincent-noel/libSigNetSim.git@develop||' | xargs pip install

RUN git clone https://github.com/vincent-noel/SigNetSim.git
RUN /bin/bash /SigNetSim/scripts/install.sh

EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND