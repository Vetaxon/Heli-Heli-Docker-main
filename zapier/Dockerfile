FROM node:10

ARG UID
ENV UID ${UID}
ARG GID
ENV GID ${GID}

RUN usermod -u ${UID} node && groupmod -g ${GID} node

RUN npm i -g zapier-platform-cli

RUN mkdir /home/node/apps && mkdir /home/node/apps/heli
VOLUME /home/node/apps/heli
