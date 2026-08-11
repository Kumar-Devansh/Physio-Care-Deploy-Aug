# PhysioCare — Production Deployment Guide

A production-ready deployment guide for the **PhysioCare Django Physiotherapy Management System** using:

- Django
- PostgreSQL 16
- Docker
- Docker Compose
- Gunicorn
- Nginx
- Gmail SMTP
- AWS EC2 / Ubuntu

This guide is designed for deploying PhysioCare on a fresh Ubuntu EC2 server with minimal troubleshooting.

---

# 1. Architecture

```text
                         Internet
                            |
                            |
                     AWS EC2 Public IP
                            |
                            v
                    +---------------+
                    |     Nginx     |
                    |    Port 80    |
                    +-------+-------+
                            |
               +------------+------------+
               |                         |
               v                         v
        /static/ & /media/          HTTP requests
               |                         |
               |                         v
               |                +----------------+
               |                | Docker Network |
               |                +-------+--------+
               |                        |
               |                        v
               |                +---------------+
               |                | Django +      |
               |                | Gunicorn       |
               |                | Port 8000      |
               |                +-------+-------+
               |                        |
               |                        |
               |                        v
               |                +---------------+
               |                | PostgreSQL 16 |
               |                |     db        |
               |                +---------------+
               |
               v
        Host staticfiles/


Background worker:

        Docker Compose
              |
              v
        reminders service
              |
              v
        Django appointment reminder command


Email:

Django
   |
   v
Gmail SMTP
smtp.gmail.com:587
   |
   v
Patient / Staff Email