/*Library Path To save Output datasets */
libname a1"D:\WAMU\20 oct\task5";

proc freq data=a1.Data_q8a_merge_q1cf_trans;
tables qmarket;
run;
/*Keeping Variables needed for Analysis from transform database*/
data a1.q8a_task5;
set a1.Data_tagline_q1cg_q8a_merge;
keep 
q8aab_1
q8aab_2
q8aab_3
q8aab_4
q8aab_5
q8aab_6
q8aab_7
q8aab_8
q8aac_1
q8aac_2
q8aac_3
q8aac_4
q8aac_5
q8aac_6
q8aac_7
q8aac_8
q8aba_1
q8aba_2
q8aba_3
q8aba_4
q8aba_5
q8aba_6
q8aba_7
q8aba_8
q8abb_1
q8abb_2
q8abb_3
q8abb_4
q8abb_5
q8abb_6
q8abb_7
q8abb_8
q8acb_1
q8acb_2
q8acb_3
q8acb_4
q8acb_5
q8acb_6
q8acb_7
q8acb_8
q8acd_1
q8acd_2
q8acd_3
q8acd_4
q8acd_5
q8acd_6
q8acd_7
q8acd_8
q8ace_1
q8ace_2
q8ace_3
q8ace_4
q8ace_5
q8ace_6
q8ace_7
q8ace_8
q8aci_1
q8aci_2
q8aci_3
q8aci_4
q8aci_5
q8aci_6
q8aci_7
q8aci_8
q8acj_1
q8acj_2
q8acj_3
q8acj_4
q8acj_5
q8acj_6
q8acj_7
q8acj_8
q8ack_1
q8ack_2
q8ack_3
q8ack_4
q8ack_5
q8ack_6
q8ack_7
q8ack_8
q8ada_1
q8ada_2
q8ada_3
q8ada_4
q8ada_5
q8ada_6
q8ada_7
q8ada_8
q8adb_1
q8adb_2
q8adb_3
q8adb_4
q8adb_5
q8adb_6
q8adb_7
q8adb_8
q8afb_1
q8afb_2
q8afb_3
q8afb_4
q8afb_5
q8afb_6
q8afb_7
q8afb_8
q8aha_1
q8aha_2
q8aha_3
q8aha_4
q8aha_5
q8aha_6
q8aha_7
q8aha_8
q8ahb_1
q8ahb_2
q8ahb_3
q8ahb_4
q8ahb_5
q8ahb_6
q8ahb_7
q8ahb_8
q8ahc_1
q8ahc_2
q8ahc_3
q8ahc_4
q8ahc_5
q8ahc_6
q8ahc_7
q8ahc_8
q8aka_1
q8aka_2
q8aka_3
q8aka_4
q8aka_5
q8aka_6
q8aka_7
q8aka_8
q8ala_1
q8ala_2
q8ala_3
q8ala_4
q8ala_5
q8ala_6
q8ala_7
q8ala_8
q8ana_1
q8ana_2
q8ana_3
q8ana_4
q8ana_5
q8ana_6
q8ana_7
q8ana_8
q8anb_1
q8anb_2
q8anb_3
q8anb_4
q8anb_5
q8anb_6
q8anb_7
q8anb_8
q8apa_1
q8apa_2
q8apa_3
q8apa_4
q8apa_5
q8apa_6
q8apa_7
q8apa_8
q8apb_1
q8apb_2
q8apb_3
q8apb_4
q8apb_5
q8apb_6
q8apb_7
q8apb_8
q8ara_1
q8ara_2
q8ara_3
q8ara_4
q8ara_5
q8ara_6
q8ara_7
q8ara_8
q8asb_1
q8asb_2
q8asb_3
q8asb_4
q8asb_5
q8asb_6
q8asb_7
q8asb_8
q8asc_1
q8asc_2
q8asc_3
q8asc_4
q8asc_5
q8asc_6
q8asc_7
q8asc_8
q8aua_1
q8aua_2
q8aua_3
q8aua_4
q8aua_5
q8aua_6
q8aua_7
q8aua_8
q8awa_1
q8awa_2
q8awa_3
q8awa_4
q8awa_5
q8awa_6
q8awa_7
q8awa_8
q8awb_1
q8awb_2
q8awb_3
q8awb_4
q8awb_5
q8awb_6
q8awb_7
q8awb_8
q8awd_1
q8awd_2
q8awd_3
q8awd_4
q8awd_5
q8awd_6
q8awd_7
q8awd_8
q8awe_1
q8awe_2
q8awe_3
q8awe_4
q8awe_5
q8awe_6
q8awe_7
q8awe_8
q8awg_1
q8awg_2
q8awg_3
q8awg_4
q8awg_5
q8awg_6
q8awg_7
q8awg_8
q8aza_1
q8aza_2
q8aza_3
q8aza_4
q8aza_5
q8aza_6
q8aza_7
q8aza_8
sequential
qmarket
sc1
sc2
sc3
sc4
sc5
sc6
sc7
sc8
resp
qtype
month
week
Weeks
qweek
cn1
cn2
;
run;
/*removing AA aug*/
data a1.data_AAA_delete_task5;
set a1.Q8a_task5;
if qtype=2 then delete;
run;
/*keep aug-07-aug08*/
data aug07_aug08;
set a1.data_AAA_delete_task5;
if month>=19 and month<=31;
run;
/*personal checking acc competitor with wamu*/
data checking_account_comp;
set aug07_aug08;
if
q8aab_1 = 1 or 	q8aac_1 = 1 or 	q8aba_1 = 1 or 	q8abb_1 = 1 or 	q8acb_1 = 1 or 	q8acd_1 = 1 or 	q8ace_1 = 1 or 	q8aci_1 = 1 or 	q8acj_1 = 1 or 	q8ack_1 = 1 or 	q8ada_1 = 1 or 	q8adb_1 = 1 or 	q8afb_1 = 1 or 	q8aha_1 = 1 or 	q8ahb_1 = 1 or 	q8ahc_1 = 1 or 	q8aka_1 = 1 or 	q8ala_1 = 1 or 	q8ana_1 = 1 or 	q8anb_1 = 1 or 	q8apa_1 = 1 or 	q8apb_1 = 1 or 	q8ara_1 = 1 or 	q8asb_1 = 1 or 	q8asc_1 = 1 or 	q8aua_1 = 1 or 	q8awa_1 = 1 or 	q8awb_1 = 1 or 	q8awd_1 = 1 or 	q8awe_1 = 1 or 	q8awg_1 = 1 or 	q8aza_1 = 1 or 
q8aab_1 = 2 or 	q8aac_1 = 2 or 	q8aba_1 = 2 or 	q8abb_1 = 2 or 	q8acb_1 = 2 or 	q8acd_1 = 2 or 	q8ace_1 = 2 or 	q8aci_1 = 2 or 	q8acj_1 = 2 or 	q8ack_1 = 2 or 	q8ada_1 = 2 or 	q8adb_1 = 2 or 	q8afb_1 = 2 or 	q8aha_1 = 2 or 	q8ahb_1 = 2 or 	q8ahc_1 = 2 or 	q8aka_1 = 2 or 	q8ala_1 = 2 or 	q8ana_1 = 2 or 	q8anb_1 = 2 or 	q8apa_1 = 2 or 	q8apb_1 = 2 or 	q8ara_1 = 2 or 	q8asb_1 = 2 or 	q8asc_1 = 2 or 	q8aua_1 = 2 or 	q8awa_1 = 2 or 	q8awb_1 = 2 or 	q8awd_1 = 2 or 	q8awe_1 = 2 or 	q8awg_1 = 2 or 	q8aza_1 = 2 or 
q8aab_1 = 3 or 	q8aac_1 = 3 or 	q8aba_1 = 3 or 	q8abb_1 = 3 or 	q8acb_1 = 3 or 	q8acd_1 = 3 or 	q8ace_1 = 3 or 	q8aci_1 = 3 or 	q8acj_1 = 3 or 	q8ack_1 = 3 or 	q8ada_1 = 3 or 	q8adb_1 = 3 or 	q8afb_1 = 3 or 	q8aha_1 = 3 or 	q8ahb_1 = 3 or 	q8ahc_1 = 3 or 	q8aka_1 = 3 or 	q8ala_1 = 3 or 	q8ana_1 = 3 or 	q8anb_1 = 3 or 	q8apa_1 = 3 or 	q8apb_1 = 3 or 	q8ara_1 = 3 or 	q8asb_1 = 3 or 	q8asc_1 = 3 or 	q8aua_1 = 3 or 	q8awa_1 = 3 or 	q8awb_1 = 3 or 	q8awd_1 = 3 or 	q8awe_1 = 3 or 	q8awg_1 = 3 or 	q8aza_1 = 3 or 
q8aab_1 = 4 or 	q8aac_1 = 4 or 	q8aba_1 = 4 or 	q8abb_1 = 4 or 	q8acb_1 = 4 or 	q8acd_1 = 4 or 	q8ace_1 = 4 or 	q8aci_1 = 4 or 	q8acj_1 = 4 or 	q8ack_1 = 4 or 	q8ada_1 = 4 or 	q8adb_1 = 4 or 	q8afb_1 = 4 or 	q8aha_1 = 4 or 	q8ahb_1 = 4 or 	q8ahc_1 = 4 or 	q8aka_1 = 4 or 	q8ala_1 = 4 or 	q8ana_1 = 4 or 	q8anb_1 = 4 or 	q8apa_1 = 4 or 	q8apb_1 = 4 or 	q8ara_1 = 4 or 	q8asb_1 = 4 or 	q8asc_1 = 4 or 	q8aua_1 = 4 or 	q8awa_1 = 4 or 	q8awb_1 = 4 or 	q8awd_1 = 4 or 	q8awe_1 = 4 or 	q8awg_1 = 4 or 	q8aza_1 = 4 or 
q8aab_1 = 5 or 	q8aac_1 = 5 or 	q8aba_1 = 5 or 	q8abb_1 = 5 or 	q8acb_1 = 5 or 	q8acd_1 = 5 or 	q8ace_1 = 5 or 	q8aci_1 = 5 or 	q8acj_1 = 5 or 	q8ack_1 = 5 or 	q8ada_1 = 5 or 	q8adb_1 = 5 or 	q8afb_1 = 5 or 	q8aha_1 = 5 or 	q8ahb_1 = 5 or 	q8ahc_1 = 5 or 	q8aka_1 = 5 or 	q8ala_1 = 5 or 	q8ana_1 = 5 or 	q8anb_1 = 5 or 	q8apa_1 = 5 or 	q8apb_1 = 5 or 	q8ara_1 = 5 or 	q8asb_1 = 5 or 	q8asc_1 = 5 or 	q8aua_1 = 5 or 	q8awa_1 = 5 or 	q8awb_1 = 5 or 	q8awd_1 = 5 or 	q8awe_1 = 5 or 	q8awg_1 = 5 or 	q8aza_1 = 5
then
checking_account_comp=1;
run;



