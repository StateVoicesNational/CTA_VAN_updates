-- SV Data and Technology Team
-- October 2024

-- The script below is an example for updating any records that are null on the campaignname field in your state. 
-- Look through the batches of records you pull from the SELECT statement to determine which records require which 2024 campaign applied to them.
-- For batches of records that require the same campaignname, you can include multiple batch IDs in the WHERE clause of the UPDATE statement, as shown below.

DECLARE maxbatchdate DATETIME DEFAULT (SELECT MAX(batchdate) FROM `sv_analytics.qa_contactscampaign`)
;
SELECT * FROM `sv_analytics.qa_contactscampaign` WHERE campaignname IS NULL AND batchdate = maxbatchdate
;

UPDATE `sv_analytics.qa_contactscampaign` 
SET campaignname= '2024 Voter Mobilization' 
WHERE batch_id IN ('5e0bf8f6-0cf7-422b-bbf3-93669ddf5811', '5e0bf8f6-0cf7-422b-bbf3-93669ddf5811')
; 



-- Reach out to Sharvin Lee (slee-svconsultant@statevoices.org) or Jorge Mendoza (jmendoza@statevoices.org) with further questions.


/*
-- Below is an example. 
-- You can execute multiple UPDATE statements in one run. For each separate run, you will need to begin with the same DECLARE and SELECT statements. 

DECLARE maxbatchdate DATETIME DEFAULT (SELECT MAX(batchdate) FROM `sv_analytics.qa_contactscampaign`)
;
SELECT * FROM `sv_analytics.qa_contactscampaign` WHERE campaignname IS NULL AND batchdate = maxbatchdate
;

UPDATE `sv_analytics.qa_contactscampaign` 
SET campaignname= '2024 Voter Mobilization' 
WHERE batch_id IN ('5e0bf8f6-0cf7-422b-bbf3-93669ddf5811', '5e0bf8f6-0cf7-422b-bbf3-93669dde2492')
; 

UPDATE `sv_analytics.qa_contactscampaign` 
SET campaignname= '2024 Redistricting' 
WHERE batch_id IN ('5e0bf8f6-0cf7-422b-bbf3-93669ddq3990', '5e0bf8f6-0cf7-422b-bbf3-93669ddc5734',
'5e0bf8f6-0cf7-422b-bbf3-93669ddl6711')
; 

UPDATE `sv_analytics.qa_contactscampaign` 
SET campaignname= '2024 Statewide General Election' 
WHERE batch_id IN ('5e0bf8f6-0cf7-422b-bbf3-93669dda4009', '5e0bf8f6-0cf7-422b-bbf3-93669ddm8801',
'5e0bf8f6-0cf7-422b-bbf3-93669ddp0064','5e0bf8f6-0cf7-422b-bbf3-93669ddx7741')
; 

*/
/* 
-- 2024 STATE VOICES CAMPAIGN DEFINITIONS
-- 2024 Direct Community Service - Civic Engagement programming for mutual aid, disaster response 
and relief or directing people to other public resources
-- 2024 Policy Advocacy & Education - Civic engagement programming to educate and advocate for local, 
state or federal public policy
-- 2024 Special Election - Civic engagement activity programming to inform and mobilize voters to 
participate in a state or local special election in 2024
-- 2024 Statewide Primary/Caucus Election - Civic engagement activity to inform and mobilize voters 
to participate in a statewide primary election or statewide caucus in 2024
note: if your state had a statewide presidential primary and statewide primary election, please work 
with the national data team on creating the appropriate campaign
-- 2024 Voter Registration - Civic engagement activity focused on voter registration and programs, 
such as: voter registration update programs for inactive voters, phone banking new registrants to 
confirm the opt-in or voter registration, etc
-- 2024 Local Election - Civic engagement activity programming to inform and mobilize voters to 
participate in a local election in 2024 (i.e. school district millage, local elected official recall)
-- 2024 Redistricting - civic engagement activity focused on educating, training and mobilizing 
voters around redistricting efforts, events and policy
-- 2024 Statewide General Election - Civic engagement activity to inform and mobilize voters to 
participate in a statewide general election in 2024
-- 2024 Voter Mobilization - Civic engagement activity to mobilize voters for an event, rally or 
other non-partisan initiative
*/
