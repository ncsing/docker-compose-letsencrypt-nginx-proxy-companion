FROM nginx:latest

COPY custom.tmpl /

RUN sed \
-e 's/\$ip/$REDIRECT_IP/g' \
-e 's/\$host/$REDIRECT_HOST/g' \
/custom.tmpl > /etc/nginx/conf.d/default.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
