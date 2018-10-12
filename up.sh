#!/bin/bash

# just keep going if we don't have anything to install
set +e

# setup database
rails db:migrate
rails db:setup

# run server
rails server

set -e

exec "$@"
