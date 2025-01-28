#!/usr/bin/env bash

#
# Bitbucket Pipelines Pipe: YamlLint
#

source "$(dirname "$0")/common.sh"

info "Executing the pipe..."

# Required parameters
YAMLLINT_PATH=${YAMLLINT_PATH:="."}

# Default parameters
DEBUG=${DEBUG:="false"}

info "YAMLLINT_PATH is set to: ${YAMLLINT_PATH}"

yamllint "${YAMLLINT_PATH}" $@
