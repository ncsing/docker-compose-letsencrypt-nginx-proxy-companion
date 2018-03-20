FROM nginx:latest

COPY custom.tmpl /

ENV REDIRECT_IP=127.0.0.1
ENV REDIRECT_HOST=localhost

COPY custom.sh /

EXPOSE 80 443

#CMD /bin/bash -c /custom.sh

#ENTRYPOINT nginx -g 'daemon off'
