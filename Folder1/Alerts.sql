--alert logs

select * from flx_ep_acn_log_b aa  order by aa.dat_sys_log desc; 

select count(*) from  flx_ep_acn_log_b b where b.dat_sys_log < '31-JAN-2014';
delete from  flx_ep_acn_log_b b where b.dat_sys_log < '30-SEP-2014';
--2551577
--2397534
--154043

--template
select * from FLX_EP_MSG_TMPL_B where COD_TMPL_ID like '%NAB_Email%' for update;

select * from FLX_EP_MSG_ATTR_B where COD_MESS_TMPL_ID = 'Alert_Offer_Deposit_Account';

select * from FLX_EP_MSG_SRC_B where COD_MESS_TMPL_ID = 'Alert_Offer_Deposit_Account';

--com.ofss.fc.app.origination.service.lending.core.credit.decision.CreditDecisionApplicationService.performAutoDecision
--com.ofss.fc.app.origination.service.lending.core.credit.decision.CreditDecisionApplicationService.performAutoDecision.conditionalApproval
--OR_CZ_SUBMISSION_COND_APPROVE
select * from FLX_EP_ACT_EVT_ACN_B where cod_act_id='com.ofss.fc.app.origination.service.lending.core.credit.decision.CreditDecisionApplicationService.performAutoDecision.conditionalApproval';
select * from FLX_EP_ACT_EVT_ACN_B where cod_act_id='com.ofss.fc.app.origination.service.deposit.application.DepositAccountApplicationService.openDemandDepositAccount';

select * from FLX_EP_EVT_REC_B where cod_act_id = 'com.ofss.fc.app.origination.service.deposit.application.DepositAccountApplicationService.openDemandDepositAccount' and cod_event_id='OR_CASA_ACCT_OPENING_IND';
--RL_Origination_AcctCreation_N

select * from CZ_NAB_ALERT_EVENT_MAPPING where COD_ACT_ID = 'com.ofss.fc.app.origination.service.deposit.application.DepositAccountApplicationService.openDemandDepositAccount';

select * from FLX_RL_RULE_CODES where RULE_CODE='RL_Origination_AcctCreation_N';
select * from FLX_RL_RULES_B where RULE_CODE='RL_Origination_AcctCreation_N';

--facts
select * from FLX_FA_FACTS_B where FACT_NAME='MarketEntity Code';
select * from flx_fa_facts_b  where fact_name like '%Busines%';

select * from flx_ep_act_log_b;

--metadata
select * from FLX_MD_SERVICE_DEFN WHERE COD_SERVICE_ID = 'com.ofss.fc.cz.nab.app.adapter.impl.ep.AlertEventProcessAdapter.ManualCreditDecisionAlert';

SELECT * FROM FLX_MD_SERVICE_ATTR WHERE COD_SERVICE_ID in ('com.ofss.fc.app.origination.service.deposit.application.DepositAccountApplicationService.openDemandDepositAccount');

SELECT * FROM FLX_MD_SERVICE_ATTR_SRC where COD_SERVICE_ATTR_ID like 'com.ofss.fc.app.origination.service.deposit.application.DepositAccountApplicationService.openDemandDepositAccount.DemandDepositAccount%';

SELECT * FROM FLX_MD_SERVICE_ATTR_SRC where REF_FIELD_DEFN_ID like '%ManualCreditDecisionAlertDTO%';

SELECT * FROM FLX_MD_SERVICE_ATTR_SRC where REF_FIELD_DEFN_ID like '%cz%' and COD_SERVICE_ATTR_ID like '%com.ofss.fc.app%';

select * from FLX_MD_GEN_ATTR_B where COD_CONSTRAINT_ATTR_ID='Submission.Applicant.ExternalPartyId';

select * from FLX_MD_KEY_FIELDS;

select * from FLX_MD_DATA_DEFN;

SELECT * FROM FLX_MD_SERVICE_INPUTS;

SELECT * FROM FLX_MD_SERVICE_OUTPUT;

--cz
select * from flx_fw_config_all_b where prop_id like '%WELCOME%';
--com.ofss.fc.cz.nab.app.adapter.impl.ep.AlertEventProcessAdapter.ManualCreditDecisionAlert


--prd

select * from FLX_PM_PRODUCTS_B where product_desc like '%Reward Saver%';
select * from FLX_PM_OFFERS_B where offer_desc like '%Reward Saver%';
--Classic Banking, Retirement Account, Reward Saver, iSaver


select * from FLX_EP_DEC_AGT_B where cod_dec_id in ( '686','687');
select * from FLX_EP_RULE_DATA_SRC_B where cod_dec_agnt_id in ( '686','687');
select * from FLX_RL_RULE_CODES where rule_code = 'RL_Origination_AcctCreation_N';
select * from flx_ep_rec_msg_tmpl_b where cod_msg_tmpl_id like '%MSG_AL_TNX_VER_0204%';


select * from flx_ep_msg_tmpl_b tt where tt.cod_tmpl_id='Origination_AccountCreation_N'; 
select * from flx_ep_evt_rec_b ss where ss.cod_msg_tmpl_id like '%Origination_AccountCreation_N%';
select * from flx_ep_act_evt_acn_b uu where uu.cod_event_id='OR_DRAWDOWN_COND_APPROVE';
---16.3.1 report CR

select cc.creation_date, aa.*
  from cz_nab_ins_cci_policy_q bb, cz_nab_ins_insurance_q aa, flx_or_submissions cc
 where bb.submission_id = 'SUB089992016298655'
   and aa.facility_id = bb.facility_id
   and cc.submission_id =  'SUB089992016298655';
   
--FC20160890077455

select * from REP_OR_NMP01;


select * from REP_TAB_NMP01;

select * from REP_REC_NMP01;

SELECT curr_date FROM flx_cs_bank_dates_b;--3/29/2016

select * from cz_nab_ins_insurance_q inq where facility_id = 'FC20160890077469';
select * from cz_nab_ins_insurance_b where facility_id = 'FC20160890077469';

select * from CZ_NAB_INS_CCI_POLICY_Q where facility_id = 'FC20160890077455';

select * from cz_nab_ins_cci_policy_q where submission_id = 'SUB089992016298669';

--report
select * from flx_cs_report_ctrl where cod_report_id = 'NMP01';
select * from flx_cs_report_params where cod_report_id = 'NMP01';
select * from flx_cs_report_requests where cod_job = 'NMP01' order by dat_system desc;

select prop_id, prop_value from flx_fw_config_all_b where category_id = 'CZ_NAB_NABTaxation';
select * from cz_nab_tds_remittance_gl_map;

select * from flx_fw_config_all_b where prop_id like '%NAB%'
