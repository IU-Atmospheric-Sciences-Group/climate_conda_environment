# Conda environment for climate science

This repository contains resources to facilitate installing a climate-science-ready conda environment from scratch on several machine environments.  It uses mamba to deal with the complex dependencies required by a variety of climate-related packages (e.g., cartopy and geopandas).

* `requirements.txt` - contains a list of packages useful for climate science, intended to be installed via `mamba install -c conda-forge --yes --file requirements.txt`
* `requirements-pip.txt` - contains a list of additional packages that can only be installed using `pip install -r requirements_pip.txt`
* `install_bigred3.bash` - a bash script that automatically creates an environment named `climate_py38` on the IU BigRed3 supercomputer
