# HTTPS/SSL Setup with HAProxy

## Overview
This project focuses on configuring HTTPS/SSL using HAProxy, setting up domain subdomains, and enforcing secure web traffic. The following tasks are covered:

- Configuring domain zones and subdomains
- Setting up SSL termination on HAProxy
- Enforcing HTTPS traffic

## 1. Configuring Subdomains
We configure the domain zone so that the subdomain `www` points to the load balancer IP (`lb-01`). Additional subdomains are also added to facilitate easier access.

### Steps:
1. Update your DNS records to point `www.yourdomain.com` to your load balancer IP.
2. Write a Bash script to display information about configured subdomains.

## 2. HAProxy SSL Termination
SSL termination allows HAProxy to handle encrypted traffic, decrypt it, and pass it to backend servers.

### Steps:
1. Install **Certbot** and generate an SSL certificate:
   ```bash
   sudo apt update
   sudo apt install certbot
   sudo certbot certonly --standalone -d www.yourdomain.com
   ```
2. Configure HAProxy to accept encrypted traffic for `www.yourdomain.com`.

## 3. Enforcing HTTPS Traffic
To ensure secure communication, we configure HAProxy to redirect all HTTP traffic to HTTPS using a **301 redirect**.

### Steps:
1. Modify the HAProxy configuration file (`/etc/haproxy/haproxy.cfg`) to include:
   ```cfg
   frontend http_front
       bind *:80
       redirect scheme https code 301 if !{ ssl_fc }
   ```

2. Restart HAProxy:
   ```bash
   sudo systemctl restart haproxy
   ```

## HAProxy Configuration File
Below is the HAProxy configuration (`/etc/haproxy/haproxy.cfg`):
```cfg
frontend http_front
    bind *:80
    redirect scheme https code 301 if !{ ssl_fc }

frontend https_front
    bind *:443 ssl crt /etc/letsencrypt/live/www.yourdomain.com/fullchain.pem 
    default_backend web_backend

backend web_backend
    server web1 192.168.1.10:80 check
```

## Conclusion
This setup ensures:
- Proper subdomain configuration
- SSL termination with HAProxy
- Enforced HTTPS traffic with automatic redirection

Feel free to contribute or raise any issues!

