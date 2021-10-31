FROM node:14.16.0-alpine3.13
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY . .
ENV API_URL=http://api.app.com/
EXPOSE 3000

RUN addgroup app && adduser -S -G app app
RUN mkdir node_modules/.cache
RUN chown app:app node_modules/.cache

USER app
CMD ["npm", "start"]