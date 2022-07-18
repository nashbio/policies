# 6. Data Management Policy

NashBio has procedures to create and maintain retrievable exact copies of electronic protected health information (ePHI) stored in conjunction with NashBio DaaS Customers. The policy and procedures will assure that complete, accurate, retrievable, and tested backups are available for all systems used by NashBio.

Data backup is an important part of the day-to-day operations of NashBio. To protect the confidentiality, integrity, and availability of data, both for NashBio and NashBio Customers, complete backups are done on a regular basis to assure that data remains available when needed and in case of a disaster.

Despite not being a requirement within HIPAA, Nashbio understands and appreciates the importance of health data retention. Acting as a subcontractor, and at times a business associate, Nashbio is not directly responsible for health and medical records retention as set forth by each state. Despite this, Nashbio has created and implemented the following policy to make it easier for Nashbio Customers to support data retention laws.

Violation of this policy and its procedures by workforce members may result in corrective disciplinary action, up to and including termination of employment.

## 6.1 Applicable Standards

### 6.1.1 Applicable Standards from the HITRUST Common Security Framework

* 01.v - Information Access Restriction

### 6.1.2 Applicable Standards from the HIPAA Security Rule

* 164.308(a)(7)(ii)(A) - Data Backup Plan
* 164.310(d)(2)(iii) - Accountability
* 164.310(d)(2)(iv) - Data Backup and Storage

## 6.2 Backup Policy and Procedures

1. Data backups of the primary data resource occur when:
	1. The primary data is ingested.
	2. The cleaned data is versioned. 
2. The data backups are generated automatically as a component of the versioning system.
3. A member of the Engineering team audits this to ensure a successful backup of the primary data system.
4. Data backups and primary data sources are retained for a period of 6 years.
5. Data systems and data ETL configurations and software used to generate data for DaaS and other products are checked into Github and versioned.

## 6.3 Data Retention Policy

See [Data Retention Policy (§18.2)](#18.2-data-retention-policy)