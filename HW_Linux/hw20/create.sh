#!/bin/bash

# Скрипт 1: Генерация файлов
# Директории
DIR1="/opt/090924-wdm/Kutushev/homework/HW20/dir1"
DIR2="/opt/090924-wdm/Kutushev/homework/HW20/dir2"

# Создание директорий
mkdir -p "$DIR1" "$DIR2"

# Генерация 100 случайных файлов
for i in {1..100}; do
  # Переменная $RANDOM - встроенная переменная Bash, которая генерирует случайное число от 0 до 32767
  FILE_NAME=$RANDOM
  touch "$DIR1/$FILE_NAME"
  echo "Создан файл: $DIR1/$FILE_NAME"
done

echo "Файлы сгенерированы!"
