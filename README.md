# Conda environment for climate science

This repository contains resources to facilitate installing a climate-science-ready conda environment from scratch on several machine environments.  It uses mamba to deal with the complex dependencies required by a variety of climate-related packages (e.g., cartopy and geopandas).

* `requirements.yml` - contains a list of packages useful for climate science, intended to be installed via `mamba env update -f requirements.yml`
* `install_bigred3.bash` - a bash script that automatically creates an environment named `climate_py38` on the IU BigRed3 supercomputer. If the environment has already been created, running again will update the packages to their latest compatible versions
