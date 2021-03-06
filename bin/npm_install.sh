#!/usr/bin/env bash

git submodule init
git submodule update

cd code

function npm_Install() {
  echo Running npm install on folder: $1
  cd $1
  npm install
  cd ..
}

npm_Install TM_GraphDB
npm_Install TM_Shared
npm_Install TM_Website
cd ../build
npm_Install TM_4_0_JSON_Data