#!/bin/bash

set -e

ctx logger info "Writing date"

cd /tmp

date>date.txt
