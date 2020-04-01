/*Library Path To save Output datasets */

libname a1"E:\WAMU\Important Documents\Datasets";
/*Keeping Required Variables*/
data a1;
set a1.Data_aaa_delete;
keep q7aa_2
q7ab_2
q7ac_2
q7ba_2
q7bb_2
q7cb_2
q7cc_2
q7cd_2
q7ce_2
q7ci_2
q7cj_2
q7ck_2
q7da_2
q7db_2
q7fb_2
q7ha_2
q7hb_2
q7ka_2
q7la_2
q7na_2
q7nb_2
q7pa_2
q7pb_2
q7ra_2
q7sb_2
q7sc_2
q7ua_2
q7ub_2
q7wa_2
q7wb_2
q7wd_2
q7we_2
q7wg_2
q7za_2
sequential;
run;

data a2;
set a1;
sum_q7=sum(of q7aa_2--q7za_2);
run;

proc export data=a2 outfile="E:\WAMU\26 Sept\task4\task4.csv";
run;
/*Transformation on Q7*/

data a1.mortgage_data;
set a1.Data_aaa_delete;
if q7aa_2=1 or	q7ab_2=1 or	q7ac_2=1 or	q7ba_2=1 or	q7bb_2=1 or	q7cb_2=1 or	q7cc_2=1 or	q7cd_2=1 or	q7ce_2=1 or	q7ci_2=1 or	q7cj_2=1 or	q7ck_2=1 or	q7da_2=1 or	q7db_2=1 or	q7fb_2=1 or	q7ha_2=1 or	q7hb_2=1 or	q7ka_2=1 or	q7la_2=1 or	q7na_2=1 or	q7nb_2=1 or	q7pa_2=1 or	q7pb_2=1 or	q7ra_2=1 or	q7sb_2=1 or	q7sc_2=1 or	q7ua_2=1 or	q7ub_2=1 or	q7wa_2=1 or	q7wb_2=1 or	q7wd_2=1 or	q7we_2=1 or	q7wg_2=1 or	q7za_2=1 
then q7_mortgage=1;
if q7aa_2=. and	q7ab_2=. and	q7ac_2=. and	q7ba_2=. and	q7bb_2=. and	q7cb_2=. and	q7cc_2=. and	q7cd_2=. and	q7ce_2=. and	q7ci_2=. and	q7cj_2=. and	q7ck_2=. and	q7da_2=. and	q7db_2=. and	q7fb_2=. and	q7ha_2=. and	q7hb_2=. and	q7ka_2=. and	q7la_2=. and	q7na_2=. and	q7nb_2=. and	q7pa_2=. and	q7pb_2=. and	q7ra_2=. and	q7sb_2=. and	q7sc_2=. and	q7ua_2=. and	q7ub_2=. and	q7wa_2=. and	q7wb_2=. and	q7wd_2=. and	q7we_2=. and	q7wg_2=. and	q7za_2=. 
then q7_mortgage=0;
run;

proc freq data= a1.mortgage_data;
tables q7_mortgage;
run;
/*Mortagage Variables for each banks*/
data a1.mortgage_banks;
set a1.Data_aaa_delete;
if q7wa_2=1  then mortgage_Wamu=1;
if q7wa_2=0  then mortgage_Wamu=0;
if q7bb_2=1 or q7la_2=1 then mortgage_BOA=1;
if q7bb_2=0 and q7la_2=0 then mortgage_BOA=0;
if q7ck_2=1 then mortgage_Countrywide=1;
if q7ck_2=0 then mortgage_Countrywide=0;
if q7we_2=1 then mortgage_WellsFargo=1;
if q7we_2=0 then mortgage_WellsFargo=0;
if q7cd_2=1 then mortgage_Chase=1;
if q7cd_2=0 then mortgage_Chase=0;
if q7ce_2=1 then mortgage_Citi=1;
if q7ce_2=0 then mortgage_Citi=0;
run;
/*Output check*/
proc freq data=a1.mortgage_banks;
tables mortgage_Wamu mortgage_BOA mortgage_Countrywide mortgage_WellsFargo mortgage_Chase mortgage_Citi;
run;
/*Compititors and Wamu variables for mortgage*/
data a1.mortgage_banksv1;
set a1.mortgage_banks;
mortgage_compbanks="Competitors";
if q7wa_2=1  then mortgage_compbanks="WAMU";
if q7aa_2=. and	q7ab_2=. and	q7ac_2=. and	q7ba_2=. and	q7bb_2=. and	q7cb_2=. and	q7cc_2=. and	q7cd_2=. and	q7ce_2=. and	q7ci_2=. and	q7cj_2=. and	q7ck_2=. and	q7da_2=. and	q7db_2=. and	q7fb_2=. and	q7ha_2=. and	q7hb_2=. and	q7ka_2=. and	q7la_2=. and	q7na_2=. and	q7nb_2=. and	q7pa_2=. and	q7pb_2=. and	q7ra_2=. and	q7sb_2=. and	q7sc_2=. and	q7ua_2=. and	q7ub_2=. and	q7wa_2=. and	q7wb_2=. and	q7wd_2=. and	q7we_2=. and	q7wg_2=. and	q7za_2=. 
then mortgage_compbanks="Missings";
run;
/*Output check*/

