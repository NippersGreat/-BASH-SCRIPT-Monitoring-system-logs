#!/bin/bash

# Файл системного лога
LOG_FILE="/var/log/syslog"

# Получатель уведомлений по электронной почте
EMAIL_RECIPIENT="your.email@example.com"

# Команда для поиска ошибок в логе
grep -i "error" "$LOG_FILE" | while read -r line; do
  # Отправка уведомления по электронной почте
  echo "$line" | mail -s "Ошибка в системном логе" "$EMAIL_RECIPIENT"
done