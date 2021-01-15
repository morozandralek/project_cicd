#!/bin/bash

sed  -i -e 's/\(^cuba.dbmsType = \).*/\1postgres/' fixicch2_dist/local.app.properties
sed  -i -e 's/\(^cuba.dataSource.host = \).*/\110.68.21.181/' fixicch2_dist/local.app.properties
sed  -i -e 's/\(^cuba.dataSource.port = \).*/\15432/' fixicch2_dist/local.app.properties
sed  -i -e 's/\(^cuba.dataSource.dbName = \).*/\1fixicch2_test/' fixicch2_dist/local.app.properties
sed  -i -e 's/\(^cuba.dataSource.username = \).*/\1'$1'/' fixicch2_dist/local.app.properties
sed  -i -e 's/\(^cuba.dataSource.password = \).*/\1'$2'/' fixicch2_dist/local.app.properties
