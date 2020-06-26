#!/bin/bash
set -e

mkdir -p binaries
pushd binaries

curl -L https://github.com/open-policy-agent/conftest/releases/download/v0.19.0/conftest_0.19.0_Darwin_x86_64.tar.gz -o conftest_0.19.0_Darwin_x86_64.tar.gz
tar xzf conftest_0.19.0_Darwin_x86_64.tar.gz

popd

