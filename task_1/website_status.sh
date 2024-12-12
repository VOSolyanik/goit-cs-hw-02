#!/bin/bash

# Масив із URL вебсайтів
websites=(
  "https://google2.com"
  "https://facebook.com"
  "https://twitter.com"
)

# Ім'я файлу логів
log_file="website_status.log"

# Очищення попереднього лог-файлу
> "$log_file"

# Цикл для перевірки всіх сайтів у списку
for site in "${websites[@]}";
do
  status_code=$(curl -o /dev/null -s -w "%{http_code}" -L "$site")

  if [ "$status_code" -eq 200 ]; then
    echo "$site is UP" >> "$log_file"
  else
    echo "$site is DOWN" >> "$log_file"
  fi
done

# Повідомлення про завершення роботи
echo "Results written into log file: $log_file"