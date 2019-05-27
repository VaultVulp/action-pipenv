#!/bin/bash
set -e

echo "#########################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

sh -c "pipenv $*"

echo "#########################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"
