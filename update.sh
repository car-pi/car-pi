#!/bin/bash
echo "RUNNING common/update.sh"
# sudo apt update -y
# sudo apt upgrade -y

git submodule init
git submodule update --recursive

git submodule foreach "./update.sh || true"
echo "Update complete for common/update.sh"
