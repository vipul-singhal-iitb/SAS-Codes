/*Library Path To save Output datasets */

libname a1"E:\WAMU\Important Documents\Datasets";

/*syntax for Primary Account Holders*/
data a1;
set a1.data_AAA_delete;
q9_primary_yes=1;
if q9_primary=. then q9_primary_yes=0;
if q9_primary=311 then q9_primary_yes=0;
run;
proc freq data=a1;
tables q9_primary_yes q9_primary;
run;
/*output to check*/
ods html file = 'E:\WAMU\19 sep\Task2\tabs_primary_final.xls';
Proc tabulate data =a1;
class q9_primary q9_primary_yes/missing;
var flag;
table 
q9_primary*flag
,q9_primary_yes;
run;
ods html close;

/*syntax for Accounts Holders Bank Wise*/
data a1.primary_account_wamu;
attrib q9_primary_wamu length = $22.;
set a1;
q9_primary_wamu="Other banks";
if q9_primary=84 or q9_primary=83 then q9_primary_wamu="Wamu";
if q9_primary=312 then q9_primary_wamu="Bank Of America";
if q9_primary=302 then q9_primary_wamu="Wells Fargo";
if q9_primary=298 then q9_primary_wamu="Wachovia";
if q9_primary=133 then q9_primary_wamu="Chase";
if q9_primary=137 then q9_primary_wamu="Citibank/Citi";
if q9_primary=. then q9_primary_wamu="No Primary Account";
if q9_primary=311 then q9_primary_wamu="No Primary Account";
run;


proc freq data=a1.primary_account_wamu;
tables q9_primary q9_primary_wamu;
run;
/*Output ecel tabs*/
ods html file = 'E:\WAMU\19 sep\Task2\task2 rerun\primary_profiling.xls';
Proc tabulate data =a1.primary_account_wamu;
class sc1 sc2 sc3 sc4 sc5 sc6 sc7 cl8 qseg qsubseg cl2_1
cl2_2
cl2_3
cl2_4
cl2b
cl4
cn1 
cn2
cl9
assets
 q9_primary_wamu /missing;
var flag;
table sc1*flag
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
,q9_primary_wamu;
run;
ods html close;


data a1.t_testing(compress=yes);
set a1.Primary_account_wamu;
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
q9_primary_yes
q9_primary_wamu
sequential
resp_id;
run;


data a1.t_testing1;
set a1.t_testing;
if q9_primary_wamu="No Primary Account" then delete;
run;

proc freq data=a1.t_testing1;
tables q9_primary_wamu;
run;
