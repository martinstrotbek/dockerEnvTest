                   # syntax=docker/dockerfile:1
                   FROM debian:latest
                   WORKDIR /app
                   COPY main.js .

                   RUN  apt -y update
                   RUN  apt -y upgrade
                   RUN  apt -y install curl
                   RUN  apt -y install unzip
                   RUN  apt -y install tree
                   RUN  curl https://bun.sh/install | bash

                   RUN BUN_INSTALL="/home/usr/.bun" >> /root/.bashrc
                   RUN PATH="$BUN_INSTALL/bin:$PATH" >> /root/.bashrc
                   #ENTRYPOINT ["bun",  "./main.js"]
                   #RUN ["bun",  "./main.js"]
                   #RUN bun ./main.js
                   #ENV PATH="/opt/gtk/bin:${PATH}"
                   #RUN ["bash","-c","bun run main.js"]
                   #RUN  bun run main.js
                   #ponto interessante https://www.reddit.com/r/docker/comments/tgkpo9/uninstall_curl_after_it_is_installed_and_used_in/ https://docs.docker.com/develop/develop-images/multistage-build/

                   #EXPOSE 3000

                   #CMD ["bun run","main.js"]