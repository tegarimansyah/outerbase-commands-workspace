#!/bin/bash

set -e

if [ -z "$1" ]; then
  echo "Error: COMMAND_NAME (first argument) is required."
  echo
  echo "Usage (choose one): "
  echo -e "\t$ ./scripts/new_command COMMAND_NAME NODE_NAME"
  echo -e "\t$ pnpm run new COMMAND_NAME NODE_NAME"
  echo
  exit 1
fi

COMMAND_NAME=$1
NODE_NAME=${2:-node-1}
FULL_NAME=$COMMAND_NAME-$NODE_NAME
PROJECT_PATH="commands/$FULL_NAME"

mkdir $PROJECT_PATH
sed -e "s/full_name/$FULL_NAME/g" scripts/templates/vite.config.ts > $PROJECT_PATH/vite.config.ts
sed -e "s/package_name/$FULL_NAME/g" scripts/templates/package.json > $PROJECT_PATH/package.json
cp -R scripts/templates/src $PROJECT_PATH/

echo "Commands created at ./$PROJECT_PATH/src/index.js"
echo
echo "You can run the following command from project root"
echo
echo -e "\t$ pnpm --filter \"$FULL_NAME\" install # install dependency"
echo -e "\t$ pnpm --filter \"$COMMAND_NAME-*\" run build-minify-outerbase # run build script for all nodes"
echo 
echo "Happy building!"
echo 