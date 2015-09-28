#!/bin/bash
set -eu -o pipefail
cd /tmp/conda-recipes
anaconda login --hostname bcbio-conda-auto --username `cat anaconda-user.txt` --password `cat anaconda-pass.txt`
cd /tmp/conda-recipes
export PATH=/tmp/conda-build/anaconda/bin:$PATH
/tmp/conda-build/anaconda/bin/python update_binstar_packages.py $*
