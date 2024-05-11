# Используем официальный образ Node.js как базовый образ
FROM node:latest

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем файлы 'package.json' и 'package-lock.json' (если есть)
COPY package*.json ./

# Устанавливаем зависимости проекта
RUN npm install

# Копируем исходный код приложения в контейнер
COPY . .

CMD ["npm", "start"]