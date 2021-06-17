#!/bin/bash
module load anaconda

set -e
set -x

PYTHON_VERSION=3.8
ENVIRONMENT_NAME=climate_py${PYTHON_VERSION/./}

conda env list > $HOME/.my_conda_envs

#if the current environment name is already found in your environments, just update instead
if [["$(cat $HOME/.my_conda_envs)" != *"${ENVIRONMENT_NAME} "* ]]; then

  conda create -y --quiet -c conda-forge -n ${ENVIRONMENT_NAME} python=${PYTHON_VERSION}

  source activate $ENVIRONMENT_NAME

  # install mpi4py
  #MPICC="mpicc -shared" pip install --no-binary=mpi4py mpi4py

  # install mamba
  conda install -c conda-forge mamba --quiet --yes

  # install conda packages (channels managed in YAML file)
  mamba install --yes --file requirements.yml

  # install pip packages
  pip install -r requirements_pip.txt

  # activate the jupyter kernel
  ipython kernel install --name "${ENVIRONMENT_NAME}" --user

else

  source activate $ENVIRONMENT_NAME
  
  mamba env update -n ${ENVIRONMENT_NAME} python=${PYTHON_VERSION} --file requirements.yml

