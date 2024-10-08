# استخدم صورة أساسية من Node.js
FROM node:14

# إعداد مجلد العمل
WORKDIR /usr/src/app

# نسخ الملفات
COPY package*.json ./
RUN npm install
COPY . .

# افتح المنفذ
EXPOSE 80

# الأمر لتشغيل التطبيق
CMD ["npm", "start"]
