FROM node:alpine
EXPOSE 3000
WORKDIR ./
COPY package.json ./
RUN rm -rf node_modules && rm package-lock.json && npm uninstall http-errors && npm install
COPY . ./
CMD ["npm", "start"]
