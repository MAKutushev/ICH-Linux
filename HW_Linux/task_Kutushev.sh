#!/bin/bash

# Переходим в нужную рабочую директорию
cd /opt/090924-wdm/Kutushev || exit 1

# Получаем текущую дату в формате DD.MM.YY
current_date=$(date +"%d.%m.%y")

# Создаем 10 файлов с порядковым номером и датой
for i in {1..10}; do
    echo "This file was created on $current_date" > "${i}_${current_date}.txt"
done

