FROM node:14-buster

WORKDIR /usr/src/monitorss

COPY . .

RUN cd /usr/src/monitorss \
    && npm install --loglevel verbose \
    && chmod +x entrypoint.sh

EXPOSE 8083

ENTRYPOINT [ "/usr/src/monitorss/entrypoint.sh" ]
