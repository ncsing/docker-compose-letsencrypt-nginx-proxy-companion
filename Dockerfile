FROM nginx:latest

COPY custom.tmpl /

RUN sed \
-e 's/\$ip/$REDIRECT/g' \
-e 's/\$host/$VIRTUAL_HOST/g' \
/custom.tmpl > /etc/nginx/conf.d/default.conf
