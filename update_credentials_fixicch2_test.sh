#!/bin/bash

sed  -i -e 's/\(^cuba.dbmsType = \).*/\1postgres/' docker-image/local.app.properties
sed  -i -e 's/\(^cuba.dataSource.host = \).*/\110.68.21.181/' docker-image/local.app.properties
sed  -i -e 's/\(^cuba.dataSource.port = \).*/\15432/' docker-image/local.app.properties
sed  -i -e 's/\(^cuba.dataSource.dbName = \).*/\1fixicch2_test/' docker-image/local.app.properties
sed  -i -e 's/\(^cuba.dataSource.username = \).*/\1'$1'/' docker-image/local.app.properties
sed  -i -e 's/\(^cuba.dataSource.password = \).*/\1'$2'/' docker-image/local.app.properties
