


libname vip1 "E:\Projects\ITC\Dec 16 2009";
data vip1.Shampoos_grp_aug09_1;
retain unique_id	week	month	month_num	year	Market
DOVE_5
DOVE_10
DOVE_15
DOVE_20
DOVE_25
DOVE_30
DOVE_35
FIAMA_5
FIAMA_10
FIAMA_15
FIAMA_20
FIAMA_25
FIAMA_30
FIAMA_35

GARNIER_10
GARNIER_15
GARNIER_20
GARNIER_25
GARNIER_30
PANTENE_5
PANTENE_10
PANTENE_15
PANTENE_20
PANTENE_25
PANTENE_30
PANTENE_35
;
set vip1.Shampoos_grp_aug09;
run;


data vip1.Shampoos_grp_aug09_1;
set vip1.Shampoos_grp_aug09_1;
if year=. then delete;

run;
proc sort data=vip1.Shampoos_grp_aug09_1;
by  market month year;
run;
proc means data=vip1.Shampoos_grp_aug09_1;
by  market month year;
var DOVE_5
DOVE_10
DOVE_15
DOVE_20
DOVE_25
DOVE_30
DOVE_35
FIAMA_5
FIAMA_10
FIAMA_15
FIAMA_20
FIAMA_25
FIAMA_30
FIAMA_35

GARNIER_10
GARNIER_15
GARNIER_20
GARNIER_25
GARNIER_30
PANTENE_5
PANTENE_10
PANTENE_15
PANTENE_20
PANTENE_25
PANTENE_30
PANTENE_35 flag;
output out =vip1.Shampoos_grp_aug09_2 sum=  DOVE_5
DOVE_10
DOVE_15
DOVE_20
DOVE_25
DOVE_30
DOVE_35
FIAMA_5
FIAMA_10
FIAMA_15
FIAMA_20
FIAMA_25
FIAMA_30
FIAMA_35

GARNIER_10
GARNIER_15
GARNIER_20
GARNIER_25
GARNIER_30
PANTENE_5
PANTENE_10
PANTENE_15
PANTENE_20
PANTENE_25
PANTENE_30
PANTENE_35
flag
;run;


%let gg=65;
data vip1.Data_week_shamp_mum_oct07_july09(keep= month -- PANTENE_5 value1 -- value&gg);
set vip1.Data_mon_shamp_mum_oct07_july09;
array k(&gg) Total_Buyers_1 -- PANTENE_5_&gg;
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

