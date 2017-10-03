server {
  listen      80;
  listen [::]:80;
  server_name     s-h-i-t-t-y.com
              www.s-h-i-t-t-y.com;
  return 301 https://s-h-i-t-t-y.com$request_uri;
}

server {
  listen      443 ssl http2;
  listen [::]:443 ssl http2;
  server_name www.s-h-i-t-t-y.com;
  return 301 https://s-h-i-t-t-y.com$request_uri;
  include /etc/nginx/conf.d/directive-only/tls-paths/s-h-i-t-t-y.com;
  include /etc/nginx/conf.d/directive-only/tls.conf;
}

server {
  listen      443 ssl http2;
  listen [::]:443 ssl http2;
  server_name s-h-i-t-t-y.com;
  root /var/www/s-h-i-t-t-y.com;
  index index.html index.htm;
  # gzip_static on;
  error_page 404 /404/index.html;
  include /etc/nginx/conf.d/main.conf;
  include /etc/nginx/conf.d/directive-only/tls-paths/s-h-i-t-t-y.com;
  include /etc/nginx/conf.d/directive-only/tls.conf;
}
