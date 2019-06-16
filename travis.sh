#!/bin/bash -x

LAST_COMMIT_ID=$(git log --pretty=format:'%h' -n 1)
PROJECTS=$(git diff-tree --no-commit-id --name-only -r ${LAST_COMMIT_ID} | cut -d"/" -f1 | uniq)

for P in ${PROJECTS}; 
do
  echo "Building ${P}"
  pushd ${P} 
  make login build push
  popd
done
 