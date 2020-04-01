libname a1 'D:\ankita\ITC\1 Dec 09\chennai data prep'; 

data a1.Chennai_additive_monthly;
retain month_num month year;
set a1.Chennai_additive_monthly;
if month='Jan' then month_num=1;
if month='Feb' then month_num=2;
if month='Mar' then month_num=3;
if month='Apr' then month_num=4;
if month='May' then month_num=5;
if month='Jun' then month_num=6;
if month='Jul' then month_num=7;
if month='Aug' then month_num=8;
if month='Sep' then month_num=9;
if month='Oct' then month_num=10;
if month='Nov' then month_num=11;
if month='Dec' then month_num=12;
run;

data a1.Chennai_samevars_monthly;
retain month_num month year;
set a1.Chennai_samevars_monthly;
if month='Jan' then month_num=1;
if month='Feb' then month_num=2;
if month='Mar' then month_num=3;
if month='Apr' then month_num=4;
if month='May' then month_num=5;
if month='Jun' then month_num=6;
if month='Jul' then month_num=7;
if month='Aug' then month_num=8;
if month='Sep' then month_num=9;
if month='Oct' then month_num=10;
if month='Nov' then month_num=11;
if month='Dec' then month_num=12;
run;


/* Enter the number of variables to be converted in the ' %let gg= ' statement;*/


%let gg=28;
data a1.Chennai_additive_Weekly(keep= month_num year value1--value&gg);
set a1.Chennai_additive_monthly;
array k(&gg) fiama_total_buyers--PANTENE_Val_Crore;
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

data a1.Chennai_additive_Weekly;
set a1.Chennai_additive_Weekly;
rename value1=fiama_total_buyers
value2=fiama_new_triers
value3=FIAMA_DI_WILLS_totalpromo
value4=GARNIER_totalpromo
value5=PANTENE_totalpromo
value6=FIAMADIWILLS_VALUEPROMO
value7=FIAMADIWILLS_VOLUMEPROMO
value8=GARNIER_VALUEPROMO
value9=GARNIER_VOLUMEPROMO
value10=GARNIER_MULTIPLEPROMO
value11=PANTENE_VALUEPROMO
value12=PANTENE_VOLUMEPROMO
value13=PANTENE_BOTTLES
value14=PANTENE_SACHETS
value15=PANTENE_BOTTLES_VALUEPROMO
value16=PANTENE_SACHETS_VALUEPROMO
value17=FIAMADIWILLS_Banded
value18=GARNIER_Banded
value19=PANTENE_Banded
value20=DOVE_Vol_KL
value21=FIAMA_Vol_KL
value22=GARNIER_Vol_KL
value23=PANTENE_Vol_KL
value24=PREMIUM_Vol_KL
value25=DOVE_Val_Crore
value26=FIAMA_Val_Crore
value27=GARNIER_Val_Crore
value28=PANTENE_Val_Crore;
run;


data tmp1.Soaps_monthly_grp_delhi_weekly;
set tmp1.Soaps_monthly_grp_delhi_weekly;
week_num+1;
run;

%let gg=16;
data a1.Chennai_samevars_weekly(keep=month_num year value1--value&gg);
set a1.Chennai_samevars_monthly;
array k(&gg) DOVE_MS_Vol_Premium--pantene_price;
array value(&gg);
if month_num in (1,2,4,5,7,8,10,11) then do;

do i= 1 to &gg;
value(i)= k(i);
end;
do i=1 to 4;
output;
end;  end;

else do;
do i= 1 to &gg;
value(i)= k(i);
end;
do i=1 to 5;
output;
end; end;
run;

data a1.Chennai_samevars_weekly;
set a1.Chennai_samevars_weekly;
rename value1=DOVE_MS_Vol_Premium
value2=FIAMA_MS_Vol_Premium
value3=GARNIER_MS_Vol_Premium
value4=PANTENE_MS_Vol_Premium
value5=DOVE_Num_Dist_Premium
value6=FIAMA_Num_Dist_Premium
value7=GARNIER_Num_Dist_Premium
value8=PANTENE_Num_Dist_Premium
value9=DOVE_WtdD_Val_Premium
value10=FIAMA_WtdD_Val_Premium
value11=GARNIER_WtdD_Val_Premium
value12=PANTENE_WtdD_Val_Premium
value13=dove_price
value14=fiama_price
value15=garnier_price
value16=pantene_price;
run;