/*personal checking acc wamu*/
data checking_account_wamu;
set checking_account_comp;
if q8awa_1=1 or q8awa_1=2 or q8awa_1=3 or q8awa_1=4 or q8awa_1=5 then checking_account_wamu=1;
run;
/*personal checking acc wamu last year*/

data checking_account_wamu_last_year;
set checking_account_wamu;  
if q8awa_1=1 or q8awa_1=2 then checking_account_wamu_lastyear=1;
run;

proc freq data=checking_account_wamu_last_year;
tables checking_account_wamu_lastyear checking_account_wamu;
run;

/*personal checking acc comp last year*/

data checking_account_comp_last_year;
set checking_account_wamu_last_year;
if 
q8aab_1 = 1 or 	q8aac_1 = 1 or 	q8aba_1 = 1 or 	q8abb_1 = 1 or 	q8acb_1 = 1 or 	q8acd_1 = 1 or 	q8ace_1 = 1 or 	q8aci_1 = 1 or 	q8acj_1 = 1 or 	q8ack_1 = 1 or 	q8ada_1 = 1 or 	q8adb_1 = 1 or 	q8afb_1 = 1 or 	q8aha_1 = 1 or 	q8ahb_1 = 1 or 	q8ahc_1 = 1 or 	q8aka_1 = 1 or 	q8ala_1 = 1 or 	q8ana_1 = 1 or 	q8anb_1 = 1 or 	q8apa_1 = 1 or 	q8apb_1 = 1 or 	q8ara_1 = 1 or 	q8asb_1 = 1 or 	q8asc_1 = 1 or 	q8aua_1 = 1 or 	q8awa_1 = 1 or 	q8awb_1 = 1 or 	q8awd_1 = 1 or 	q8awe_1 = 1 or 	q8awg_1 = 1 or 	q8aza_1 = 1 or 
q8aab_1 = 2 or 	q8aac_1 = 2 or 	q8aba_1 = 2 or 	q8abb_1 = 2 or 	q8acb_1 = 2 or 	q8acd_1 = 2 or 	q8ace_1 = 2 or 	q8aci_1 = 2 or 	q8acj_1 = 2 or 	q8ack_1 = 2 or 	q8ada_1 = 2 or 	q8adb_1 = 2 or 	q8afb_1 = 2 or 	q8aha_1 = 2 or 	q8ahb_1 = 2 or 	q8ahc_1 = 2 or 	q8aka_1 = 2 or 	q8ala_1 = 2 or 	q8ana_1 = 2 or 	q8anb_1 = 2 or 	q8apa_1 = 2 or 	q8apb_1 = 2 or 	q8ara_1 = 2 or 	q8asb_1 = 2 or 	q8asc_1 = 2 or 	q8aua_1 = 2 or 	q8awa_1 = 2 or 	q8awb_1 = 2 or 	q8awd_1 = 2 or 	q8awe_1 = 2 or 	q8awg_1 = 2 or 	q8aza_1 = 2 
then 
checking_account_comp_lastyear=1;
run;
/*QC*/
proc freq data=checking_account_comp_last_year;
tables checking_account_comp checking_account_wamu checking_account_wamu_lastyear checking_account_comp_lastyear;
run; 
/*denovo and establish market*/

