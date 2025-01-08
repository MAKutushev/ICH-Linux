#!/bin/bash
# Скрипт 2: Перемещение файлов

# Директории
DIR1="/opt/090924-wdm/Kutushev/homework/HW20/dir1"
DIR2="/opt/090924-wdm/Kutushev/homework/HW20/dir2"

# Создание директорий
mkdir -p "$DIR1" "$DIR2"

# Перемещение четных файлов
for FILE in "$DIR1"/*; do
  FILE_NAME=$(basename "$FILE")
  # basename извлекает имя файла без пути
  if (( FILE_NAME % 2 == 0 )); then
    mv "$FILE" "$DIR2/"
    echo "Перемещен файл: $FILE -> $DIR2/"
  fi
done

echo "Перемещение завершено!"
