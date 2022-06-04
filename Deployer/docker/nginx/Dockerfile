FROM nginx:stable-alpine

RUN mkdir -p /etc/nginx/ssl/ \
    && openssl req -newkey rsa:4096 \
                  -x509 \
                  -sha256 \
                  -days 3650 \
                  -nodes \
                  -out /etc/nginx/ssl/hostname.loc.crt \
                  -keyout /etc/nginx/ssl/hostname.loc.key \
                  -subj "/C=SI/ST=Ljubljana/L=Ljubljana/O=Security/OU=IT Department/CN=hostname.loc"