data denovo_establish;
set checking_account_comp_last_year;
if 
qmarket=6 or qmarket=2 or qmarket=4 or qmarket=1 or qmarket=7 or qmarket=18 
or qmarket=21 or qmarket=3 or qmarket=5 or qmarket=8 or qmarket=9 then market_type="Established";
if qmarket=12 or qmarket=11 or qmarket=15 or qmarket=16 or qmarket=14 or qmarket=13 or qmarket=10
then market_type="De_Novo";
run;

data last_year_banks;
set denovo_establish;
if q8aab_1 = 1 or q8aab_1 = 2 then checking_account_American = 1;
if q8aac_1 = 1 or q8aac_1 = 2 then checking_account_AmSouth = 1;
if q8aba_1 = 1 or q8aba_1 = 2 then checking_account_Atlantic_Bank = 1;
if q8abb_1 = 1 or q8abb_1 = 2 then checking_account_Bankofamerica = 1;
if q8acb_1 = 1 or q8acb_1 = 2 then checking_account_Capital = 1;
if q8acd_1 = 1 or q8acd_1 = 2 then checking_account_Chase = 1;
if q8ace_1 = 1 or q8ace_1 = 2 then checking_account_Citibank = 1;
if q8aci_1 = 1 or q8aci_1 = 2 then checking_account_Commerce = 1;
if q8acj_1 = 1 or q8acj_1 = 2 then checking_account_Compass = 1;
if q8ack_1 = 1 or q8ack_1 = 2 then checking_account_Countrywide = 1;
if q8ada_1 = 1 or q8ada_1 = 2 then checking_account_Diners = 1;
if q8adb_1 = 1 or q8adb_1 = 2 then checking_account_Discover = 1;
if q8afb_1 = 1 or q8afb_1 = 2 then checking_account_Fifth = 1;
if q8aha_1 = 1 or q8aha_1 = 2 then checking_account_Harris = 1;
if q8ahb_1 = 1 or q8ahb_1 = 2 then checking_account_HSBC = 1;
if q8ahc_1 = 1 or q8ahc_1 = 2 then checking_account_Hudson = 1;
if q8aka_1 = 1 or q8aka_1 = 2 then checking_account_Key = 1;
if q8ala_1 = 1 or q8ala_1 = 2 then checking_account_LaSalle = 1;
if q8ana_1 = 1 or q8ana_1 = 2 then checking_account_National = 1;
if q8anb_1 = 1 or q8anb_1 = 2 then checking_account_Nevada = 1;
if q8apa_1 = 1 or q8apa_1 = 2 then checking_account_People = 1;
if q8apb_1 = 1 or q8apb_1 = 2 then checking_account_PNC = 1;
if q8ara_1 = 1 or q8ara_1 = 2 then checking_account_Regions = 1;
if q8asb_1 = 1 or q8asb_1 = 2 then checking_account_Sterling = 1;
if q8asc_1 = 1 or q8asc_1 = 2 then checking_account_Sun = 1;
if q8aua_1 = 1 or q8aua_1 = 2 then checking_account_US = 1;
if q8awb_1 = 1 or q8awb_1 = 2 then checking_account_Wachovia = 1;
if q8awa_1 = 1 or q8awa_1 = 2 then checking_account_WaMu = 1;
if q8awd_1 = 1 or q8awd_1 = 2 then checking_account_Webster = 1;
if q8awe_1 = 1 or q8awe_1 = 2 then checking_account_Wells = 1;
if q8awg_1 = 1 or q8awg_1 = 2 then checking_account_World = 1;
if q8aza_1 = 1 or q8aza_1 = 2 then checking_account_Zions = 1;
run;


