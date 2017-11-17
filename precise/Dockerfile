FROM ubuntu:precise

MAINTAINER Vincent Noel version: 0.1

RUN apt-get -qq update
RUN apt-get install -y curl wget python-pip
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN ln -s /usr/local/bin/pip /usr/bin
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/test_submodels/scripts/install_dep.sh | bash -

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn

RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/test_submodels/requirements.txt | xargs pip install
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/SigNetSim/simplify_deps/scripts/pip_requirements | sed 's|git+https://github.com/vincent-noel/libSigNetSim.git@test_submodels||' | xargs pip install

RUN git clone -b develop https://github.com/vincent-noel/sbml-test-suite.git /tmp/sbml-test-suite
RUN mv /tmp/sbml-test-suite/src/utilities/make-tag-map/make-tag-map.sh /tmp/sbml-test-suite/
RUN cd /tmp/sbml-test-suite; ./make-tag-map.sh cases/semantic/.cases-tags-map; python src/utilities/python-sedml/write_sedml.py; cd /

RUN mkdir -p /home/travis/build/vincent-noel/libSigNetSim/
RUN mkdir -p /home/travis/build/vincent-noel/SigNetSim/