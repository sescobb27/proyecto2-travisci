#!/bin/bash

export POSTGRESQL_USER="postgres"
export POSTGRESQL_PASS=""
export PGHOST="localhost"

go get github.com/stretchr/testify/assert &&  \
go get github.com/lib/pq && \
go get ./... &&\
go test ./...
