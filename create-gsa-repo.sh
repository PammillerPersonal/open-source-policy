#!/bin/sh

echo "Enter a new repository name:"
read REPO_NAME

if [ -d "$REPO_NAME" ] ; then
  echo "Directory already exists: $REPO_NAME"
  exit 1
fi

echo "Creating local Git repository: $REPO_NAME"
mkdir $REPO_NAME
cd $REPO_NAME
git init .
echo "Adding default files..."
sh -c "$(curl -sSL https://raw.githubusercontent.com/GSA/open-source-policy/master/init-gsa-repo.sh)"
sed -i 's/\[Repo Name\]/'"$REPO_NAME"'/' README.md
git add .
git commit -m "initial commit"
echo "Initialized Git repository: $REPO_NAME"
