FROM node:16.13-alpine

# install global npm packages.
RUN #npm install -g npm
RUN #npm install -g yarn

RUN mkdir -p /var/www/gateway
WORKDIR /var/www/gateway
ADD . /var/www/gateway

RUN yarn install

CMD yarn build && yarn start:prod
