#!/bin/bash

set -e

cd packages/babel-standalone
yarn install
cd ../../
yarn run gulp build-babel-standalone
