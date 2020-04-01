libname a1"D:\ankita\ITC\26 feb\shampoos";

data a1.Household_panel_data_shamp_nov08;
attrib market length=$18.;
format market $18.;
informat market $18.;
set a1.Household_panel_data_shamp_nov08;
if market="8 Metros" then market="Top 8 Metros";
if market="Ahmedabad" then market="Ahmedabad";
if market="All India Urban" then market="All India - Urban";
if market="Andhra Pradesh" then market="AP - Urban";
if market="Bangalore" then market="Bangalore";
if market="Bihar" then market="Bihar - Urban";
if market="Chennai" then market="Chennai";
if market="Delhi" then market="Delhi";
if market="Gujarat" then market="Gujarat - Urban";
if market="Hyderabad" then market="Hyderabad";
if market="Karnataka" then market="Karnataka - Urban";
if market="Kerala" then market="Kerala - Urban";
if market="Kolkatta" then market="Kolkata";
if market="Madhya Pradesh" then market="MP - Urban";
if market="Maharashtra" then market="Maharashtra - Urba";
if market="Mumbai" then market="Mumbai";
if market="Orissa" then market="Orissa - Urban";
if market="Pune" then market="Pune";
if market="Punjab" then market="Punjab - Urban";
if market="Haryana" then market="Haryana - Urban";
if market="Rajasthan" then market="Rajasthan Urban";
if market="Tamil Nadu" then market="TN - Urban";
if market="Uttar Pradesh" then market="UP - Urban";
if market="West Bengal" then market="WB - Urban";
run;

proc contents data=a1.Household_panel_data_shamp_nov08 position;
ods output variables;
run;


data a1.Household_panel_data_shamp_nov08;
attrib month_num length=8.;
format month_num best8.;
informat month_num 8.;
set a1.Household_panel_data_shamp_nov08;
if month ="Jan" then Month_num=1;
if month = "Feb" then Month_num=2;
if month = "Mar" then Month_num=3;
if month = "Apr" then Month_num=4;
if month = "May" then Month_num=5;
if month = "Jun" then Month_num=6;
if month = "Jul" then Month_num=7;
if month = "Aug" then Month_num=8;
if month = "Sep" then Month_num=9;
if month = "Oct" then Month_num=10;
if month = "Nov" then Month_num=11;
if month = "Dec" then Month_num=12;
run;
/*merge both files - retail audit data and panel data*/


proc sort data=a1.Retail_audit_data_oct07_nov08;
by market year month_num;
run;

proc sort data=a1.Household_panel_data_shamp_nov08;
by market year month_num;
run;

data a1.Merged_Shampoos_oct07_nov08;
merge a1.Retail_audit_data_oct07_nov08 a1.Household_panel_data_shamp_nov08;
by market year month_num;
run;

data a1.Mergd_Sham_oct07_nov08_miss0;
set a1.Merged_Shampoos_oct07_nov08;
array abc(*) DOVE_MS_Val_Premium--fdw_total_buyers;
do i = 1 to dim(abc);
if abc(i)=100000 then abc(i)=0;
end;
drop i;
run;

