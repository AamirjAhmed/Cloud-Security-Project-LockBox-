# Company Overview

**Private intelligence company operating for a fictional country.**  
The company comprises four departments:

1. **Informatics**: Handles classified information and ensures it is securely stored and managed.
2. **Security**: Monitors the security of the information, preventing unauthorized access.
3. **Software Development**: Develops and enhances security practices and applications to protect classified data.
4. **Administration**: Oversees the logistics of the company and handles communications with other intelligence groups, such as the CIA.

The primary goal of the company is to keep classified information secure from other intelligence groups that may attempt to access or attack the information.

---

## Proposed Cloud Environment

The cloud environment will utilize AWS services to ensure secure storage, access control, and monitoring of classified information. The design will include the following AWS resources:

### Labeling Systems and Their Roles

#### EC2 Instances

- **Informatics Server**  
  - **Label**: "Informatics Server (EC2 - Linux)"  
  - **Role**: Manages and stores classified data using NCrypt for encryption.

- **Security Monitoring Server**  
  - **Label**: "Security Monitoring Server (EC2 - Linux)"  
  - **Role**: Runs AWS CloudTrail and CloudWatch for real-time security monitoring and alerts.

- **Software Development Server**  
  - **Label**: "Software Development Server (EC2 - Linux)"  
  - **Role**: Development and testing of security applications and practices.

#### S3 Storage Buckets

- **Classified Data Storage**  
  - **Label**: "Classified Data Storage (S3)"  
  - **Role**: Stores classified documents and files with server-side encryption (SSE) and access control policies.

- **Backup Storage**  
  - **Label**: "Physical twice encrypted copy"  
  - **Role**: Provides long-term, encrypted backup storage for classified data, encrypted once with client key and second with a changing daily company encryption key, changing based on a pressure pad at company doors that monitors the number of people who stepped on it to create an encryption key.

#### VPC Subnets

- **Private Subnet**  
  - **Label**: "Private Subnet"  
  - **Role**: Houses the Informatics, Security Monitoring, and Development servers to isolate them from public internet access.

#### RDS (Relational Database Service)

- **Encrypted Database Instance**  
  - **Label**: "Encrypted Database (RDS)"  
  - **Role**: Stores metadata and logs related to classified data and security events, encrypted at rest.

#### IAM (Identity and Access Management)

- **Label**: "IAM Role-Based Access Control (RBAC)"  
  - **Role**: Ensures only authorized personnel in the Informatics, Security, and Administration departments have access to specific resources. This includes the firewall set to detect unauthorized and malicious activity.

#### AWS Key Management Service (KMS)

- **Label**: "Encryption Key Management (KMS)"  
  - **Role**: Manages and rotates encryption keys used for encrypting data in S3 buckets, RDS, and other services.

#### Firewalls

- **First Firewall**  
  - **Label**: "First Firewall"  
  - **Role**: Secures the private subnet, controlling access to the Informatics, Security Monitoring, and development servers.

- **Second Firewall**  
  - **Label**: "Second Firewall"  
  - **Role**: Protects the internal information of the client and alerts the security team whenever someone connects to that information.
