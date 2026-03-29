#!/bin/bash
# Скрипт создает 6 конфигов Nginx из одного шаблона

TEMPLATE="native-server/nginx-configs/site.template"
OUTPUT_DIR="native-server/nginx-configs/ready"

mkdir -p $OUTPUT_DIR

for i in {1..6}; do
    # Заменяем {{ID}} на номер сайта и сохраняем в новый файл
    sed "s/{{ID}}/$i/g" $TEMPLATE > $OUTPUT_DIR/site$i.conf
    echo "Конфиг для сайта $i готов."
done