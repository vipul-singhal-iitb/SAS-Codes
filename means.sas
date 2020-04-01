libname v1 "\\sas1\D\WAMU\6 nov\demo";
data v1.demo_task6	;
set v1.demo_task6;
flag=1;
run;
proc sort data=v1.demo_task6;
by california_run4 cl10;
run;

proc means data=v1.demo_task6 noprint;
weight weight_1;
by california_run4 cl10;
var flag;
output out=cl10 sum=;
run;
