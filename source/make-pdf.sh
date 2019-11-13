#!/bin/bash

# Script to generate PDFs of all policies using pandoc
# sh make-pdf.sh

mkdir ~/Desktop/policies-pdf/
pandoc ./sections/01-introduction.md -s -o ~/Desktop/policies-pdf/01-introduction.pdf
pandoc ./sections/02-hipaa_inheritance.md -s -o ~/Desktop/policies-pdf/02-hipaa_inheritance.pdf
pandoc ./sections/03-policy_management_policy.md -s -o ~/Desktop/policies-pdf/03-policy_management_policy.pdf
pandoc ./sections/04-risk_management_policy.md -s -o ~/Desktop/policies-pdf/04-risk_management_policy.pdf
pandoc ./sections/05-roles_policy.md -s -o ~/Desktop/policies-pdf/05-roles_policy.pdf
pandoc ./sections/06-data_management_policy.md -s -o ~/Desktop/policies-pdf/06-data_management_policy.pdf
pandoc ./sections/07-systems_access_policy.md -s -o ~/Desktop/policies-pdf/07-systems_access_policy.pdf
pandoc ./sections/08-auditing_policy.md -s -o ~/Desktop/policies-pdf/08-auditing_policy.pdf
pandoc ./sections/09-configuration_management_policy.md -s -o ~/Desktop/policies-pdf/09-configuration_management_policy.pdf
pandoc ./sections/10-facility_access_policy.md -s -o ~/Desktop/policies-pdf/10-facility_access_policy.pdf
pandoc ./sections/11-incident_response_policy.md -s -o ~/Desktop/policies-pdf/11-incident_response_policy.pdf
pandoc ./sections/12-breach_policy.md -s -o ~/Desktop/policies-pdf/12-breach_policy.pdf
pandoc ./sections/13-disaster_recovery_policy.md -s -o ~/Desktop/policies-pdf/13-disaster_recovery_policy.pdf
pandoc ./sections/14-disposable_media_policy.md -s -o ~/Desktop/policies-pdf/14-disposable_media_policy.pdf
pandoc ./sections/15-ids_policy.md -s -o ~/Desktop/policies-pdf/15-ids_policy.pdf
pandoc ./sections/16-vulnerability_scanning_policy.md -s -o ~/Desktop/policies-pdf/16-vulnerability_scanning_policy.pdf
pandoc ./sections/17-data_integrity_policy.md -s -o ~/Desktop/policies-pdf/17-data_integrity_policy.pdf
pandoc ./sections/18-data_retention_policy.md -s -o ~/Desktop/policies-pdf/18-data_retention_policy.pdf
pandoc ./sections/19-employees_policy.md -s -o ~/Desktop/policies-pdf/19-employees_policy.pdf
pandoc ./sections/20-approved_tools_policy.md -s -o ~/Desktop/policies-pdf/20-approved_tools_policy.pdf
pandoc ./sections/21-3rd_party_policy.md -s -o ~/Desktop/policies-pdf/21-3rd_party_policy.pdf
pandoc ./sections/22-key_definitions.md -s -o ~/Desktop/policies-pdf/22-key_definitions.pdf
pandoc ./sections/23-nashbio_hipaa_business_associate_agreement.md -s -o ~/Desktop/policies-pdf/23-nashbio_hipaa_business_associate_agreement.pdf
pandoc ./sections/24-hipaa_mapping_to_nashbio_controls.md -s -o ~/Desktop/policies-pdf/24-hipaa_mapping_to_nashbio_controls.pdf