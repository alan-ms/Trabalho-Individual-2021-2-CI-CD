#!/bin/bash
set -e

rm -f /aplicacao/tmp/pids/server.pid

rails db:create
rails db:migrate
rails db:seed

rails s -p 3000 -b 0.0.0.0

exec "$@"