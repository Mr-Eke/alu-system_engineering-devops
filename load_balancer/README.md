# Load Balancer | HAProxy  
## Project Overview
This project enhances our web infrastructure by introducing a load balancer using HAProxy to distribute traffic across multiple web servers. The setup ensures:

- High availability – If one server fails, another handles requests.  
- Scalability – More traffic can be managed efficiently.  
- Redundancy – Two web servers (web-02 and an existing one) balance the load.  
## Infrastructure Setup
✅ **Servers Provided**:
- web-02 – Additional web server
- lb-01 – Load balancer
   
✅ **Tasks**:
- Configure Web-02 and Add a Custom Nginx Response Header  
- Configure HAProxy on lb-01 to balance traffic between web servers.  
- Ensure redundancy so that if one web server fails, traffic is redirected.  
- Automate setup using Bash scripts for Ubuntu server configuration.  
