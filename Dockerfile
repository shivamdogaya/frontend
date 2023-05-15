FROM node:alpine
EXPOSE 3000
WORKDIR ./
COPY package.json ./
RUN  npm uninstall http-errors && npm install
COPY . ./
CMD ["npm", "start"]
