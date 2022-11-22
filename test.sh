#!/usr/bin/env bash

# A simple way for test.
# Executing this file, check reports.

# test case: Download single file & `--outfile` option & `--outdir` option
./gh-download -d cli/cli .gitignore
./gh-download -d yuler/gh-download README.md --outfile README.new.md
./gh-download -d yuler/actions nodejs/ci.yml --outfile .github/workflows/nodejs.yml
./gh-download -d yuler/gh-download README.md --outdir outdir

# test case: Download folder & `--outdir` option
./gh-download -d yuler/actions nodejs
./gh-download -d yuler/actions nodejs --outdir .github/workflows
./gh-download -d vercel/next.js examples/basic-export --outdir example

# test case: Download from GitHub `url` with file/folder
./gh-download -d https://github.com/cli/cli/blob/trunk/.gitignore
./gh-download -d https://github.com/cli/cli/blob/trunk/.gitignore --outfile outfile/.gitignore
./gh-download -d https://github.com/vercel/next.js/tree/v13.0.1/examples/basic-export
./gh-download -d https://github.com/vercel/next.js/tree/v13.0.1/examples/basic-export --outdir basic-export

# test case: `--branch` option
./gh-download -d vuejs/core CHANGELOG.md --branch v3.2.0

# test case: multiple path should ignore `--outfile` & `--outdir`
./gh-download -d vuejs/core package.json LICENSE --outfile xxx
./gh-download -d vercel/next.js examples/basic-export examples/basic-css --outdir xxx

# test case: with escape for filename, #11
./gh-download -d https://github.com/VeryGoodOpenSource/dart_frog/tree/main/examples/echo
