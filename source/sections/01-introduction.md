# 1. Introduction

Nashville Biosciences, LLC ("Nashbio") is committed to ensuring the confidentiality, privacy, integrity, and availability of all electronic protected health information (ePHI) it receives, maintains, processes and/or transmits on behalf of its Customers. As providers of compliant, hosted infrastructure used by health technology vendors, developers, designers, agencies, custom development shops, and enterprises, Nashbio strives to maintain compliance, proactively address information security, mitigate risk for its Customers, and assure known breaches are completely and effectively communicated in a timely manner. The following documents address core policies used by Nashbio to maintain compliance and assure the proper protections of infrastructure used to store, process, and transmit ePHI for Nashbio Customers.

Nashbio provides secure and compliant cloud-based data infrastructure. This hosted data falls into two broad categories: 1) **Data as a Service (DaaS)** and 2) **Platform Add-ons**. These Categories are cited throughout policies as Customers in each category inherit different policies, procedures, and obligations from Nashbio.

## 1.1 Data as a Service (DaaS)

DaaS Customers utilize hosted data infrastructure from Nashbio to deploy, host, and scale custom developed applications and configured databases. These customers are deployed into compliant containers run on systems secured and managed by Nashbio. Nashbio does not have insight or access into application level data of DaaS Customers and, as such, does not have the ability to secure or manage risk associated with application level vulnerabilities and security weaknesses. Nashbio makes every effort to reduce the risk of unauthorized disclosure, access, and/or breach of DaaS Customer data through network (firewalls, dedicated IP spaces, etc) and server settings (encryption at rest and in transit, OSSEC throughout the Platform, etc).

## 1.2 Compliance Inheritance

Nashbio provides compliant hosted software infrastructure for its Customers. Nashbio has been through a HIPAA compliance audit by a national third-party compliance firm to validate and map organizational policies and technical controls to HIPAA rules. Nashbio's service offerings are available on Google Cloud Platform; current production systems on these platforms are included in Nashbio's third-party audits.

Nashbio does not sign business associate agreements (BAAs) with its Customers as it does not explicitly deal with PHI. 

Nashbio does not act as a covered entity. Nashbio does not operate as a business associate (not a subcontractor), and Nashbio does not interface with users to obtain or provide access to ePHI. 

Certain aspects of compliance cannot be inherited. Because of this, Nashbio Customers, in order to achieve full compliance or HITRUST Certification, must implement certain organizational policies. These policies and aspects of compliance fall outside of the services and obligations of Nashbio.

Mappings of HIPAA Rules to Nashbio controls and a mapping of what Rules are inherited by Customers, both Platform Customers and Add-on Customers, are covered in [§2](#2.-hipaa-inheritance).

## 1.3 Nashbio Organizational Concepts

The physical infrastructure environment is hosted at [Google Cloud Platform](https://cloud.google.com/) (GCP), [Amazon Web Services](https://aws.amazon.com/) (AWS), and [DCBlox](http://www.dcblox.com/). The network components and supporting network infrastructure are contained within the GCP, AWS, and DCBlox infrastructures and managed by GCP, AWS, and DCBlox (respectively). Nashbio does not have physical access into the network components. The Nashbio environment consists of managed services provided by GCP, AWS, and DCBlox; Python, GO and JavaScript applications; Docker containers; and developer tool servers running on Linux Ubuntu or Linux Debian.

Within the Nashbio Platform on GCP, AWS, and DCBlox all data transmission is encrypted and all hard drives are encrypted so data at rest is also encrypted; this applies to all servers - those hosting Docker containers, databases, APIs, log servers, etc. Nashbio assumes all data *may* contain ePHI, even though our Risk Assessment does not indicate this is the case, and provides appropriate protections based on that assumption.

In the case of DaaS Customers, it is the responsibility of the Customer to restrict, secure, and assure the privacy of all data at the Application Level, as this is not under the control or purview of Nashbio.

The data and network segmentation mechanism differs depending on the primitives offered by the underlying cloud provider infrastructure:

* Within GCP, in [BigQuery](https://cloud.google.com/solutions/bigquery-data-warehouse), hosted data is stored within Colossus and distributed across multiple physical disks and replicated across multiple data centers.  In [Cloud Storage](https://cloud.google.com/storage/docs/object-versioning), data blobs are versioned and replicated across mutiple physical disks.  
* Within AWS, [s3](https://docs.aws.amazon.com/AmazonS3/latest/dev/disaster-recovery-resiliency.html), hosted data is encrypted by default and versioned for redundancy for DaaS Customers.
* Within DCBlox, data is stored redundantly within the data center.

The segmentation strategies employed by Nashbio effectively create RFC 1918, or dedicated, private segmented and separated networks and IP spaces, for each DaaS Customer and for Platform Add-ons.  Where non-manged services are used, dedicated VPC networks are provisioned and used only with specified regions.

All Platform Add-ons and operating systems are tested end-to-end for usability, security, and impact prior to deployment to production.

## 1.4 Requesting Audit and Compliance Reports

Nashbio, at its sole discretion, shares audit reports and Corrective Action Plans (CAPs), with customers on a case by case basis. All audit reports are shared under explicit NDA in Nashbio format between Nashbio and party to receive materials. Audit reports can be requested by Nashbio workforce members for Customers or directly by Nashbio Customers.

The following process is used to request audit reports:

1. Email is sent to compliance-reports@nashvillebiosciences.com. In the email, please specify the type of report being requested and any required timelines for the report.
2. Nashbio staff will log an issue with the details of the request into the Nashbio Quality Management System. The Nashbio Quality Management System is used to track requests' status and outcomes.
3. Nashbio will confirm if a current NDA is in place with the party requesting the audit report. If there is no NDA in place, Nashbio will send one for execution.
4. Once it has been confirmed that an NDA is executed, Nashbio staff will move the issue to "Under Review".
5. The Nashbio Security Officer or Privacy Officer must Approve or Reject the Issue. If the Issue is rejected, Nashbio will notify the requesting party that we cannot share the requested report.
6. If the issue has been Approved, Nashbio will send the customer the requested audit report and complete the Quality Management System issue for the request.

## 1.5 Version Control

Refer to the GitHub repository at [https://github.com/nashbio/policies/](https://github.com/nashbio/policies/) for the full version history of these policies.
