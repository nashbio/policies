# 7. System Access Policy

Access to NashBio systems and applications is limited for all users, including but not limited to workforce members, volunteers, contracted providers, and consultants. Access by any other entity is allowable only on a minimum necessary basis. All users are responsible for reporting an incident of unauthorized use or access of the organization's information systems. These safeguards have been established to address the HIPAA Security regulations including the following:

## 7.1 Applicable Standards

### 7.1.1 Applicable Standards from the HITRUST Common Security Framework

* 01.d - User Password Management
* 01.f - Password Use
* 01.r - Password Management System
* 01.a - Access Control Policy
* 01.b - User Registration
* 01.h - Clear Desk and Clear Screen Policy
* 01.j - User Authentication for External Connections
* 01.q - User Identification and Authentication
* 01.v - Information Access Restriction
* 02.i - Removal of Access Rights
* 06.e - Prevention of Misuse of Information Assets

### 7.1.2 Applicable Standards from the HIPAA Security Rule

* 164.308(a)(4)(ii)(C) Access Establishment and Modification
* 164.308(a)(3)(ii)(B) Workforce Clearance Procedures
* 164.308(a)(4)(ii)(B) Access Authorization
* 164.312(d) Person or Entity Authentication
* 164.312(a)(2)(i) Unique User Identification
* 164.308(a)(5)(ii)(D) Password Management
* 164.312(a)(2)(iii) Automatic Logoff
* 164.310(b) Workstation Use
* 164.310(c) Workstation Security
* 164.308(a)(3)(ii)(C) Termination Procedures

## 7.2 Access Establishment and Modification

