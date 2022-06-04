# this script is for generating self-signed ssl sertificate

# use from file
openssl req -newkey rsa:4096 \
  -x509 \
  -sha256 \
  -days 3650 \
  -nodes \
  -out hostname.loc.crt \
  -keyout hostname.loc.key \
  -subj "/C=SI/ST=Ljubljana/L=Ljubljana/O=Security/OU=IT Department/CN=hostname.loc"
