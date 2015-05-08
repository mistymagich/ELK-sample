#!/bin/bash
set -e

service td-agent start
exec "$@"
