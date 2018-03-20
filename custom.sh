sed \
-e "s/\$ip/${REDIRECT_IP}/g" \
-e "s/\$host/${REDIRECT_HOST}/g" \
/custom.tmpl > /custom.conf
