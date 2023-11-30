FROM node:16.3.0-alpine
COPY . .
RUN apk add --no-cache make gcc g++ python3
RUN npm install
RUN npm rebuild sqlite3 --build-from-source
EXPOSE 8080
CMD ["npm","run","dev"]