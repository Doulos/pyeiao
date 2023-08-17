# Running the notebook

## Using your machine

### Pre-requisites

To run the notebook on your computer, you need:
- Python 3.8 or above installed.
- the ability to create a virtual environment using `python -m venv` for python3.  On some systems, this feature might require a seperate package installation.
- the ability to run `pip install` to install Python 3 packages from the [PyPI server](https://pypi.org/). On some systems, pip for Python 3 needs to be installed separately.
- the ability to run jupyter notebook locally. Per default, the Jupyter notebook starts a local TCP server on port 8888. Some IT-policies might deny this.

### Setting And Running The Notebook

We provide a `run` helper script to guide you through the installation
procedure. On the first run, it installs all needed python dependencies, and
starts the notebook.

**This script is for guidance only**. It is solely meant as documentation.
It may work out of the box, or may need some further tunings on your
system.

| Linux & Mac                   | Windows                              |
|-------------------------------|--------------------------------------|
| In your shell:                | Using windows explorer (or a shell): |
| - go to the `pyeiao` folder   | - navigate to the `pyeiao` folder    |
| - execute `run.sh`            | - launch `run.bat`                   |

### Facing some problems?

Please check our [FAQ](FAQ.md) first. Feel free to raise a bug or submit
a patch!

## Using binder
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Doulos/pyeiao/HEAD?urlpath=tree%2Feiao.ipynb)

[mybinder.org](https://mybinder.readthedocs.io/en/latest/#what-is-binder) is a
*free service* allowing to run our Jupyter notebook in the cloud. You only
need a web-browser.

To launch the notebook, simply click on the **launch binder** icon above or [click here](https://mybinder.org/v2/gh/Doulos/pyeiao/HEAD?urlpath=tree%2Feiao.ipynb).

**Note:** This service is free of charge. As such, launch time may vary greatly and rate limits apply. Be patient (give at least ~3-5 minutes time) and try out later if you can't start the notebook. Or consider running the notebook locally on your machine.

If you find mybinder.org usefull, consider making [a small donation](https://numfocus.salsalabs.org/donate-to-binder/index.html).