data checking_account_comp_wid_wamu;
set last_year_banks;
if
q8aab_1 = 1 or 	q8aac_1 = 1 or 	q8aba_1 = 1 or 	q8abb_1 = 1 or 	q8acb_1 = 1 or 	q8acd_1 = 1 or 	q8ace_1 = 1 or 	q8aci_1 = 1 or 	q8acj_1 = 1 or 	q8ack_1 = 1 or 	q8ada_1 = 1 or 	q8adb_1 = 1 or 	q8afb_1 = 1 or 	q8aha_1 = 1 or 	q8ahb_1 = 1 or 	q8ahc_1 = 1 or 	q8aka_1 = 1 or 	q8ala_1 = 1 or 	q8ana_1 = 1 or 	q8anb_1 = 1 or 	q8apa_1 = 1 or 	q8apb_1 = 1 or 	q8ara_1 = 1 or 	q8asb_1 = 1 or 	q8asc_1 = 1 or 	q8aua_1 = 1 or 	q8awb_1 = 1 or 	q8awd_1 = 1 or 	q8awe_1 = 1 or 	q8awg_1 = 1 or 	q8aza_1 = 1 or 
q8aab_1 = 2 or 	q8aac_1 = 2 or 	q8aba_1 = 2 or 	q8abb_1 = 2 or 	q8acb_1 = 2 or 	q8acd_1 = 2 or 	q8ace_1 = 2 or 	q8aci_1 = 2 or 	q8acj_1 = 2 or 	q8ack_1 = 2 or 	q8ada_1 = 2 or 	q8adb_1 = 2 or 	q8afb_1 = 2 or 	q8aha_1 = 2 or 	q8ahb_1 = 2 or 	q8ahc_1 = 2 or 	q8aka_1 = 2 or 	q8ala_1 = 2 or 	q8ana_1 = 2 or 	q8anb_1 = 2 or 	q8apa_1 = 2 or 	q8apb_1 = 2 or 	q8ara_1 = 2 or 	q8asb_1 = 2 or 	q8asc_1 = 2 or 	q8aua_1 = 2 or 	q8awb_1 = 2 or 	q8awd_1 = 2 or 	q8awe_1 = 2 or 	q8awg_1 = 2 or 	q8aza_1 = 2 or 
q8aab_1 = 3 or 	q8aac_1 = 3 or 	q8aba_1 = 3 or 	q8abb_1 = 3 or 	q8acb_1 = 3 or 	q8acd_1 = 3 or 	q8ace_1 = 3 or 	q8aci_1 = 3 or 	q8acj_1 = 3 or 	q8ack_1 = 3 or 	q8ada_1 = 3 or 	q8adb_1 = 3 or 	q8afb_1 = 3 or 	q8aha_1 = 3 or 	q8ahb_1 = 3 or 	q8ahc_1 = 3 or 	q8aka_1 = 3 or 	q8ala_1 = 3 or 	q8ana_1 = 3 or 	q8anb_1 = 3 or 	q8apa_1 = 3 or 	q8apb_1 = 3 or 	q8ara_1 = 3 or 	q8asb_1 = 3 or 	q8asc_1 = 3 or 	q8aua_1 = 3 or 	q8awb_1 = 3 or 	q8awd_1 = 3 or 	q8awe_1 = 3 or 	q8awg_1 = 3 or 	q8aza_1 = 3 or 
q8aab_1 = 4 or 	q8aac_1 = 4 or 	q8aba_1 = 4 or 	q8abb_1 = 4 or 	q8acb_1 = 4 or 	q8acd_1 = 4 or 	q8ace_1 = 4 or 	q8aci_1 = 4 or 	q8acj_1 = 4 or 	q8ack_1 = 4 or 	q8ada_1 = 4 or 	q8adb_1 = 4 or 	q8afb_1 = 4 or 	q8aha_1 = 4 or 	q8ahb_1 = 4 or 	q8ahc_1 = 4 or 	q8aka_1 = 4 or 	q8ala_1 = 4 or 	q8ana_1 = 4 or 	q8anb_1 = 4 or 	q8apa_1 = 4 or 	q8apb_1 = 4 or 	q8ara_1 = 4 or 	q8asb_1 = 4 or 	q8asc_1 = 4 or 	q8aua_1 = 4 or	q8awb_1 = 4 or 	q8awd_1 = 4 or 	q8awe_1 = 4 or 	q8awg_1 = 4 or 	q8aza_1 = 4 or 
q8aab_1 = 5 or 	q8aac_1 = 5 or 	q8aba_1 = 5 or 	q8abb_1 = 5 or 	q8acb_1 = 5 or 	q8acd_1 = 5 or 	q8ace_1 = 5 or 	q8aci_1 = 5 or 	q8acj_1 = 5 or 	q8ack_1 = 5 or 	q8ada_1 = 5 or 	q8adb_1 = 5 or 	q8afb_1 = 5 or 	q8aha_1 = 5 or 	q8ahb_1 = 5 or 	q8ahc_1 = 5 or 	q8aka_1 = 5 or 	q8ala_1 = 5 or 	q8ana_1 = 5 or 	q8anb_1 = 5 or 	q8apa_1 = 5 or 	q8apb_1 = 5 or 	q8ara_1 = 5 or 	q8asb_1 = 5 or 	q8asc_1 = 5 or 	q8aua_1 = 5 or 	q8awb_1 = 5 or 	q8awd_1 = 5 or 	q8awe_1 = 5 or 	q8awg_1 = 5 or 	q8aza_1 = 5
then
checking_account_comp_nowamu=1;
run;

