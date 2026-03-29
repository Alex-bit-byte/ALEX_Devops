#!/bin/bash
# Скрипт для быстрой генерации индексных страниц 6 сайтов
for i in {1..6}; do
  TARGET_DIR="/var/www/site$i/public_html"
  # Создаем директорию, если её нет
  sudo mkdir -p $TARGET_DIR
  # Создаем PHP файл
  echo "<?php echo '<h1>Welcome to Site #$i</h1>'; phpinfo(); ?>" | sudo tee $TARGET_DIR/index.php > /dev/null
  echo "Сайт $i создан в $TARGET_DIR"
done
# Установка прав
sudo chown -R nginx:nginx /var/www/site{1..6}