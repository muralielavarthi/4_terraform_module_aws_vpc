# 🏗️ AWS VPC Architecture

This document describes a highly available AWS VPC architecture spanning two Availability Zones with public and private subnets, NAT Gateways, and Application Load Balancers.

---

## 📌 High-Level Overview

| Layer            | Component                     |
|------------------|------------------------------|
| Account          | AWS Account                  |
| Network          | VPC                          |
| Edge Connectivity| Internet Gateway (IGW)       |

---

## 🌐 Availability Zone 1a

| Component Type         | Details                                                   |
|------------------------|----------------------------------------------------------|
| Availability Zone      | 1a                                                       |
| Public Subnet          | Yes                                                      |
| Public Components      | ALB, Frontend Services                                   |
| NAT Configuration      | Elastic IP → NAT Gateway                                 |
| Public Route Table     | Local route + Route to IGW                               |
| Private Subnet         | Yes                                                      |
| Private Route Table    | Local route + Route to NAT Gateway                       |

---

## 🌐 Availability Zone 1b

| Component Type         | Details                                                   |
|------------------------|----------------------------------------------------------|
| Availability Zone      | 1b                                                       |
| Public Subnet          | Yes                                                      |
| Public Components      | ALB, Frontend Services                                   |
| NAT Configuration      | Elastic IP → NAT Gateway                                 |
| Public Route Table     | Local route + Route to IGW                               |
| Private Subnet         | Yes                                                      |
| Private Route Table    | Local route + Route to NAT Gateway                       |

---

## 🔄 Traffic Flow

| Source           | Destination        | Path                              |
|------------------|--------------------|-----------------------------------|
| Internet         | ALB                | Via IGW                           |
| Public Subnet    | Internet           | Via IGW                           |
| Private Subnet   | Internet           | NAT Gateway → IGW                 |
| Private Subnet   | Internal Services  | Local VPC Routing                 |

---

## ✅ Key Design Principles

- Multi-AZ deployment (1a & 1b) for high availability
- Public subnets host:
  - Application Load Balancer (ALB)
  - Frontend services
  - NAT Gateway with Elastic IP
- Private subnets:
  - No direct internet access
  - Outbound traffic routed via NAT Gateway
- Separate route tables for public and private subnets
- Secure and scalable network segmentation

---

## 📷 Architecture Diagram

![VPC Architecture](./vpc-architecture.png)
