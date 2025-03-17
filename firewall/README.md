# Firewall Configuration with UFW  
This project demonstrates how to secure a server using UFW (Uncomplicated Firewall) by blocking unnecessary incoming traffic and configuring port forwarding.  

## Tasks
### 1. Block All Incoming Traffic Except Essential Ports

- [x] We configure UFW on `web-01` to block all incoming traffic while allowing:
  - SSH (Port 22)
  - HTTP (Port 80)
  - HTTPS (Port 443)  
### 2. Port Forwarding (Advanced)

- [x] Next, we configure UFW to redirect traffic from port **8080/TCP** to **80/TCP** on `web-01`.

## Conclusion
By setting up UFW with these rules, we ensure that the server is protected from unwanted traffic and properly routes port 8080 requests to port 80.
