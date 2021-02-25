mkdir -p /docker/letsencrypt-docker-nginx/src/letsencrypt/letsencrypt-site
cp ./docker-compose.yml /docker/letsencrypt-docker-nginx/src/letsencrypt
cp ./nginx.conf /docker/letsencrypt-docker-nginx/src/letsencrypt
cp ./index.html /docker/letsencrypt-docker-nginx/src/letsencrypt/letsencrypt-site
docker-compose -f /docker/letsencrypt-docker-nginx/src/letsencrypt/docker-compose.yml up -d
curl http://myocr.net
echo "Check if the test  website is working - http://myocr.net"
