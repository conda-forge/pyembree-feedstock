#!/bin/bash
set -e
set -x

export C_INCLUDE_PATH="${PREFIX}/include:${C_INCLUDE_PATH}"
export CPLUS_INCLUDE_PATH="${PREFIX}/include:${CPLUS_INCLUDE_PATH}"

# ${PYTHON} setup.py install --prefix=$PREFIX
${PYTHON} -m pip install -vv --no-deps --ignore-installed --target ${PREFIX} .
