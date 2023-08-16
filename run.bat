@echo off

REM Copyright 2023 by Doulos, webinar "Python: Everything Is An Object"
REM SPDX-License-Identifier: Apache-2.0

set eiao_venv="eiao_venv"

if exist "%eiao_venv%\" (
    call %eiao_venv%\Scripts\activate.bat
    jupyter notebook eiao.ipynb
) else (
    echo Setup virtual environment
    python -m venv %eiao_venv%
    call %eiao_venv%\Scripts\activate.bat
    python -m pip install -r requirements.txt

    echo setup and activate nbtutor jupyter extension
    jupyter nbextension install --user --overwrite --py nbtutor
    jupyter nbextension enable nbtutor --user --py
    
    echo start jupyter notebook
    jupyter notebook eiao.ipynb
)
deactivate
