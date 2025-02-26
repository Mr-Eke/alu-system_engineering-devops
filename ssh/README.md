# SSH 

## Overview  

This repository contains my coursework on **SSH (Secure Shell)**, covering essential concepts and practical applications related to remote server access and security.  

## Topics Covered  

### 1️⃣ What is a Server?  
A **server** is a computer or system that provides resources, data, or services to other computers (clients) over a network. Servers can host websites, databases, applications, and more.  

### 2️⃣ Where Do Servers Usually Live?  
Servers are typically hosted in:  
- **Data centers** – Large facilities housing multiple servers for cloud computing, web hosting, and enterprise needs.  
- **On-premises** – Physical machines located within an organization's infrastructure.  
- **Cloud platforms** – Virtual servers managed by providers like AWS, Google Cloud, or Azure.  

### 3️⃣ What is SSH?  
**SSH (Secure Shell)** is a cryptographic protocol that allows secure remote access to servers over an unsecured network. It enables command execution, file transfers, and tunneling while encrypting data for security.  

### 4️⃣ How to Create an SSH RSA Key Pair  
An **RSA key pair** consists of a public and private key used for secure authentication. To generate one:  
```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
