# 25.  Guidelines for Using Notes in the SD

This document contains information about clinical notes - the unstructured part of the Synthetic Derivative (SD). Topics covered include the classification of notes, where notes are stored, how notes are accessed and the guidelines for notes access and use. 

## 25.1 What are Notes

1. Notes are the unstructured part of a patient's electronic medical record.
2. Notes are typically written by a patient's care providers, including but not limited to doctors, nurses, social workers, etc.
3. Notes often contain free text in a narrative style.
4. Some notes (e.g. radiology report) follow a distinct pattern that can be readily translated into a structured format given appropriate resources.
5. Free text/narrative:
	* Free text notes do not follow a pattern.
	* Free text notes do not have constraints on content.
	* An example of a free text note is a progress note written by a patient's PCP at their yearly wellness visit that contains varied topics about the patient. 
	* Access and use guidelines are addressed on slide 'Free text notes access and use', p.9.
6. Semi-structured/reports
	* Semi-structured notes follow a distinct pattern.
	* Semi-structured notes contain narrow, predefined content in specific locations within the note.
	* An example of a semi-structured note is a biopsy report written by a pathologist reporting on a liver biopsy taken to assess diagnosis.

## 25.2 Where are notes Located

1. Notes are located in the Note table in OMOP under the column header 'note_text'.
2. The complete Note table is housed in Netezza (migration to the cloud in process June 2022).
3. VICTR includes the Note table in their data drops to NashBio, however, note_text and many of the columns are passed as nulls.
	* NashBio receives the Notes table for the notes meta-data contained in the table, such as person_id. note_date and note_type_concept_id.

## 25.3 how are notes accessed

1. There are two mechanisms for accessing notes.
	1. VUMC hosted: VUMC employees may access notes through the SD GUI for small-scale manual review.
	2. NashBio hosted: NashBio (as of June 2022) may access notes by creating an assembly ticket (migration to Jira in process) for general notification and tracking purposes.
		* A set is created in the SD in order to develop an approach to identifying the correct notes of interest.
		* Notes are pulled via Netezza (migration to the cloud in process) and extracted to a csv or excel file.
		* Notes are stored on NashBio's environment, either Google Drive or in a cloud bucket.
		* This activity is overseen and excluded by VICTR embedded resource (i.e., Kai Smith).

## 25.4 General notes use practices, current state June 2022

1. Only VUMC employees may work directly (i.e. human eyes on the data) with unreviewed patient notes.
	* Exception: NashBio team members may handle these data programmatically, for example transporting data from point A to point B.
2. Specific clinical data points from either free text or semi-structured notes may be shared externally if manually reviewed by VUMC employees. 
	* Example: Biopsy finding substantiating presence of liver fibrosis.
	* Applies to any subject in the SD, no restriction on consent.
3. Entire semi-structured notes may be shared externally if manually reviewed by VUMC employees.
	* Example: radiology report for oncology CT scan.
	* Approval must be granted by VUMC EVP for Research (i.e. Dr. Bernard).
	* Applies to any subject in the SD, no restriction on consent.

## 25.5 Additional use practices for Free Text notes

1. Additional steps must be taken to access free text notes and share modified notes.
	* Approval must be granted by VUMC EVP for Research (i.e Dr. Bernard). 
	* Only participants who are BioVU, consented, opt-in are eligible (N=~385k).
	* A dedicated DUA between NashBio and VICTR may be granted through OCM.
2. There are two scenarios where access to an entire free text note may be granted.
	1. Manual review of notes
		* Complete notes must be manually reviewed for residual PHI and PII.
		* Residuals must be fully redacted. 
		* Once redaction is complete, the modified note may be shared externally with clients.
	2. Algorithmic processing of notes in NashBio cloud
		* NashBio may host client AI/ML/NLP applications within NashBio's cloud environment (which undergoes annual VUMC security review).
		* Client's application may analyze complete notes to create structured outputs. 
		* Application outputs may be shared externally with clients, following review for residual PHI and PII.
3. These scenarios pertain to access of an entire free text note; if snippets or keywords are extracted from the free text note, the General Notes Use Practices (25.4) governs this activity.

