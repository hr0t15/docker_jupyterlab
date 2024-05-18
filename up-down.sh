#!/bin/bash

# Docker ComposeのコンテナIDを取得
DCPS=$(docker compose ps -q)

if [ -z "$DCPS" ]; then
    # コンテナが起動していない場合
    echo "Launch..."
    docker compose build
    xdg-open http://localhost:8888
    docker compose up
else
    # コンテナが起動している場合
    echo "Shutdown..."
    docker compose down
fi
