#! /bin/bash

export LUAJIT_LIB=/usr/local/luajit/lib/
export LUAJIT_INC=/usr/local/luajit/include/luajit-2.1
export OPENSSL=/usr/local/
prefix=/usr/local/nginx

if [ $1 ]; then
./configure \
    --prefix=$prefix \
    --with-ld-opt="-Wl,-rpath,/usr/local/luajit/lib/,-rpath,/usr/local/openssl/lib/" \
    --pid-path=/var/run/nginx/nginx.pid \
    --lock-path=/var/lock/nginx.lock \
    --with-openssl=/root/code/openssl-1.1.1w \
    --with-http_gzip_static_module \
    --with-http_ssl_module \
    --with-http_v2_module \
    --add-module=modules/ngx_devel_kit \
    --add-module=modules/lua-nginx-module \
    --add-module=modules/ngx_http_sqlite_module
fi
make && make install
