FROM node:alpine
EXPOSE 3000
WORKDIR ./
COPY package.json ./
RUN  npm install && npm uninstall http-errors
COPY . ./
CMD ["npm", "start"]
