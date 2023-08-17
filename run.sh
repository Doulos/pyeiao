#!/usr/bin/env bash

# Copyright 2023 by Doulos, https://www.doulos.com/
# Author : Loic Domaigne
# Webinar: "Python: Everything Is An Object"
# SPDX-License-Identifier: Apache-2.0

set -xeE

EAIO_VENV=eiao_venv
LOGF=runner.log
PY=python3

exec 2> $LOGF

trap 'oops $? $LINENO' ERR
oops() {
	echo "*** ERROR (rc=$1) occured at line $2"
	echo "logging packages installed"
	echo "pip list:" >> $LOGF
	pip list >> $LOGF
	mv $EAIO_VENV broken_install
	echo "Installation aborted"
        deactivate
	exit $1
}


if [ -d ${EAIO_VENV} ] 
then 
    source ${EAIO_VENV}/bin/activate
    jupyter nbclassic --NotebookApp.default_url='nbclassic/notebooks/eiao.ipynb'
else
    echo Setup virtual environment
    $PY -m venv ${EAIO_VENV}
    source ${EAIO_VENV}/bin/activate
    $PY -m pip install -r requirements.txt

    echo setup and activate nbtutor jupyter extension
    jupyter nbclassic-extension install nbtutor --py --sys-prefix
    jupyter nbclassic-extension enable nbtutor --py --sys-prefix

    echo start jupyter notebook
    jupyter nbclassic --NotebookApp.default_url='nbclassic/notebooks/eiao.ipynb'
fi
deactivate
