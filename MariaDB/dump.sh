#! /bin/sh
#
# dump.sh
# Copyright (C) 2020 lijiaocn <lijiaocn@foxmail.com wechat:lijiaocn>
#
# Distributed under terms of the GPL license.
#


#docker exec mysql sh -c 'exec mysqldump --all-databases -uroot -p"root"'  
docker exec mysql sh -c 'exec mysqldump -utestdb -ptestdb testdb'
