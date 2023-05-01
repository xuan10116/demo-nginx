server {
    listen 7081;
    location /hello {
        default_type text/plain;
          proxy_pass http://realweb;
    }
}