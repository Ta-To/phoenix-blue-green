#!/bin/bash
# e.g.
# primary.sh beta
# - 指定した alpha/beta のいずれかをprimaryに変更する
# - 雑だけれど用意済みの設定ファイルで上書きする

cp nginx/$1.conf nginx/default.conf
docker-compose exec web nginx -s reload
