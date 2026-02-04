# DevOps End-to-End Project

This project demonstrates a complete DevOps lifecycle using:
- Git & GitHub
- AWS
- Terraform
- Ansible
- Docker
- CI/CD
- Prometheus & Grafana

This repository will be built step by step.

## Troubleshooting & Lessons Learned

- Git does not track empty directories by default.
- Empty project folders were not visible on GitHub until a .gitkeep file was added.
- Ensured all work was done inside the Git repository directory containing the .git folder.
- Verified file tracking using git status, ls -a, and pwd.

This helped reinforce proper Git repository structure and version control best practices.

---

## Day 2 – AWS EC2 and Apache Web Server Setup

### Objective
The objective of Day 2 is to launch an EC2 instance on AWS and deploy
an Apache web server to understand cloud compute, networking,
and basic server configuration. 


### EC2 Instance Setup
An EC2 instance was launched using Amazon Linux 2023 with a t2.micro
instance type. A key pair was created for secure SSH access.
A security group was configured to allow SSH (port 22) and HTTP (port 80)
traffic.

### SSH Access
The EC2 instance was accessed securely using SSH and a PEM key file,
confirming successful connectivity to the cloud server.

### Apache Web Server Installation
Apache HTTP Server was installed, started, and enabled to run on
system startup using systemd.

```bash
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd



---

## 🔹 STEP 9.8: Document Validation
Paste:

```md
### Service Validation
The Apache service status was verified, and it was confirmed that the
server was listening on port 80.


```bash
sudo systemctl status httpd
sudo netstat -tulnp | grep 80



---

## 🔹 STEP 9.9: Document Browser Access
Paste:

```md
### Web Access Verification
The Apache default test page was accessed successfully using the EC2
public IP address through a web browser.


### Learning Outcome
This step demonstrated how application availability depends on both
server configuration and cloud networking rules such as security groups.



