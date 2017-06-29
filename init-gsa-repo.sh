#!/bin/sh

curl -sO https://raw.githubusercontent.com/GSA/open-source-policy/master/LICENSE.md
curl -sO https://raw.githubusercontent.com/GSA/open-source-policy/master/CONTRIBUTING.md
curl -s https://raw.githubusercontent.com/GSA/open-source-policy/master/README_TEMPLATE.md -o README.md

sed 's/[Repo Name]/$REPO_NAME/' README.md

echo "Added default files."
