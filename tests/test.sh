#!/usr/bin/env bash

# test `--outdir`
../gh-download yuler/actions nodejs --outdir .github/workflows

# test `--outfile`
../gh-download yuler/actions nodejs/ci.yml --outfile .github/workflows/nodejs.yml

# test `url`
../gh-download https://github.com/mrdoob/three.js/tree/dev/examples