proc freq data=a1.mortgage_banksv1;
tables mortgage_compbanks;
run;

/*Excel Output Tabs*/
ods html file = 'E:\WAMU\26 Sept\task4\primary_profiling_task4_other.xls';
Proc tabulate data =a1.Mortgage_data;
class 
 sc1 sc2 sc3 sc4 sc5 sc6 sc7 cl8 qseg qsubseg cl2_1
cl2_2
cl2_3
cl2_4
cl2b
cl4
cn1 
cn2
cl9
assets
q1aaf_first_mention
 mortgage_compbanks /missing;
var flag;
table 
sc1*flag
sc2*flag
sc3*flag
sc4*flag
sc5*flag
sc6*flag
sc7*flag
cl8*flag
qseg*flag
qsubseg*flag
cl2_1*flag
cl2_2*flag
cl2_3*flag
cl2_4*flag
cl2b*flag
cl4*flag
cn1*flag
cn2*flag
cl9*flag
assets*flag
q1aaf_first_mention*flag
,mortgage_compbanks;
run;
ods html close;
proc freq data=a1.Mortgage_data;
tables q5bwb q5bwe
 q5bbb
;run;
ods html file="E:\WAMU\26 Sept\freq_first_mention.xls";
proc freq data=a1.Mortgage_data;
tables q1aaf_first_mention;
run;
ods html close;

/*similiarly for home morgage*/
data a1.mortgage_datav1;
set a1.mortgage_data;
if q7wa_2=1 then q7_home_mortgage=1;
if q7aa_2=1 or	q7ab_2=1 or	q7ac_2=1 or	q7ba_2=1 or	q7bb_2=1 or	q7cb_2=1 or	q7cc_2=1 or	q7cd_2=1 or	q7ce_2=1 or	q7ci_2=1 or	q7cj_2=1 or	q7ck_2=1 or	q7da_2=1 or	q7db_2=1 or	q7fb_2=1 or	q7ha_2=1 or	q7hb_2=1 or	q7ka_2=1 or	q7la_2=1 or	q7na_2=1 or	q7nb_2=1 or	q7pa_2=1 or	q7pb_2=1 or	q7ra_2=1 or	q7sb_2=1 or	q7sc_2=1 or	q7ua_2=1 or	q7ub_2=1 or	q7wb_2=1 or	q7wd_2=1 or	q7we_2=1 or	q7wg_2=1 or	q7za_2=1 
then q7_home_mortgage=2;
if q7aa_2=. and	q7ab_2=. and	q7ac_2=. and	q7ba_2=. and	q7bb_2=. and	q7cb_2=. and	q7cc_2=. and	q7cd_2=. and	q7ce_2=. and	q7ci_2=. and	q7cj_2=. and	q7ck_2=. and	q7da_2=. and	q7db_2=. and	q7fb_2=. and	q7ha_2=. and	q7hb_2=. and	q7ka_2=. and	q7la_2=. and	q7na_2=. and	q7nb_2=. and	q7pa_2=. and	q7pb_2=. and	q7ra_2=. and	q7sb_2=. and	q7sc_2=. and	q7ua_2=. and	q7ub_2=. and	q7wa_2=. and	q7wb_2=. and	q7wd_2=. and	q7we_2=. and	q7wg_2=. and	q7za_2=. 
then q7_home_mortgage=0;
run;

ods html file="E:\WAMU\26 Sept\freq_mortgage.xls";
proc freq data=a1.mortgage_datav1;
tables q7_home_mortgage;
run;
ods html close;

data temp;
set a1.mortgage_data;
if q7wa_2=1 then q7_home_mortgage=1;
run;
proc freq data=temp;
tables q7_home_mortgage;
run;
/*Excel Output Tab for primary profiliing of wamu*/
ods html file = 'E:\WAMU\26 Sept\task4\primary_profiling_task4_wamu_q7wa.xls';
Proc tabulate data=a1.mortgage_datav1;
class 
 sc1 sc2 sc3 sc4 sc5 sc6 sc7 cl8 qseg qsubseg cl2_1
cl2_2
cl2_3
cl2_4
cl2b
cl4
cn1 
cn2
cl9
assets
 q7wa_2 /missing;
