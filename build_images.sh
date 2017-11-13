#!/bin/bash

if [ $1 = "signetsim" ]; then

    docker build -t signetsim/signetsim signetsim || exit 1;
    docker push signetsim/signetsim || exit 1;

elif [ $1 = "develop" ]; then

    docker build -t signetsim/signetsim:develop develop || exit 1;
    docker push signetsim/signetsim:develop || exit 1;

elif [ $1 = "notebook" ]; then

    docker build -t signetsim/notebook jupyter-notebook || exit 1;
    docker push signetsim/notebook || exit 1;

else

    docker build -t signetsim/travis_testenv:$1 $1 || exit 1;
    docker push signetsim/travis_testenv:$1 || exit 1;

fi