data chkg_act_cmp_no_wamu;
set checking_account_comp_wid_wamu;
if 
q8aab_1 = 1 or 	q8aac_1 = 1 or 	q8aba_1 = 1 or 	q8abb_1 = 1 or 	q8acb_1 = 1 or 	q8acd_1 = 1 or 	q8ace_1 = 1 or 	q8aci_1 = 1 or 	q8acj_1 = 1 or 	q8ack_1 = 1 or 	q8ada_1 = 1 or 	q8adb_1 = 1 or 	q8afb_1 = 1 or 	q8aha_1 = 1 or 	q8ahb_1 = 1 or 	q8ahc_1 = 1 or 	q8aka_1 = 1 or 	q8ala_1 = 1 or 	q8ana_1 = 1 or 	q8anb_1 = 1 or 	q8apa_1 = 1 or 	q8apb_1 = 1 or 	q8ara_1 = 1 or 	q8asb_1 = 1 or 	q8asc_1 = 1 or 	q8aua_1 = 1 or 	q8awb_1 = 1 or 	q8awd_1 = 1 or 	q8awe_1 = 1 or 	q8awg_1 = 1 or 	q8aza_1 = 1 or 
q8aab_1 = 2 or 	q8aac_1 = 2 or 	q8aba_1 = 2 or 	q8abb_1 = 2 or 	q8acb_1 = 2 or 	q8acd_1 = 2 or 	q8ace_1 = 2 or 	q8aci_1 = 2 or 	q8acj_1 = 2 or 	q8ack_1 = 2 or 	q8ada_1 = 2 or 	q8adb_1 = 2 or 	q8afb_1 = 2 or 	q8aha_1 = 2 or 	q8ahb_1 = 2 or 	q8ahc_1 = 2 or 	q8aka_1 = 2 or 	q8ala_1 = 2 or 	q8ana_1 = 2 or 	q8anb_1 = 2 or 	q8apa_1 = 2 or 	q8apb_1 = 2 or 	q8ara_1 = 2 or 	q8asb_1 = 2 or 	q8asc_1 = 2 or 	q8aua_1 = 2 or 	q8awb_1 = 2 or 	q8awd_1 = 2 or 	q8awe_1 = 2 or 	q8awg_1 = 2 or 	q8aza_1 = 2 
then 
chking_acct_comp_lastyr_nowamu=1;
run;


