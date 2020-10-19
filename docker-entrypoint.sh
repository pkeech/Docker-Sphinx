#!/bin/bash
if [ ! -f ./conf.py ]; then
    echo "== Sphinx docs is not initialized =="
    echo " - Map a volume to /docs to work on existing Documentation"
    echo " - Run sphinx-quickstart to create a new set of Documentation"
    tail -F /dev/null
fi

## START SPHINX
sphinx-autobuild . _build_html --host 0.0.0.0 --port 8000