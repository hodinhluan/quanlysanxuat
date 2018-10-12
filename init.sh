#!/bin/bash

# just keep going if we don't have anything to install
set +e

# export secret before anything
source /app/.profile.d/ruby.sh


# if [ "$RAILS_ENV" == "production" ]; then
#   bundle exec rake assets:precompile
# fi

# for SCRIPT in $POST_RUN_SCRIPT_PATH/*; do
#   [ -f "$SCRIPT" ] || continue
#   set -x;
#   source $SCRIPT;
#   { set +x; } 2>/dev/null
# done

set -e

exec "$@"