/*for slide1*/
ods html file="D:\WAMU\20 oct\task5\ppt\slide1.xls";
proc freq data=chkg_act_cmp_no_wamu;
tables checking_account_comp checking_account_comp_lastyear checking_account_WaMu checking_account_Bankofamerica
checking_account_Chase checking_account_Wells checking_account_Wachovia checking_account_World checking_account_Citibank;
run;
ods html close;

/*for slide2*/
data slide2;
set chkg_act_cmp_no_wamu;
if market_type="De_Novo" and checking_account_comp=1 then denuvo_all=1;
if market_type="De_Novo" and checking_account_wamu_lastyear=1 then denuvo_wamu=1;
if market_type="Established" and checking_account_comp=1 then est_all=1;
if market_type="Established" and checking_account_wamu_lastyear=1 then est_wamu=1;
run;
ods html file="D:\WAMU\20 oct\task5\ppt\slide2_new1.xls";
proc freq data=slide2;
tables denuvo_all denuvo_wamu est_all est_wamu;
run;
ods html close;

data slide3;
set slide2;
flag=1;
run;


/*syntax for slide 3*/
data slide3_1;
set slide3;
if q8ahc_1 = 1 or q8ahc_1 = 2 then checking_account_Hudson_1 = 1;
run;
proc freq data=slide3_1;
tables checking_account_Hudson_1 ;
run;
ods html file="D:\WAMU\20 oct\task5\ppt\hudson1.xls";
proc tabulate data=slide3_1;
class qmarket checking_account_Hudson_1/missing;
var flag;
tables 
qmarket*flag,
checking_account_Hudson_1;
run;
ods html close;


