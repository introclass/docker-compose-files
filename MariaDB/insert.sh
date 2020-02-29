#! /bin/sh
#
# insert.sh
# Copyright (C) 2020 lijiaocn <lijiaocn@foxmail.com wechat:lijiaocn>
#
# Distributed under terms of the GPL license.
#


#mysql -u testdb -ptestdb -h 127.0.0.1 -P 3306 -D testdb< ./sql/insert.sql
docker exec -i mysql sh -c 'exec mysql -utestdb -ptestdb -D testdb' < ./sql/insert.sql
