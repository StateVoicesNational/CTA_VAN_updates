-- SV Data and Technology Team
-- October 2024

-- The script below is an example for updating any records that are null on the campaignname field in your state. 
-- Look through the batches of records you pull from the SELECT statement to determine which records require which 2024 campaign applied to them.
-- For batches of records that require the same campaignname, you can include multiple batch IDs in a paired SET and WHERE statement, as shown below.

DECLARE maxbatchdate DATETIME DEFAULT (SELECT MAX(batchdate) FROM `sv_analytics.qa_contactscampaign`);

SELECT * FROM `sv_analytics.qa_contactscampaign` WHERE campaignname IS NULL AND batchdate = maxbatchdate;

UPDATE `sv_analytics.qa_contactscampaign` 
SET campaignname= '2024 Voter Mobilization' 
WHERE batch_id IN ('5e0bf8f6-0cf7-422b-bbf3-93669ddf5811', '5e0bf8f6-0cf7-422b-bbf3-93669ddf5811'); 



-- Reach out to Sharvin Lee (slee-svconsultant@statevoices.org) or Jorge Mendoza (jmendoza@statevoices.org) with further questions.
