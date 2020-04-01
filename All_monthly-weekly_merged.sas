libname tmp1 'E:\Projects\ITC\July 03';


data tmp1.Soaps_monthly_grp_delhi;
set  tmp1.Soaps_monthly_grp;
if region="Delhi";
run;
data tmp1.Soaps_monthly_grp_tn;
set  tmp1.Soaps_monthly_grp;
if region="TN";
run;

* Enter the number of variables to be converted in the ' %let gg= ' statement;


%let gg=7;
data tmp1.Soaps_monthly_grp_delhi_weekly(keep= Region month_num year value1--value&gg);
set tmp1.Soaps_monthly_grp_delhi;
array k(&gg) DETTOL_GRP--VIVEL_GRP;
array value(&gg);
if month_num in (1,2,4,5,7,8,10,11) then do;

do i= 1 to &gg;
value(i)= k(i)/4;
end;
do i=1 to 4;
output;
end;  end;

else do;
do i= 1 to &gg;
value(i)= k(i)/5;
end;
do i=1 to 5;
output;
end; end;
run;

data tmp1.Soaps_monthly_grp_delhi_weekly;
set tmp1.Soaps_monthly_grp_delhi_weekly;
rename Value1 = DETTOL_GRP
Value2 = HAMAM_GRP
Value3 = LUX_GRP
Value4 = MEDIMIX_GRP
Value5 = REXONA_GRP
Value6 = SANTOOR_GRP
Value7 = VIVEL_GRP
;
run;
data tmp1.Soaps_monthly_grp_delhi_weekly;
set tmp1.Soaps_monthly_grp_delhi_weekly;
week_num+1;
run;

%let gg=7;
data tmp1.Soaps_monthly_grp_tn_weekly(keep= Region month_num year value1--value&gg);
set tmp1.Soaps_monthly_grp_tn;
array k(&gg) DETTOL_GRP--VIVEL_GRP;
array value(&gg);
if month_num in (1,2,4,5,7,8,10,11) then do;

do i= 1 to &gg;
value(i)= k(i)/4;
end;
do i=1 to 4;
output;
end;  end;

else do;
do i= 1 to &gg;
value(i)= k(i)/5;
end;
do i=1 to 5;
output;
end; end;
run;

data tmp1.Soaps_monthly_grp_tn_weekly;
set tmp1.Soaps_monthly_grp_tn_weekly;
rename Value1 = DETTOL_GRP
Value2 = HAMAM_GRP
Value3 = LUX_GRP
Value4 = MEDIMIX_GRP
Value5 = REXONA_GRP
Value6 = SANTOOR_GRP
Value7 = VIVEL_GRP
;
run;

data tmp1.Soaps_monthly_grp_tn_weekly;
set tmp1.Soaps_monthly_grp_tn_weekly;
week_num+1;
run;
data tmp1.Soaps_grp_weekly;
merge tmp1.Soaps_monthly_grp_delhi_weekly tmp1.Soaps_monthly_grp_tn_weekly;
by Region week_num;
run;
data tmp1.Soaps_grp_weekly_mar08_feb09;
set tmp1.Soaps_grp_weekly;
if week_num<=8 or week_num>=61 then delete;
rename region=market;
run;
data tmp1.Soaps_grp_weekly_mar08_feb09;
attrib market length=  $18.;
informat market  $18.;
format market $18.;

informat year  best12.;
format year  best12.;

informat month_num  best12.;
format month_num  best12.;

set tmp1.Soaps_grp_weekly_mar08_feb09;
if market="TN" then Market="chennai";
run;
data TMP1.SOAP_WEEK_R_HP_mar08_FEB_09;
set TMP1.SOAP_WEEK_R_HP_OCT07_FEB_09;
if year=2007 or (month_num<=2 and year=2008) then delete;
run;
data TMP1.SOAP_WEEK_R_HP_mar08_FEB_09;
attrib market length=  $18.;
informat market  $18.;
format market $18.;

informat year  best12.;
format year  best12.;

informat month_num  best12.;
format month_num  best12.;
set TMP1.SOAP_WEEK_R_HP_mar08_FEB_09;
run;
data tmp1.Soaps_r_hp_grp_weekly;
merge tmp1.Soap_week_r_hp_mar08_feb_09 tmp1.Soaps_grp_weekly_mar08_feb09;
by market year month_num;
run;
data tmp1.Soaps_r_hp_grp_weekly;
retain market month month_num year week_num;
set tmp1.Soaps_r_hp_grp_weekly;
run;
data tmp1.Soaps_r_hp_grp_weekly;
set tmp1.Soaps_r_hp_grp_weekly;
if week_num =	53	 then week_num = 	1	;
if week_num =	54	 then week_num = 	2	;
if week_num =	55	 then week_num = 	3	;
if week_num =	56	 then week_num = 	4	;
if week_num =	57	 then week_num = 	5	;
if week_num =	58	 then week_num = 	6	;
if week_num =	59	 then week_num = 	7	;
if week_num =	60	 then week_num = 	8	;
run;
data tmp1.Soaps_perc_delhi_chennai_m1;
attrib market length=  $18.;
informat market  $18.;
format market $18.;

informat year  best12.;
format year  best12.;

informat Week_Num  best12.;
format Week_Num  best12.;

set tmp1.Soaps_perc_delhi_chennai_m1;
if CEN=2 then Market="chennai";
if CEN=1 then Market="Delhi";
Week_Num=WK_Yrwk;
year=WK_Yryr;
run;
data tmp1.Soaps_perc_delhi_chennai_m1;
set tmp1.Soaps_perc_delhi_chennai_m1;
drop CEN
WK_Yryr
WK_Yrwk;
run;
data tmp1.Soaps_weekly_all;
merge tmp1.Soaps_r_hp_grp_weekly tmp1.Soaps_perc_delhi_chennai_m1;
by market year Week_num;
run;
data tmp1.Soaps_weekly_all;
set  tmp1.Soaps_weekly_all;

if CINTHOL_MS_Val_MID =. then delete;
if Per_Q1_HEARD_BREEZE=. then delete;
run;
