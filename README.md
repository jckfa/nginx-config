# My Nginx Config Files :: Summary

## Websites
- https://jackf.me / https://jackfahnestock.com
- https://silly.graphics
- https://silly-type.us

## Redirects

     http://
                jackf.me
            www.jackf.me
                jackfahnestock.com
            www.jackfahnestock.com

and

    https://
            www.jackf.me
                jackfahnestock.com
            www.jackfahnestock.com

↳ https://jackf.me

## Encryption

- [A+ SSL Labs Score](https://www.ssllabs.com/ssltest/analyze.html?d=jackf.me&latest)
- [Let's Encrypt cert](https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-14-04)
- HSTS

## Other

- HTTP/2 enabled
- gzip compression enabled

## Sources

- https://github.com/h5bp/server-configs-nginx
