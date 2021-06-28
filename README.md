# Conda environment for climate science

This repository contains resources to facilitate installing a climate-science-ready conda environment from scratch on several machine environments.  It uses mamba to deal with the complex dependencies required by a variety of climate-related packages (e.g., cartopy and geopandas).

* `requirements.yml` - contains a list of packages useful for climate science, intended to be installed via `mamba env update -f requirements.yml`
* `install_bigred3_or_carbonate.bash` - a bash script that automatically creates an environment named `climate_py38` on the IU BigRed3 or Carbonate supercomputers. If the environment has already been created, running again will update the packages to their latest compatible versions
* `install_cori.bash` - a bash script that automatically creates an environment named `climate_py38` on the NERSC Cori machine.  It takes care of properly compiling `mpi4py` using the appropriate compiler wrappers (see https://docs.nersc.gov/development/languages/python/parallel-python/#mpi4py).