1. Requests for access to NashBio Platform systems and applications are made formally using the following process:
  1. A NashBio workforce member initiates the access request by creating an Issue in the NashBio Quality Management System.
     * User identities must be verified prior to granting access to new accounts.
     * Identity verification must be done in person where possible; for remote employees, identities must be verified over the phone.
     * For new accounts, the method used to verify the user's identity must be recorded on the Issue.
  2. The Security Officer or Privacy Officer will grant access to systems as dictated by the employee's job title. If additional access is required outside of the minimum necessary to perform job functions, the requester must include a description of why the additional access is required as part of the access request.
  3. Once the review is completed, the Security Officer or Privacy Officer approves or rejects the Issue. If the Issue is rejected, it goes back for further review and documentation.
  4. If the review is approved, the Security Officer or Privacy Officer then marks the Issue as Done, adding any pertinent notes required. The Security Officer or Privacy Officer then grants requested access.
     * New accounts will be created with a temporary secure password that meets all requirements from [§7.12](#7.12-password-management), which must be changed on the initial login.
     * All password exchanges must occur over an authenticated channel(e.g., phone call, encrypted email...).
     * For production systems, access grants are accomplished by adding the appropriate user account to the corresponding LDAP group.
     * For non-production systems, access grants are accomplished by leveraging the access control mechanisms built into those systems. Account management for non-production systems may be delegated to a NashBio employee at the discretion of the Security Officer or Privacy Officer .
2. Access is not granted until receipt, review, and approval by the NashBio Security Officer or Privacy Officer.
3. The request for access is retained for future reference.
4. All access to NashBio systems and services is reviewed and updated on an annual basis to ensure proper authorizations are in place commensurate with job functions. The process for conducting reviews is outlined below:
   1. The Security Officer initiates the review of user access by creating an Issue in the NashBio Quality Management System.
   2. The Security Officer is assigned to review levels of access for each NashBio workforce member.
   3. If user access is found during review that is not in line with the least privilege principle, the process below is used to modify user access and notify the user of access changes. Once those steps are completed, the Issue is then reviewed again.
   4. Once the review is completed, the Security Officer approves or rejects the Issue. If the Issue is rejected, it goes back for further review and documentation.
   5. If the review is approved, the Security Officer then marks the Issue as Done, adding any pertinent notes required.
   6. Review of user access is monitored on an annual basis using the Quality Management System reporting to assess compliance with above policy.
5. Any NashBio workforce member can request change of access using the process outlined in [§7.2 paragraph 1](#7.2-access-establishment-and-modification).
6. Access to production systems is controlled using centralized user management and authentication.
7. Temporary accounts are not used unless absolutely necessary for business purposes.
   * Accounts are reviewed every 90 days to ensure temporary accounts are not left unnecessarily.
   * Accounts that are inactive for over 90 days are removed.
8. In the case of non-personal information, such as generic educational content, identification and authentication may not be required. This is the responsibility of NashBio Customers to define, and not NashBio.
9. Privileged users must first access systems using standard, unique user accounts before switching to privileged users and performing privileged tasks.
   * For production systems, this is enforced by creating non-privileged user accounts that must invoke `sudo` to perform privileged tasks.
   * Rights for privileged accounts are granted by the Security Officer or Privacy Officer using the process outlined in [§7.2 paragraph 1](#7.2-access-establishment-and-modification).
10. All application to application communication using service accounts is restricted and not permitted unless absolutely needed. Automated tools are used to limit account access across applications and systems.
11. Generic accounts are not allowed on NashBio systems.
12. Access to production or development systems is granted through encrypted, SSL tunnels that utilize two-factor authentication.
    * Two-factor authentication is accomplished using a Time-based One-Time Password (TOTP) or a Nashbio-provided physical security key (Yubikey) as the second factor.
    * VPN connections use 256-bit AES 256 encryption, or equivalent.
    * Sessions are automatically disconnected after 30 minutes of inactivity.
13. In cases of increased risk or known attempted unauthorized access, immediate steps are taken by the Security and Privacy Officer to limit access and reduce risk of unauthorized access.
14. Direct system to system, system to application, and application to application authentication and authorization are limited and controlled to restrict access.

## 7.3 Workforce Clearance

1. The level of security assigned to a user to the organization's information systems is based on the minimum necessary amount of data access required to carry out legitimate job responsibilities assigned to a user's job classification.
2. All access requests are treated on a "least-access principle."
3. NashBio maintains a minimum necessary approach to access to sensitive data. As such, NashBio, including all workforce members, does not readily have access to any ePHI.

## 7.4 Access Authorization

1. Role based access categories for each NashBio system and application are pre-approved by the Security Officer, or an authorized delegate of the Security Officer.
2. NashBio utilizes hardware and software firewalls to segment data, prevent unauthorized access, and monitor traffic for denial of service attacks.

## 7.5 Person or Entity Authentication

1. Each workforce member has and uses a unique user ID(Google Workspace Account) and password that identifies him/her as the user of the information system.
2. Each Customer and Partner has and uses a unique user ID(Google Workspace Account) and password that identifies him/her as the user of the information system. Configured through Google Workspace.

## 7.6 Unique User Identification

1. Access to the NashBio Platform systems and applications is controlled by requiring unique User Login IDs and passwords for each individual user and developer.  NashBio accomplishes this using SSO infrastructure authenticated using SSO through Google Workspace and two-factor authentication.
2. Passwords requirements mandate strong password controls (see below).
3. Passwords are not displayed at any time and are not transmitted or stored in plain text. They are stored encrypted at rest and through Last Pass.
4. Default accounts on all production systems, including root, are disabled.
5. Shared accounts are not allowed within NashBio systems or networks.
6. Automated log-on configurations that store user passwords or bypass password entry are not permitted for use with NashBio workstations or production systems.

## 7.7 Automatic Logoff

1. Users are required to make information systems inaccessible by any other individual when unattended by the users (ex. by using a password protected screen saver or logging off the system).
2. Information systems that access ePHI automatically log users off the systems after 15 minutes of inactivity, such as in the VUMC Application.
3. The Security Officer pre-approves exceptions to automatic log off requirements.

## 7.8 Employee Workstation Use

All workstations that access sensitive data at NashBio are company owned, and all are laptop Apple products running Mac OSX or Linux.

1. Workstations may not be used to engage in any activity that is illegal or is in violation of organization's policies.
2. Access may not be used for transmitting, retrieving, or storage of any communications of a discriminatory or harassing nature or materials that are obscene or "X-rated". Harassment of any kind is prohibited. No messages with derogatory or inflammatory remarks about an individual's race, age, disability, religion, national origin, physical attributes, sexual preference, or health condition shall be transmitted or maintained. No abusive, hostile, profane, or offensive language is to be transmitted through the organization's system.
3. Information systems/applications also may not be used for any other purpose that is illegal, unethical, or against company policies or contrary to organization's best interests. Messages containing information related to a lawsuit or investigation may not be sent without prior approval.
5. Transmitted messages may not contain material that criticizes the organization, its providers, its employees, or others.
6. Users may not misrepresent, obscure, suppress, or replace another user's identity in transmitted or stored messages.
7. Workstation hard drives will be encrypted using FileVault 2.0 or equivalent.
9. All workstations have remote wipe capabilities enabled.

## 7.9 Wireless Access Use

1. NashBio production systems are not accessible directly over wireless channels.
2. Wireless access is disabled on all production systems.
3. When accessing production systems via remote wireless connections, the same system access policies and procedures apply to wireless as all other connections, including wired.
4. Wireless networks managed within NashBio non-production facilities (offices, etc.) are secured with the following configurations:
   * All data in transit over wireless is encrypted using WPA2 encryption;

## 7.10 Employee Termination Procedures

1. The Human Resources Department (or other designated department), users, and their supervisors are required to notify the Security Officer upon completion and/or termination of access needs and facilitating completion of the "Termination Checklist".
2. The Human Resources Department, users, and supervisors are required to notify the Security Officer to terminate a user's access rights if there is evidence or reason to believe the following (these incidents are also reported on an incident report and is filed with the Privacy Officer):
   * The user has been using their access rights inappropriately;
   * A user's password has been compromised (a new password may be provided to the user if the user is not identified as the individual compromising the original password);
   * An unauthorized individual is utilizing a user's User Login ID and password (a new password may be provided to the user if the user is not identified as providing the unauthorized individual with the User Login ID and password).
3. The Security Officer will terminate users' access rights immediately upon notification, and will coordinate with the appropriate NashBio employees to terminate access to any non-production systems managed by those employees.
4. The Security Officer audits and may terminate access of users that have not logged into organization's information systems/applications for an extended period of time.

## 7.11 Paper Records

NashBio does not use paper records for any sensitive information. Use of paper for recording and storing sensitive data is against NashBio policies.

## 7.12 Password Management

1. User IDs, passwords, and physical security keys are used to control access to NashBio systems and may not be disclosed to anyone for any reason.
2. Users may not allow anyone, for any reason, to have access to any information system using another user's unique user ID and password.
3. On all production systems and applications in the NashBio environment, password configurations are set to require:
   * a minimum length of 8 characters;
   * a mix of upper case characters, lower case characters, and numbers or special characters;
   * a requirement for two factor authentication;
   * account lockout after 10 invalid attempts;
   * all accounts with programatic data access require the use of a physical security key (yubikey) issued by NashBio;
4. All system and application passwords must be stored and transmitted securely and through Last Pass. 
   * Where possible, passwords should be stored in a hashed format using a salted cryptographic hash function (SHA-256 or equivalent).
   * Passwords that must be stored in non-hashed format must be encrypted at rest pursuant to the requirements in [§17.8](#17.8-production-data-security).
   * Transmitted passwords must be encrypted in flight pursuant to the requirements in [§17.9](#17.9-transmission-security).
5. Each information system automatically requires users to change passwords at a pre-determined interval as determined by the organization, based on the criticality and sensitivity of the ePHI contained within the network, system, application, and/or database.
6. Passwords are inactivated immediately upon an employee's termination (refer to the [Employee Termination Procedures in §7.10](#7.10-employee-termination-procedures)).
7. All default system, application, and Partner passwords are changed before deployment to production.
8. Upon initial login, users must change any passwords that were automatically generated for them.
9. Password change methods must use a confirmation method to correct for user input errors.
10. All passwords used in configuration scripts are secured and encrypted(o-keys).
11. If a user believes their user ID has been compromised, they are required to immediately report the incident to the Security Office.
12. In cases where a user has forgotten their password, the following procedure is used to reset the password.
    * The user submits a password reset request to the CTO. The request should include the system to which the user has lost access and needs the password reset.
    * An administrator with password reset privileges is notified and connects directly with the user requesting the password reset.
    * The administrator verifies the identity of the user either in-person or through a separate communication channel such as a phone call.
    * Once verified, the administrator sends the password reset link to the user.

Gsuite admin logging is used to track and store password reset requests. The Security Officer is the owner of this group and modifies membership as needed.

## 7.13 Access to ePHI

1. Employees may not download ePHI to any workstations used to connect to production systems.
2. Disallowing transfer of ePHI to workstations is enforced through technical measures.
   * All production access to systems is performed using SSL and Oauth2 authentication and where appropriate through a bastion/jump host accessed through SSL.

## 7.14 DaaS Customer Access to Systems

NashBio grants DaaS customer secure system access via Nashbio provided service account connections. This access is only to Customer-specific systems and databases, no other systems in the environment. These connections are setup at customer deployment. These connections are secured and encrypted and are the only method for customers to connect to NashBio hosted systems.

Nashbio segments customers and customer data into customer-specific cloud projects.  Data insertion into the project is performed programatically and logged via Stackdriver, and in github.

In the case of data migration, NashBio does, on a case by case basis, support customers in importing data. In these cases NashBio requires that all data is secured and encrypted in transit, such as by using SFTP or SCP for transferring files.

In the case of an investigation, NashBio will assist customers, at NashBio's discretion, and law enforcement in forensics.

## 7.15 Authorization to Electronic Systems and Applications

Vanderbilt University Medical Center (VUMC) requires an assigned digital representation for individuals through a unique username. Authentication of individuals to electronic systems and Applications require, at minimum a passoword. Systems and Applications that transmit and/or store VUMC Restricted or Private Data must utilize a VUMC-Approved Authentication Solution. Access to certain electronic systems and Applications requires Multi-Factor Authentication.

Authenitcation solutions transmitting and/or storing password data must do so utilizing secure methods.

1. See VUMC-Approved Authentication SOP for: 
   1. A list of VUMC-Approved Authentication Solutions; and
   2. A list of Applications/resources requiring MFA: and
   3. Password Requirements for Authenticaiton Solutions 

## 7.16 Authorization and Access to Electronic Systems and Applications

Authorization to Access:

1. Employees:
   1. All who receive access to the VUMC network and/or corresponding applications must: 
      * Complete Health Insurance Portability and Accountability Act (HIPAA) Privacy and Security Training; and 
      * Sign a VUMC Confidentiality agreement.
   2. Access to specific Restricted Systems may be granted according to job role upon request of the individual's Security Officer and written approval by the individual's Director (or higher-level position).
2. Individuals, other than employees, granted access to Restricted Systems:
   1. Access to specific Restricted Systems may be granted according to job role upon request of the individual's Security Officer and written approval by the individual's Director (or higher-level position).
   2. Authorization to access patient information may be granted as qualified in the policy: Access to Individually Identifiable Health Information.
   3. All who receive access to the VUMC network and/or corresponding applicaitons must: 
      * Sign a VUMC Confidentiality agreement.
      * Be prepared to provide evidence of Health Insurance Portability and Accountability Act (HIPAA) Privacy and Security Training. 
3. Public Individuals:
   1. Access to Unrestricted Systems is available without authorization from NashBio.
   2. Access to Restricted Systems is limited to specific applications and requires successful applicaiton by the requestor and confirmation of identification.

Modification of Access:

   1. Individuals who transfer to another department within NashBio may require changes with regard to the systems and appllications that they need to access. the department to which the individual is transferring is responsible for defining the specific systems and levels of access that the individual requires in the new role. The department the individual is leaving is responsible for taking the appropriate steps to deactivate the individual's access to all other systems, including departmental systems.
   2. Individuals may chagne job roles, necessitating changes to the level of systems access. The individual's manager is responsible for taking the appropriate steps, including notifying the Security Officer, so that the individual maintains the appropriate level of access needed in order to fulfill their job responsiblities.
   3. Security Officer is responsible for initiating the request for access process for individuals and for identifying the appropriate level of approval required based upon the relationship of the individual to NashBio and the category of information to which access is requested. 

Termination of Access:

When an individual's eployment, contract, or other affiliation with NashBio terminates, the individual's manager or contract administrator notifies the Security Officer who is then responsible for takingsteps so that the individual's access to electronic systems and applications is deactivated. 

External Access to Private or Restriced Data: 

Any system that stores Private or Restricted Data and is accessed from outside of the NashBio network must utilize an approved method for external access to Private or Restriced Data. Approved methods for external access are defined in External Access to Private or Restriced Data (SOP). 

## 7.17 External (Remote) Access to NashBio Data Network

1. External Access to NashBio Restricted Systems is limited to only those individuals who need such access to conduct NashBio business.
2. All External Access to the NashBio data network must use NashBio Approved Authentication Solutions and employ encryption in transit.
3. External Access to systems hosting Restricted Data requires use of a remote access mechanism which employs encryption in transit and Multi-Factor Authentication.
4. Networks privided by NashBio which are intended for use by the general public are considered external networks and are not considered part of the NashBio Enterprise data network.
5. An individual's External Access may be revoked after an extended period of non-use/inactivity.
6. When an individual's employment, contract or other affiliation with NashBio ends, the individual's permission for external access shall be revoked. 
7. NashBio will comply with any partner's or business associate's data access requirements, as long as they satisfy all of the security and encryption standards endorsed by NashBio. 

## 7.18 Electronic Identity/NashBio ID Management

1. General Information: 
   1. The NashBio ID(Google Workspace Account) is the most commonly used at NashBio. Other Electronic Identities with elevated privileges may be assigned to NashBio Workforce members as appropriate and are subject to the same applicable requirements articulated in this policy.
   2. NashBio IDs(Google Workspace Account) may only be assigend to individuals and may not be assigned  to entities or organizations or shared between individuals.
   3. An individual may have no more than one NashBio ID(Google Workspace Account) assigned to them for the purpose of uniquely identifying that individual. 
2. NashBio IDs(Google Workspace Account) Used for Unique Identification/ Authentication of End Users:
   1. NashBio IDs With No Termination Date: NashBio IDs that are created via automated HR feed as part of the onboarding process have no termination date and will remain active until HR reveives notification to update the feed to include a termination date. NashBio IDs managed by HR automated feed do not use the request and deactivation procedures described below. 
   2. NashBio IDs(Google Workspace Account) for Term Positions:
      * NashBio IDs for Term Positions shall only be active for the period of time necessary for the Term employee to fulfill their job duties for NashBio at which time the NashBio ID must be deactivated by the NashBio ID Requestor. NashBio IDs for Term Positions may be active for a maximum of one year at which time they will need to be deactivated if not renewed. renewal of a NashBio Id for a Term Posistion may only occur if there is an ongoing business need. 
      * It is the responsibility of NashBio ID Requestor to ensure the Term Position NashBio ID is active for the appropriate period of time.
3. Resource Account NashBio IDs:
   1. Resource Accounts are only used for system-to-system communication or other automated tasks. resource Accounts must not be used to manually log in to NashBio information systems.
   2. All Resource Accounts must be in compliance with this policy by Novermber 1, 2022 or be granted a security exception by NashBio Enterpries Cybersecurity. 
4.  Test NashBio IDs:
   1. Management of Test NashBio IDs are the responsibility of the individual to whom they are issued(e.g., periodic passowrd changes, may not be shared, etc...).
5. Dual Identities:
   1. Individuals with a Dual Identity must use their NashBio ID to Access NashBio information systems. 
   2. Individuals with Dual Identities will have an Electronic Identitiy without a termination date(Primary account) with NashBio and an Electronic Identity with a termination date (secondary account)with the other organization. Secondary accounts can be requested.
6. NashBio ID Requestor Responsibilities:
   1. When requesting a NashBio Id, the NashBio ID Requestor must document the business need for the issuance of the NashBio ID.
   2. When a Term Position NashBio Id or a Dual Identity is requested, it is the responsiblity of the NashBio Id Requestor to ensure that the identity of the individual for whom the NashBio ID is requested has been verified with a Goevernment Issued Identifiaction Document. 
7. Deactivate a NashBio ID:
   1. For deactivation of Term Position NashBio IDs, Resource Account NashBio IDs and Test NashBio IDs, request deactivtion with a General-Purpose Pegasus ticket. The business justification for deactivation must be provided in the request.
8. NashBio ID Issuance Process:
   1. For NashBio Id(Google Workspace Account) requests, the identity management system must retain the following data elements: 
      * Name of the individual making the request;
      * Name of the individual for whom the request was made;
      * Action taken;
      * Date of request fulfillment;
      * Busines need for NashBio ID; and
      * NashBio ID
   2. The data generated pusuant to issuance of a NashBio Id shall be retained indefinitely. 

## 7.19 Encryption standards:

   1. Mediums in Scope(Encryption standardds SOP):
      1. IPsec Virtual Private Network (VPN) Tunnels.
      2. Encrypted Browser Connections.
      3. Fixed Storage (Hard Drives).
      4. Removable Storage (USB/DVD-ROM/Bluetooth).
      5. Mobile Devices (Smartphones, Tablets).
   2. NashBio encrypts all data at rest and in trasit according to Google's Encryption Guidelines.
