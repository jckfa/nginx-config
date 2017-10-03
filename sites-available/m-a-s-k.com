server {
  listen      80;
  listen [::]:80;
  server_name     m-a-s-k.com
              www.m-a-s-k.com;
  return 301 https://m-a-s-k.com$request_uri;
}

server {
  listen      443 ssl http2;
  listen [::]:443 ssl http2;
  server_name www.m-a-s-k.com;
  return 301 https://m-a-s-k.com$request_uri;
  include /etc/nginx/conf.d/directive-only/tls-paths/m-a-s-k.com;
  include /etc/nginx/conf.d/directive-only/tls.conf;
}

server {
  listen      443 ssl http2;
  listen [::]:443 ssl http2;
  server_name m-a-s-k.com;
  root /var/www/m-a-s-k.com;
  index index.html index.htm;
  error_page 404 /404/index.html;
  include /etc/nginx/conf.d/main.conf;
  include /etc/nginx/conf.d/directive-only/tls-paths/m-a-s-k.com;
  include /etc/nginx/conf.d/directive-only/tls.conf;
}
