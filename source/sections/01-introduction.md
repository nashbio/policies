# 1. Introduction

Nashville Biosciences, LLC ("Nashbio") is committed to ensuring the confidentiality, privacy, integrity, and availability of all electronic protected health information (ePHI) it receives, maintains, processes and/or transmits on behalf of its Customers. As providers of compliant, hosted infrastructure used by health technology vendors, developers, designers, agencies, custom development shops, and enterprises, Nashbio strives to maintain compliance, proactively address information security, mitigate risk for its Customers, and assure the proper protections of infrastructure used to store, process, and transmit ePHI for Nashbio Customers.

Nashbio provides secure and compliant hosted de-identified data for research and development. This hosted data falls into two broad categories: 1) **De-identified Research Extracts** 2) **Data as a Service (DaaS)**. These Categories are cited throughout policies as Customers in each category inherit different policies, procedures, and obligations from Nashbio.

## 1.1 Data as a Service (DaaS)

DaaS Customers utilize hosted data infrastructure from Nashbio to deploy, host, and scale custom developed applications that utilize Nashbio configured databases and datasets. These customers are deployed into compliant infrastructure managed by Nashbio. Nashbio does not have insight or access into application level data of DaaS Customers and, as such, does not have the ability to secure or manage risk associated with application level vulnerabilities and security weaknesses. Nashbio makes every effort to reduce the risk of unauthorized disclosure, access, and/or breach of DaaS Customer data through network (firewalls, dedicated IP spaces, etc) and server settings (encryption at rest and in transit, etc)(§4).

## 1.2 Compliance Inheritance

Nashbio provides compliant infrastructure, data assets owned by VUMC and other customers. Nashbio's service offerings are available on Google Cloud Platform; current production systems on these platforms are included in Nashbio's third-party audits.

Nashbio will sign business associate agreements (BAAs) with its Customers only for de-identification services.  No PHI is transmitted to additional customers. 

Nashbio does not act as a covered entity. Nashbio does operate as a business associate (subcontractor), and Nashbio does not interface with users to provide access to ePHI. 

## 1.3 Nashbio Organizational Concepts

The physical infrastructure environment is hosted at [Google Cloud Platform](https://cloud.google.com/) (GCP) and [Amazon Web Services](https://aws.amazon.com/) (AWS). The network components and supporting network infrastructure are contained within the GCP and AWS infrastructures and managed by GCP, AWS (respectively). Nashbio does not have physical access into the network components. The Nashbio environment consists of managed services provided by GCP, AWS; Python, GO and JavaScript applications; Docker containers; and developer tool servers running on Linux Ubuntu, Linux Debian or in isolated circumstances Microsoft Windows.

Within the Nashbio Platform on GCP and AWS all data transmission is encrypted and all hard drives are encrypted so data at rest is also encrypted; this applies to all servers - those hosting Docker containers, databases, APIs, log servers, etc. Nashbio assumes all data *may* contain ePHI, even though our Risk Assessment does not indicate this is the case, and provides appropriate protections based on that assumption.

In the case of DaaS Customers, it is the responsibility of the Customer to restrict, secure, and assure the privacy of all data provided to Nashbio, unless contracted for de-identification services.

The data and network segmentation mechanism differs depending on the primitives offered by the underlying cloud provider infrastructure:

* Within GCP, in [BigQuery](https://cloud.google.com/solutions/bigquery-data-warehouse), hosted data is stored within Colossus and distributed across multiple physical disks and replicated across multiple data centers.  In [Cloud Storage](https://cloud.google.com/storage/docs/object-versioning), data blobs are versioned and replicated across mutiple physical disks.  Other services may be utilized which also have redundant configurations.
* Within AWS, [s3](https://docs.aws.amazon.com/AmazonS3/latest/dev/disaster-recovery-resiliency.html), hosted data is encrypted by default and versioned for redundancy for DaaS Customers.

The segmentation strategies employed by Nashbio effectively create RFC 1918, or dedicated, private segmented and separated networks and IP spaces, for each DaaS Customer. Where non-manged services are used, dedicated VPC networks are provisioned and used only with specified regions.

All production (non-managed services) are configured by Nashbio for redundancy and for RFC 1918.

## 1.4 Requesting Audit and Compliance Reports

Nashbio, at its sole discretion, shares audit reports and Corrective Action Plans (CAPs), with customers on a case by case basis. All audit reports are shared under explicit NDA in Nashbio format between Nashbio and party to receive materials(§8). Audit reports can be requested by Nashbio workforce members for Customers or directly by Nashbio Customers.

The following process is used to request audit reports:

1. Email is sent to compliance-reports@nashvillebiosciences.com. In the email, please specify the type of report being requested and any required timelines for the report.
2. Nashbio staff will log an issue with the details of the request into the Nashbio Quality Management System. The Nashbio Quality Management System is used to track requests' status and outcomes.
3. Nashbio will confirm if a current NDA is in place with the party requesting the audit report. If there is no NDA in place, Nashbio will send one for execution.
4. Once it has been confirmed that an NDA is executed, Nashbio staff will move the issue to "Under Review".
5. The Nashbio Security Officer or Privacy Officer must Approve or Reject the Issue. If the Issue is rejected, Nashbio will notify the requesting party that we cannot share the requested report.
6. If the issue has been Approved, Nashbio will send the customer the requested audit report and complete the Quality Management System issue for the request.

## 1.5 Version Control

Refer to the GitHub repository at [https://github.com/nashbio/policies/](https://github.com/nashbio/policies/) for the full version history of these policies.