/*slide4*/
ods html file="D:\WAMU\20 oct\task5\ppt\slide4.xls";
proc tabulate data=slide3;
class qmarket checking_account_WaMu/missing;
var flag;
tables 
qmarket*flag,
checking_account_WaMu;
run;
ods html close;
/*slide5*/
ods html file="D:\WAMU\20 oct\task5\ppt\checking_account_wamu_lastyear.xls";
proc tabulate data=slide3;
class qmarket checking_account_wamu_lastyear/missing;
var flag;
tables 
qmarket*flag,
checking_account_wamu_lastyear  ;
run;
ods html close;


/*syntax for slide6*/
ods html file="D:\WAMU\20 oct\task5\slide6\checkingaccounts_markets.xls";
proc tabulate data=a1.slide3;
class qmarket checking_account_comp_nowamu/missing;
var flag;
tables 
qmarket*flag,
checking_account_comp_nowamu;
run;
ods html close;
data a1.slide6;
set a1.slide3;
if sc6=1 and sc7=1 then ethnic="Hispanic";
if sc6=1 and sc7=3 then ethnic="Hispanic";
if sc6=1 and sc7=15 then ethnic="Hispanic";
if sc6=2 and sc7=1 then ethnic="Caucasian";
if sc6=2 and sc7=3 then ethnic="All Other";
if sc6=2 and sc7=15 then ethnic="All Other";
if sc7=2 then ethnic="Black or AA";
if sc7=4 or sc7=5 or sc7=6 or sc7=7 or sc7=8 or sc7=9 or sc7=10 or sc7=11 or sc7=12 or sc7=13 or sc7=14 then ethnic="Asian";
run;
proc freq data=a1.slide6;
tables sc7 ethnic;
run;
ods html file="D:\WAMU\20 oct\task5\slide6\slide5_age_new.xls";
proc tabulate data=a1.slide6;
class checking_account_comp_nowamu checking_account_wamu checking_account_wamu_lastyear chking_acct_comp_lastyr_nowamu  sc2 /missing;
var flag;
tables 
checking_account_comp_nowamu*flag checking_account_wamu*flag  chking_acct_comp_lastyr_nowamu*flag checking_account_wamu_lastyear*flag,
sc2;
run;
ods html close;


/*excel output*/
ods html file="D:\WAMU\20 oct\task5\ppt\for_excel.xls";
proc tabulate data=a1.slide6;
class checking_account_comp qmarket /missing;
var flag;
tables 
qmarket*flag,
checking_account_comp;
run;
ods html close;
data check1;
set a1.q8a_task5;
keep q8abb_1 q8ala_1 q8awb_1 q8awg_1;
run;
proc export data=check1 outfile="D:\WAMU\20 oct\task5\check1.csv";
run;
/*combining wachovia/worlds saving*/
data a1.slide3_updated;
set a1.slide3;
if q8abb_1=1 or q8abb_1=2 or q8ala_1=1 or q8ala_1=2 then checking_boa_lasalle=1;
if q8awb_1=1 or q8awb_1=2 or q8awg_1=1 or q8awg_1=2 then checking_wachovia_worlds=1;
run;
proc freq data=a1.slide3_updated;
tables  checking_boa_lasalle checking_wachovia_worlds;
run;
