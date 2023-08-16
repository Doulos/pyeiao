#!/bin/sh

# Copyright 2023 by Doulos, webinar "Python: Everything Is An Object"
# SPDX-License-Identifier: Apache-2.0

EAIO_VENV=eiao_venv

if [ -d ${EAIO_VENV} ] 
then 
    source ${EAIO_VENV}/bin/activate
    jupyter notebook eiao.ipynb
else
    echo Setup virtual environment
    python3 -m venv ${EAIO_VENV}
    source ${EAIO_VENV}/bin/activate
    python3 -m pip install -r requirements.txt

    echo setup and activate nbtutor jupyter extension
    jupyter nbextension install --user --overwrite --py nbtutor
    jupyter nbextension enable nbtutor --user --py
    
    echo start jupyter notebook
    jupyter notebook eiao.ipynb
fi
deactivate
