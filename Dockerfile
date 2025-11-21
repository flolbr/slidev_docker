FROM oven/bun:alpine

COPY entrypoint.sh /

WORKDIR /slidev

RUN chmod +x /entrypoint.sh

ENV CHOKIDAR_USEPOLLING=true

ENTRYPOINT [ "/entrypoint.sh" ]
