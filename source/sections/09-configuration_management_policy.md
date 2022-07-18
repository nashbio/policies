# 9. Configuration Management Policy

NashBio standardizes and automates configuration management through the use of scripts as well as documentation of all changes to production systems and networks. The data-pipes repositiory contains scripts that configure all NashBio systems according to established and tested policies, and are used as part of our Disaster Recovery plan and process.  The CTO is responsible for configuring all systems.

## 9.1 Applicable Standards

### 9.1.1 Applicable Standards from the HITRUST Common Security Framework

* 06 - Configuration Management

### 9.1.2 Applicable Standards from the HIPAA Security Rule

* 164.310(a)(2)(iii) Access Control & Validation Procedures

## 9.2 Configuration Management Policies

1. All code used to standardize and automate configuration management is stored in Github.
2. No systems are deployed into NashBio environments without approval of the NashBio CTO.
3. All changes to production systems, network devices, and firewalls are approved by the NashBio CTO before they are implemented to assure they comply with business and security requirements.
4. All changes to production systems are tested before they are implemented in production.
5. Implementation of approved changes are only performed by authorized personnel.
6. Tooling to generate an up-to-date inventory of systems, including corresponding architecture diagrams for related products and services, is maintianed by the CTO.
7. All frontend functionality (developer dashboards and portals) is separated from backend (database and app servers) systems by being deployed on separate servers or containers.
8. All committed code is reviewed using pull requests to assure software code quality and proactively detect potential security issues in development.
9. NashBio utilizes development and testing environments that mirror production to assure proper function.
10. Linux-based systems use a Debian or Centos base image that has been reviewed and improved based on the results of subsequent vulnerability scans and risk assessments.

## Below needs to be reviewed and updated with current production automation requirements

## 9.3 Provisioning Production Systems

1. Before provisioning any production systems, ops team members must file a request in the NashBio Quality Management System.
2. The CTO, or an authorized delegate of the CTO, must approve the provisioning request before any new system can be provisioned.
3. Once provisioning has been approved, the ops team member must configure the new system according to the standard baseline chosen for the system's role, and according to the requisite SOP.
   * For some systems, this requires altering the configuration files to suit the customers specific deployment needs.  All logs of this activity are stored in Github.
4. If the system will be used to house ePHI, the ops team member must add an encrypted block data volume to the VM during provisioning.
   * For systems on cloud providers, the ops team member must add a block data volume and set up OS-level data encryption, if VMs are used.
5. The new system may be rotated into production once the CTO verifies all the provisioning steps listed above have been correctly followed.

### 9.3.1 Provisioning Linux Systems

1. Linux systems have their baseline security configuration applied which cover:
   * Ensuring that the machine is up-to-date with security patches and is configured to apply patches in accordance with NashBio policies.
   * Stopping and disabling any unnecessary OS services.
   * Configuring Identity Aware Proxy for access.

### 9.3.3 Provisioning Management Systems

1. Provisioning management systems follows the same procedure as provisioning a production system.
2. Critical infrastructure services such as logging or monitoring servers must be configured by the CTO.
   * These configurations have been approved by the CTO, or an authorized delegate of the CTO, to be in accordance with all NashBio policies, including setting appropriate:
     * Audit logging requirements.
     * Password size, strength, and expiration requirements.
     * Transmission encryption requirements.

## 9.4 Change Management Policy

1. Subsequent changes to already-provisioned systems are unconditionally handled by one of the following methods:
   * Changes logged in Github under the data-pipes repository, or other repositories.
2. In all cases, before rolling out the change to production, the developer must file a pull request in the data-pipes project describing the change. 
4. Once the request has been approved by the CTO, the ops team member may roll out the change into production environments according to SOPs.

## 9.5 Patch Management Procedures

1. NashBio uses automated tooling to ensure systems are up-to-date with the latest security patches.
2. On Ubuntu or Debian Linux systems, the unattended-upgrades tool is used to apply security patches in phases.

## 9.6 Software Development Procedures

1. All development uses feature branches based on the master branch used for the current release. Any changes required for a new feature or defect fix are committed to that feature branch.
2. Developers are strongly encouraged to follow the [commit message conventions suggested by GitHub](https://github.com/blog/926-shiny-new-commit-styles).
   * Commit messages should be wrapped to 72 characters.
   * Commit messages should be written in the present tense. This convention matches up with commit messages generated by commands like git merge and git revert.
3. Once the feature and corresponding tests are complete, a pull request will be created using the GitHub/GitHub web interface. The pull request should indicate which feature or defect is being addressed and should provide a high-level description of the changes made.
4. Code reviews are performed as part of the pull request procedure. Once a change is ready for review, the author(s) will request a review from other engineers using an appropriate mechanism, typically via an `@channel` message in Slack or via a pull request in Github and specify what to review.
   * Engineering will review the changes, using the guidelines above.
   * Engineers should note all potential issues with the code; it is the responsibility of the author(s) to address those issues or explain why they are not applicable.
5. If the feature or defect interacts with ePHI, or controls access to data potentially containing ePHI, the code changes must be reviewed by the CTO before the feature is marked as complete.
   * The CTO will provide a security analysis of features to ensure they satisfy NashBio's compliance and security commitments.
   * This review must include a security analysis for potential vulnerabilities such as those listed in the [OWASP Top 10](https://www.owasp.org/index.php/Top10) or the [CWE top 25](http://cwe.mitre.org/top25/).
   * This review must also verify that any actions perfomred by authenticated users will generate appropriate audit log entries.
6. Once the review process finishes, each reviewer should leave a comment on the pull request saying "looks good to me" (often abbreviated as "LGTM"), at which point the original author(s) may merge their change into the release branch.
7. CTO will provide training on new software vulnerabilities and security threats when there is a signficant risk posed to NashBio data or under significant environment disturbances.

## 9.7 Software Release Procedures

1. Software releases are treated as changes to existing systems and thus follow the procedure described in [§9.4](#9.4-changing-existing-systems).
