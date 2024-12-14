#!/bin/bash

tar -xf v0.13.tar.gz
cd lua-resty-lrucache-0.13
make install LUA_LIB_DIR=/usr/local/nginx/lib/lua
cd -

tar -xf v2.1-20230410.1.tar.gz
cd luajit2-2.1-20230410.1
make clean && make && make install PREFIX=/usr/local/luajit
cd -

tar -xf v0.1.28.tar.gz
cd lua-resty-core-0.1.28
make install PREFIX=/usr/local/nginx/
cd -

tar -xf openssl-1.1.1w.tar.gz
cd openssl-1.1.1w
make && make install

yum install python3
pip3 install requests
pip3 install chinese_calendar
yum install sqlite-devel
yum install pcre pcre-devel
yum install lua-devel
