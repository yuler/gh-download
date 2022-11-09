#!/usr/bin/env bash

# A simple way for test.
# Executing this file.
# Run `git clean -fd` clean the directory.

# test case: Download single file & `--outfile` option & `--outdir` option
./gh-download cli/cli .gitignore
./gh-download yuler/gh-download README.md --outfile README.new.md
./gh-download yuler/actions nodejs/ci.yml --outfile .github/workflows/nodejs.yml
./gh-download yuler/gh-download README.md --outdir outdir

# test case: Download folder & `--outdir` option
./gh-download yuler/actions nodejs
./gh-download yuler/actions nodejs --outdir .github/workflows
./gh-download vercel/next.js examples/basic-export --outdir example

# test case: Download from GitHub `url` with file/folder
./gh-download https://github.com/cli/cli/blob/trunk/.gitignore
./gh-download https://github.com/cli/cli/blob/trunk/.gitignore --outfile outfile/.gitignore
./gh-download https://github.com/vercel/next.js/tree/v13.0.1/examples/basic-export
./gh-download https://github.com/vercel/next.js/tree/v13.0.1/examples/basic-export --outdir basic-export

# test case: `--branch` option
./gh-download vuejs/core CHANGELOG.md --branch v3.2.0

# test case: multiple path ignore `--outfile` & `--outdir`
./gh-download vuejs/core package.json LICENSE --outfile xxx
./gh-download vercel/next.js examples/basic-export examples/basic-css --outdir xxx
