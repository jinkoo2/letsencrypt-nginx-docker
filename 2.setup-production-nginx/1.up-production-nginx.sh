mkdir -p /docker/letsencrypt-docker-nginx/src/production/production-site
mkdir -p /docker/letsencrypt-docker-nginx/src/production/dh-param
cp docker-compose.yml /docker/letsencrypt-docker-nginx/src/production/
cp production.conf /docker/letsencrypt-docker-nginx/src/production/
cp index.html /docker/letsencrypt-docker-nginx/src/production/production-site/
openssl dhparam -out /docker/letsencrypt-docker-nginx/src/production/dh-param/dhparam-2048.pem 2048
docker-compose -f /docker/letsencrypt-docker-nginx/src/production/docker-compose.yml up -d
echo "check if the website is working - https://www.myocr.net"

