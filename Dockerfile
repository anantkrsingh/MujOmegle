FROM node:20.9.0

COPY . .
RUN npm install
RUN npm rebuild sqlite3 --build-from-source
EXPOSE 8080
CMD ["npm","run","dev"]