/*Library Path To save Output datasets */

libname a1"E:\WAMU\Important Documents\Datasets";
/*Analysis Dataset*/
data a1.task3dataset;
set a1.Primary_account_wamu;
if sc2=24.99 and sc4=4;
run;

proc freq data=a1.task3dataset;
tables q9_primary_yes;
run;

/*Output excel Tabs*/

ods html file = 'E:\WAMU\19 sep\Task3\task3 rer un\tabs_college_student.xls';
Proc tabulate data =a1.task3dataset;
class cl8  sc3 sc4 sc6 sc7 sc8 qseg qsubseg cn1 cn2 cl2_1 cl2_2 cl2_3 cl2_4 cl4  cl2b assets q9_primary_wamu/missing;
var flag;
table 
sc3*flag
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
sc4*flag
cl4*flag
cn1*flag
cn2*flag
assets*flag
,q9_primary_wamu;
run;
ods html close;




/*For Quality Check*/


data a1;
set a1.Primary_account_wamu1_without_aa;
if sc2=24.99 and sc4=4 and q9_primary_yes=1;
run; 
proc freq data=a1;
tables qsubseg cl2b cl4;
run;
ods html file = 'E:\WAMU\19 sep\Task3\task3 rer un\tabs_primary_bank.xls';
Proc tabulate data =a1.task3dataset;
class q9_primary q9_primary_yes/missing;
var flag;
table 
q9_primary*flag
,q9_primary_yes;
run;
ods html close;


/*for t testing*/

data a1.t_testing_task3;
set a1.task3dataset;
keep cl8  sc3 sc4 sc6 sc7 sc8 qseg qsubseg cn1 cn2 cl2_1 cl2_2 cl2_3 cl2_4 cl4  cl2b assets q9_primary_wamu
sequential
resp
q9_primary_yes;
run;
data a1.t_testing_task3;
set a1.t_testing_task3;
if q9_primary_wamu="No Primary Account" then delete;
run;
