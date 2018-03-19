FROM nginx:latest

COPY custom.tmpl /

RUN sed \
-e 's/\$ip/$CUSTOM_IP/g' \
-e 's/\$host/$CUSTOM_HOSTNAME/g' \
/custom.tmpl > /etc/nginx/conf.d/default.conf
