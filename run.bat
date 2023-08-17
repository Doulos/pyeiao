@echo off

REM Copyright 2023 by Doulos, https://www.doulos.com/
REM Author : Loic Domaigne
REM Webinar: "Python: Everything Is An Object"
REM SPDX-License-Identifier: Apache-2.0

set eiao_venv="eiao_venv"
set pyexe="python"

if exist "%eiao_venv%\" (
    call %eiao_venv%\Scripts\activate.bat
    jupyter nbclassic --NotebookApp.default_url='nbclassic/notebooks/eiao.ipynb'
) else (
    echo Setup virtual environment
    %pyexe% -m venv %eiao_venv%
    call %eiao_venv%\Scripts\activate.bat
    %pyexe% -m pip install -r requirements.txt

    echo setup and activate nbtutor jupyter extension
    jupyter nbclassic-extension install nbtutor --py --sys-prefix
    jupyter nbclassic-extension enable nbtutor --py --sys-prefix
    
    echo start jupyter notebook
    jupyter nbclassic --NotebookApp.default_url='nbclassic/notebooks/eiao.ipynb'
)
deactivate
