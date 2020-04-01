libname a1 "E:\WAMU\3 nov\Run1";

/*Macro for Task6 Run1*/
%macro abc (var);
data a1;
set a1.Task6_run1;
keep sequential qmarket flag california_5mkt_run1 month qweek &var weight_1;
run;
proc sort data=a1;
by qweek qmarket &var;
run;
proc means data=a1 noprint;
var flag;
by qweek qmarket &var;
output out=a2 sum= &var._new;
run;
data a3;
set a2;
drop _type_ _freq_;
run;
data a4;
set a1;
keep qweek qmarket california_5mkt_run1 weight_1;
run;
proc sort data=a4 nodupkey;
by qweek qmarket ;
run;
data a5;
merge a4 (in=a) a3 (in=b);
by qweek qmarket ;
if a;
run;

data a6;
set a5;
&var._final=&var._new*Weight_1;
run;

proc sort data=a6;
by california_5mkt_run1 &var;
run;

proc means data=a6 noprint;
var &var._final;
by california_5mkt_run1 &var;
output out=b1 sum=;
run;

data b1;
set b1;
drop _type_ _freq_;
run;
proc sort data=b1;
by &var;
run;

proc transpose data=b1 out=b2;
id california_5mkt_run1;
var &var._final;
by &var;
run;

data b3;
set b2;
drop _name_;
run;

data b4;
set b3;
rename _0=All_Other_Markets
_1=Califormia_markets;
run;


data &var.final;
retain &var Califormia_markets All_Other_Markets;
set b4;
run;

data &var.final;
set &var.final;
flag=1;
run;



proc means data=&var.final;
var Califormia_markets;
output out=c1 sum=;
run;

proc means data=&var.final;
var All_Other_Markets;
output out=c2 sum=;
run;

data c3;
set c1;
rename Califormia_markets=Califormia_sum;
drop _type_ _freq_;
flag=1;
run;


data c4;
set c2;
rename All_Other_Markets=All_Other_Markets_sum;
drop _type_ _freq_;
flag=1;
run;


data d1;
merge c3 c4 &var.final;
by flag;
run;

data d2;
set d1;
drop flag;
run;


data a1._&var.final;
set d2;
california_market_final=Califormia_markets/Califormia_sum;
All_Other_Markets_final=All_Other_Markets/All_Other_Markets_sum;
drop Califormia_sum  All_Other_Markets_sum ;
run;

proc export data=a1._&var.final outfile="E:\WAMU\3 nov\Run1\files\&var.excel.csv";
run;

%mend;
%abc (qseg);

