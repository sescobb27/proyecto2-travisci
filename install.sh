#!/bin/bash

export POSTGRESQL_USER="postgres"
export POSTGRESQL_PASS=""
export PGHOST="localhost"

ls
pwd
ls -R
go build -i
go test -v ./...
