libname a1"D:\ankita\ITC\1 Dec 09\chennai data prep";

proc sort data=data;
by year month_num;
run;

proc means data=data noprint;
var DOVE_5
DOVE_10
DOVE_15
DOVE_20
DOVE_25
DOVE_30
dove_total_grps
FIAMA_5
FIAMA_10
FIAMA_15
FIAMA_20
FIAMA_25
FIAMA_30
FIAMA_35
fiamashampoo_total_grps
GARNIER_10
GARNIER_15
GARNIER_20
GARNIER_25
GARNIER_30
garnier_total_grps
PANTENE_5
PANTENE_10
PANTENE_15
PANTENE_20
PANTENE_25
PANTENE_30
PANTENE_35
pantene_total_grps
;
by year month_num;
output out = c1 sum=;
run;


/*converting data from monthly level to weekly level*/
/*delhi*/

%let gg=29;
data c1_weekly(keep=month_num year value1--value&gg);
set c1;
array k(&gg) DOVE_5--pantene_total_grps;
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

data c1_weekly;
set c1_weekly;
rename value1=DOVE_5
value2=DOVE_10
value3=DOVE_15
value4=DOVE_20
value5=DOVE_25
value6=DOVE_30
value7=dove_total_grps
value8=FIAMA_5
value9=FIAMA_10
value10=FIAMA_15
value11=FIAMA_20
value12=FIAMA_25
value13=FIAMA_30
value14=FIAMA_35
value15=fiamashampoo_total_grps
value16=GARNIER_10
value17=GARNIER_15
value18=GARNIER_20
value19=GARNIER_25
value20=GARNIER_30
value21=garnier_total_grps
value22=PANTENE_5
value23=PANTENE_10
value24=PANTENE_15
value25=PANTENE_20
value26=PANTENE_25
value27=PANTENE_30
value28=PANTENE_35
value29=pantene_total_grps;
run;

proc sort data=C1_weekly;
by year month_num;
run;


/*calcutta*/

%let gg=6;
data Calcutta_weekly(keep= market month_num year value1--value&gg);
set Calcutta;
array k(&gg) FIAMA_10--fiamasoap_total_grps;
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

data Calcutta_weekly;
set Calcutta_weekly;
rename value1=FIAMA_10
value2=FIAMA_20
value3=FIAMA_25
value4=FIAMA_30
value5=FIAMA_35
value6=fiamasoap_total_grps;
run;

proc sort data=Calcutta_weekly;
by year month_num;
run;

/*chennai*/

%let gg=6;
data chennai_weekly(keep= market month_num year value1--value&gg);
set chennai;
array k(&gg) FIAMA_10--fiamasoap_total_grps;
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

data chennai_weekly;
set chennai_weekly;
rename value1=FIAMA_10
value2=FIAMA_20
value3=FIAMA_25
value4=FIAMA_30
value5=FIAMA_35
value6=fiamasoap_total_grps;
run;

proc sort data=chennai_weekly;
by year month_num;
run;

/*mumbai*/
%let gg=6;
data Mumbai_weekly(keep= market month_num year value1--value&gg);
set Mumbai;
array k(&gg) FIAMA_10--fiamasoap_total_grps;
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

data Mumbai_weekly;
set Mumbai_weekly;
rename value1=FIAMA_10
value2=FIAMA_20
value3=FIAMA_25
value4=FIAMA_30
value5=FIAMA_35
value6=fiamasoap_total_grps;
run;

proc sort data=Mumbai_weekly;
by year month_num;
run;


/*hyderabad*/

%let gg=6;
data Hyderabad_weekly(keep= market month_num year value1--value&gg);
set Hyderabad;
array k(&gg) FIAMA_10--fiamasoap_total_grps;
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

data Hyderabad_weekly;
set Hyderabad_weekly;
rename value1=FIAMA_10
value2=FIAMA_20
value3=FIAMA_25
value4=FIAMA_30
value5=FIAMA_35
value6=fiamasoap_total_grps;
run;

proc sort data=Hyderabad_weekly;
by year month_num;
run;
