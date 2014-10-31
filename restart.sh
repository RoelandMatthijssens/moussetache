#!/bin/bash
set -e

echo "stopping passenger"
passenger stop --pid-file tmp/pids/passenger.pid
echo "starting passenger"
passenger start -S tmp/server.socket -e production -d
