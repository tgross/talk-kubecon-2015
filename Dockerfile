FROM node:slim
RUN npm install -g http-server
ADD . /srv/
CMD /usr/local/bin/node /usr/local/bin/http-server /srv -p 80
