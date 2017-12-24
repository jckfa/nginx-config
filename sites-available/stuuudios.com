server {
  listen      80;
  listen [::]:80;
  server_name     stuuudios.com
              www.stuuudios.com
              studios.silly.graphics;
  return 301 https://stuuudios.com$request_uri;
}

server {
  listen      443 ssl http2;
  listen [::]:443 ssl http2;
  server_name www.stuuudios.com
              studios.silly.graphics;
  return 301 https://stuuudios.com$request_uri;
  include /etc/nginx/conf.d/directive-only/tls-paths/stuuudios.com;
  include /etc/nginx/conf.d/directive-only/tls.conf;
}

server {
  listen      443 ssl http2;
  listen [::]:443 ssl http2;
  server_name stuuudios.com;
  root /var/www/stuuudios.com;
  index index.html index.htm;
  error_page 404 /404/index.html;
  include /etc/nginx/conf.d/main.conf;
  include /etc/nginx/conf.d/directive-only/tls-paths/stuuudios.com;
  include /etc/nginx/conf.d/directive-only/tls.conf;
}
