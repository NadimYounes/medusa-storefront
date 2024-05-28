FROM node:latest

WORKDIR /app/storefront

COPY . .

RUN rm -rf node_modules

RUN apt-get update

RUN yarn --network-timeout 1000000

ENTRYPOINT [ "yarn", "dev"]
