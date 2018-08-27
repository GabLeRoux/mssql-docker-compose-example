#!/usr/bin/env bash

set -x

/opt/mssql-tools/bin/sqlcmd -U SA -P $SA_PASSWORD -Q 'CREATE DATABASE test;'
/opt/mssql-tools/bin/sqlcmd -U SA -P $SA_PASSWORD -Q 'SELECT name FROM master.sys.databases'
