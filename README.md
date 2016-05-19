# My Nginx Config Files :: Summary

## Websites
- https://jackf.me
- https://unccdesign.club

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

(and the same pattern for unccdesign.club)

## Encryption

- [A+ SSL Labs Score](https://www.ssllabs.com/ssltest/analyze.html?d=jackf.me&latest)
- [Let's Encrypt cert*](https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-14-04)
- HSTS

*I use a [shell script](https://github.com/jackfahnestock/nginx-config/blob/master/webroot/webroot-renew--jackf.me) for automatically renewing certs. If you run it, it'll output the number of days left on the cert, which is pretty handy. I can't remember where I got it, but it's not in the tutorial on Digital Ocean.

## Other

- HTTP/2
- gzip

## Sources

- https://github.com/h5bp/server-configs-nginx
