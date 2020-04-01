/*Library Path To save Output datasets */

libname a1 "E:\WAMU\Important Documents\Datasets";
/*syntax to delete AA augment*/
data a1.data_AAA_delete;
set a1.final_transformationprimary2;
if qtype=2 then delete;
run;
/*Output file to check*/
proc freq data=a1.data_AAA_delete;
tables qtype;
run;
/*syntax to check only morgage augment*/
data a1.data_only_morgage;
set a1.data_AAA_delete;
if qtype=1 then delete;
run;
proc freq data=a1.data_only_morgage;
tables qtype;
run;
ods html file="E:\WAMU\19 sep\market_freq_weeks200823.xls";
proc freq data=a1.data_AAA_delete;
tables qmarket_final;
by weeks;
run;
ods html close;

/*analysis Task 1*/

/*output to check markets */
ods html file="E:\WAMU\19 sep\Task1\Market Size.xls";
proc freq data=a1.data_AAA_delete;
tables qmarket_final;
run;
ods html close;


/*Syntax for tabs*/
data a1.data_AAA_delete;
set a1.data_AAA_delete;
flag = 1;
run;

ods html file = 'E:\WAMU\19 sep\Task1\Tabs_Market_Demographics.xls';
Proc tabulate data =a1.data_AAA_delete;
class cl8 sc1 sc2 sc3 sc4 sc5 sc6 sc7 cl4 qmarket_final/missing;
var flag;
table 
cl8*flag
sc1*flag
sc2*flag
sc3*flag
sc4*flag
sc5*flag
sc6*flag
sc7*flag
cl4*flag
,qmarket_final;
run;
ods html close;
/*Output of Tab*/
ods html file="E:\WAMU\19 sep\Task1\personalaccount.xls";
proc freq data=a1.data_AAA_delete ;
tables q7aa_1
q7aa_2
q7ab_1
q7ab_2
q7ac_1
q7ac_2
q7ba_1
q7ba_2
q7bb_1
q7bb_2
q7cb_1
q7cb_2
q7cc_1
q7cc_2
q7cd_1
q7cd_2
q7ce_1
q7ce_2
q7ci_1
q7ci_2
q7cj_1
q7cj_2
q7ck_1
q7ck_2
q7da_1
q7da_2
q7db_1
q7db_2
q7fb_1
q7fb_2
q7ha_1
q7ha_2
q7hb_1
q7hb_2
q7ka_1
q7ka_2
q7la_1
q7la_2
q7na_1
q7na_2
q7nb_1
q7nb_2
q7pa_1
q7pa_2
q7pb_1
q7pb_2
q7ra_1
q7ra_2
q7sb_1
q7sb_2
q7sc_1
q7sc_2
q7ua_1
q7ua_2
q7ub_1
q7ub_2
q7wa_1
q7wa_2
q7wb_1
q7wb_2
q7wd_1
q7wd_2
q7we_1
q7we_2
q7wg_1
q7wg_2
q7za_1
q7za_2
;
run;
ods html close;


ods html file="E:\WAMU\19 sep\Task1\Intro_60.xls";
proc freq data=a1.data_AAA_delete ;
tables q21;
run;
ods html close;

ods html file="E:\WAMU\19 sep\Task1\market_freq.xls";
proc freq data=a1.Final_transformation_datav3;
tables qmarket_final;
run;
ods html close;
proc freq data=a1.Final_transformation_datav3 ;
tables q7aa_2 /out=data2;
run;
data test1;
merge data1_transpose data2_transpose;
by _NAME_
run;
proc transpose data=data1 out=data1_transpose;
run;
proc transpose data=data2 out=data2_transpose;
run;
proc sort data =a1.data_AAA_delete;
by weeks
run;
ods html file = 'E:\WAMU\19 sep\Task2\sysmiss_check.xls';
Proc tabulate data =a1.data_AAA_delete;
class weeks cn1 cn2 cl2b assets
 /missing;
var flag;
table 
cn1*flag
cn2*flag
cl2b*flag
assets*flag
, weeks;
run;
ods html close;

/*End*/
