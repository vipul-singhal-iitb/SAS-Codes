libname a1 "E:\Projects\Coke - Ominibus\june10";
data a1.data_q2a;
set a1.data_q2a;
if username=. then delete;run;
data a1.data_q2a_1;
set a1.data_q2a;
Q2a=3;
if Q2a_1 in  ( 98 ) or 
Q2a_2 in  ( 98 ) or 
Q2a_3 in  ( 98 ) or 
Q2a_4 in  ( 98 ) or 
Q2a_5 in  ( 98 ) 
then Q2a=2;
if Q2a_1 in (2 15 23 100 101 102 ) or 
Q2a_2 in (2 15 23 100 101 102 ) or 
Q2a_3 in (2 15 23 100 101 102 ) or 
Q2a_4 in (2 15 23 100 101 102 ) or 
Q2a_5 in (2 15 23 100 101 102 ) 
then Q2a=1;
if Q2a_1 in  ( 0)  and
Q2a_2 in  ( 0)  and 
Q2a_3 in  ( 0)  and 
Q2a_4 in  ( 0)  and 
Q2a_5 in  ( 0)  
then Q2a=.;
run; 

proc freq data=a1.data_q2a_1;
tables Q2a;run;

data 
data a1.test_q1;
set a1.data_coke;
if q1_4=1;
run;
data a1.data_coke_1;
set a1.data_coke;
if q3a_1 =1 or 
q3a_2 =1 or
q3a_4 =1 or
q3a_6 =1 or
q3a_7 =1 or
q3a_8 =1 or
q3a_9 =1 then Q3_new=1;
if q3a_1 in (2 3) or 
q3a_2 in (2 3) or
q3a_4 in (2 3) or
q3a_6 in (2 3) or
q3a_7 in (2 3) or
q3a_8 in (2 3) or
q3a_9 in (2 3) then Q3_new=2;
if q3b_1 in (1 2) or 
q3b_2 in (1 2) or
q3b_4 in (1 2) or
q3b_6 in (1 2) or
q3b_7 in (1 2) or
q3b_8 in (1 2) or
q3b_9 in (1 2) then Q3_new=3;
if q3b_1 in (3 4) or 
q3b_2 in (3 4) or
q3b_4 in (3 4) or
q3b_6 in (3 4) or
q3b_7 in (3 4) or
q3b_8 in (3 4) or
q3b_9 in (3 4) then Q3_new=4;
run;
proc freq data=a1.data_coke_1;
tables Q3;run;
