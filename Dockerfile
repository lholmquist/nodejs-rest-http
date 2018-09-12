FROM bucharestgold/centos7-s2i-nodejs:latest

WORKDIR /opt/app-root/src

COPY package.json .
COPY package-lock.json .
RUN npm install

COPY . .

EXPOSE 8080

CMD npm run start
