# gh download

[GitHub CLI] extension for download folders/files

## Install

```bash
gh extension install yuler/gh-download
```

## Features

- Download folders/files from GitHub
- Support private repository

## How it works

- Get GitHub token by `gh config get -h github.com oauth_token` command, for support private repository
- Normalize repository url
- Use [GitHub `get a tree` API] filter path
- Path suffix with `/` means is folder, otherwise checked automatically via api
- Traverse the folder and download it via curl with GitHub token

## Usage

```bash
# Create alias dl => download
gh alias set dl "download"
# Download files
gh dl yuler/gh-download README.md gh-download
# Download `.github` folders from `cli/cli` repo
gh dl cli/cli .github
# Download from github.com url
gh dl https://github.com/yuler/actions/blob/3541e20e6f195a812b0e775058224a6d6f4b9fc1/ci/nodejs.yml
```

## Related

- [download-directory.github.io]
- [gh-cp]

<!-- Links -->

[github cli]: https://github.com/cli/cli
[download-directory.github.io]: https://download-directory.github.io/
[gh-cp]: https://github.com/mislav/gh-cp
[github `get a tree` api]: https://docs.github.com/en/rest/reference/git#get-a-tree