var flag;
table 
sc1*flag
sc2*flag
sc3*flag
sc4*flag
sc5*flag
sc6*flag
sc7*flag
cl8*flag
qseg*flag
qsubseg*flag
cl2_1*flag
cl2_2*flag
cl2_3*flag
cl2_4*flag
cl2b*flag
cl4*flag
cn1*flag
cn2*flag
cl9*flag
assets*flag
,q7wa_2;
run;
ods html close;
/*Excel Output Tab for primary profiliing of compititors bank*/

ods html file = 'E:\WAMU\26 Sept\task4\primary_profiling_task4_comp_all.xls';
Proc tabulate data=a1.mortgage_datav1;
class 
 sc1 sc2 sc3 sc4 sc5 sc6 sc7 cl8 qseg qsubseg cl2_1
cl2_2
cl2_3
cl2_4
cl2b
cl4
cn1 
cn2
cl9
assets
 q7_home_mortgage /missing;
var flag;
table 
sc1*flag
sc2*flag
sc3*flag
sc4*flag
sc5*flag
sc6*flag
sc7*flag
cl8*flag
qseg*flag
qsubseg*flag
cl2_1*flag
cl2_2*flag
cl2_3*flag
cl2_4*flag
cl2b*flag
cl4*flag
cn1*flag
cn2*flag
cl9*flag
assets*flag
,q7_home_mortgage;
run;
ods html close;
data a1.ttest;
set a1.mortgage_datav1;
keep sc1 sc2 sc3 sc4 sc5 sc6 sc7 cl8 qseg qsubseg cl2_1
cl2_2
cl2_3
cl2_4
cl2b
cl4
cn1 
cn2
cl9
assets
 q7_home_mortgage
 q7wa_2;
 run;
/* dataset with 1 or 2 mortgage account variable*/
data a1.ttest1;
set a1.mortgage_datav1;
sum_q7=sum( of q7aa_2 
q7ab_2 
q7ac_2 
q7ba_2 
q7bb_2 
q7cb_2 
q7cc_2 
q7cd_2 
q7ce_2 
q7ci_2 
q7cj_2 
q7ck_2 
q7da_2 
q7db_2 
q7fb_2 
q7ha_2 
q7hb_2 
q7ka_2 
q7la_2 
q7na_2 
q7nb_2 
q7pa_2 
q7pb_2 
q7ra_2 
q7sb_2 
q7sc_2 
q7ua_2 
q7ub_2 
q7wa_2 
q7wb_2 
q7wd_2 
q7we_2 
q7wg_2 
q7za_2);
if sum_q7=1 then Morgage_1_account=1;
if sum_q7>1 then Morgage_1_account=2;
run;
proc freq data=a1.ttest1;
tables Morgage_1_account;
run;
/*Output excel tabs demographics for  one mortgage account*/

ods html file = 'E:\WAMU\29 sep\primary_profiling_task4_1_mortgage.xls';
Proc tabulate data=a2;
class 
 sc1 sc2 sc3 sc4 sc5 sc6 sc7 cl8 qseg qsubseg cl2_1
cl2_2
cl2_3
cl2_4
cl2b
cl4
cn1 
cn2
cl9
assets
 Morgage_1_account /missing;
var flag;
table 
sc1*flag
sc2*flag
sc3*flag
sc4*flag
sc5*flag
sc6*flag
sc7*flag
cl8*flag
qseg*flag
qsubseg*flag
cl2_1*flag
cl2_2*flag
cl2_3*flag
cl2_4*flag
cl2b*flag
cl4*flag
cn1*flag
cn2*flag
cl9*flag
assets*flag
,Morgage_1_account;
run;
ods html close;
/*Output excel tabs demographics for more than one mortgage account*/
ods html file = 'E:\WAMU\29 sep\profiling_task4_more_1_mortgage.xls';
Proc tabulate data=a2;
class 
 sc1 sc2 sc3 sc4 sc5 sc6 sc7 cl8 qseg qsubseg cl2_1
cl2_2
cl2_3
cl2_4
cl2b
cl4
cn1 
cn2
cl9
assets
Morgage_more_1_account /missing;
var flag;
table 
sc1*flag
sc2*flag
sc3*flag
sc4*flag
sc5*flag
sc6*flag
sc7*flag
cl8*flag
qseg*flag
qsubseg*flag
cl2_1*flag
cl2_2*flag
cl2_3*flag
cl2_4*flag
cl2b*flag
cl4*flag
cn1*flag
cn2*flag
cl9*flag
assets*flag
,Morgage_more_1_account;
run;
ods html close;
data a1.ttest2;
set a1.ttest1;
keep sc1 sc2 sc3 sc4 sc5 sc6 sc7 cl8 qseg qsubseg cl2_1
cl2_2
cl2_3
cl2_4
cl2b
cl4
cn1 
cn2
cl9
assets
 Morgage_1_account;
 run;
