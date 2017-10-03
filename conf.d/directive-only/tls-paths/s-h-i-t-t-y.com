ssl_certificate         /etc/letsencrypt/live/s-h-i-t-t-y.com/fullchain.pem;
ssl_certificate_key     /etc/letsencrypt/live/s-h-i-t-t-y.com/privkey.pem;
ssl_trusted_certificate /etc/letsencrypt/live/s-h-i-t-t-y.com/chain.pem;
