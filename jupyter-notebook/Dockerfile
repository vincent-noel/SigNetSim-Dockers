FROM debian:stretch

MAINTAINER Vincent Noel version: 0.1

RUN apt-get -qq update
RUN apt-get install -y curl
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/master/scripts/install_dep.sh | bash -
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/master/requirements.txt | xargs pip install

RUN git clone https://github.com/vincent-noel/libSigNetSim.git
RUN curl -sL https://raw.githubusercontent.com/vincent-noel/libSigNetSim/master/scripts/install_dep.sh | bash -
RUN pip install -r /libSigNetSim/requirements.txt
RUN pip install /libSigNetSim
RUN pip install "jupyter<= 6"
RUN jupyter notebook --generate-config --allow-root
RUN printf "c = get_config()\nc.NotebookApp.password = u'sha1:1d43c5e9ef6c:74e8d4d9f0da82f442ee54ced5b11eb45a969bab'" >> /root/.jupyter/jupyter_notebook_config.py

EXPOSE 8888

CMD jupyter notebook --allow-root --no-browser --ip=0.0.0.0
