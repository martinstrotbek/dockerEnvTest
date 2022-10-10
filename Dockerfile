                   # syntax=docker/dockerfile:1
                   FROM debian:latest
                   WORKDIR /app
                   COPY main.js .

                   RUN  apt -y update && apt -y upgrade && apt -y install curl && apt -y install unzip

                   ENV BUN_INSTALL="/usr/local/bin/.bun"
                   ENV PATH="$BUN_INSTALL/bin:$PATH"
                   RUN  curl https://bun.sh/install | bash

                   ENTRYPOINT ["bun",  "./main.js"]

                   EXPOSE 3000