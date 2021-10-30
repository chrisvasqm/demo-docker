FROM node:14.16.0-alpine3.13
RUN addgroup app && adduser -S app -G app
USER app
WORKDIR /app
COPY . .
RUN npm install
ENV API_URL=http://api.app.com/
EXPOSE 3000