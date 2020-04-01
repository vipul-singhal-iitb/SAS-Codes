/*Library Path To save Output datasets */
libname a1"E:\WAMU\New data 13 oct\data";
libname a2"C:\Wamu New data 13 oct";
/*Macro Syntax to combine All Bank of America Variables into one*/
/*for q1af,q1aaf,q1bf,q1f*/
%macro abc(var,var1,var2,var3);
data a2.final_data_q1;
set a1.final_data;
&var._501=0;
if &var._85=1 or &var._86=1 or &var._87 =1 or &var._223=1 then &var._501=1;
if &var._85=. and &var._86=. and &var._87 =. and &var._223=. then &var._501=.;
drop &var._85 &var._86 &var._87 &var._223;
&var1._501=0;
if &var1._85=1 or &var1._86=1 or &var1._87 =1 or &var1._223=1 then &var1._501=1;
if &var1._85=. and &var1._86=. and &var1._87 =. and &var1._223=. then &var1._501=.;
drop &var1._85 &var1._86 &var1._87 &var1._223;
&var2._501=0;
if &var2._85=1 or &var2._86=1 or &var2._87 =1 or &var2._223=1 then &var2._501=1;
if &var2._85=. and &var2._86=. and &var2._87 =. and &var2._223=. then &var2._501=.;
drop &var2._85 &var2._86 &var2._87 &var2._223;
&var3._501=0;
if &var3._85=1 or &var3._86=1 or &var3._87 =1 or &var3._223=1 then &var3._501=1;
if &var3._85=. and &var3._86=. and &var3._87 =. and &var3._223=. then &var3._501=.;
drop &var3._85 &var3._86 &var3._87 &var3._223;
run;
%mend;
%abc(q1af,q1aaf,q1bf,q1f);

/*Output file for Quality Check*/
ods html file="E:\WAMU\15 oct\q1c_501.xls";
proc freq data=a2.final_data_q1;
tables q1af_501 q1aaf_501 q1bf_501 q1f_501;
run;
ods html close;


/*for q1cb,q1ce,q1cg,q1cf,q1cd,q1ca,q1cc*/

%macro abc(var,var1,var2,var3,var4,var5, var6);
data a2.final_data_q1c;
set a2.final_data_q1;
&var._501=0;
if &var._85=1 or &var._86=1 or &var._87 =1 then &var._501=1;
if &var._85=. and &var._86=. and &var._87 =. then &var._501=.;
drop &var._85 &var._86 &var._87;
&var1._501=0;
if &var1._85=1 or &var1._86=1 or &var1._87 =1 then &var1._501=1;
if &var1._85=. and &var1._86=. and &var1._87 =. then &var1._501=.;
drop &var1._85 &var1._86 &var1._87;
&var2._501=0;
if &var2._85=1 or &var2._86=1 or &var2._87 =1 then &var2._501=1;
if &var2._85=. and &var2._86=. and &var2._87 =. then &var2._501=.;
drop &var2._85 &var2._86 &var2._87;
&var3._501=0;
if &var3._85=1 or &var3._86=1 or &var3._87 =1 then &var3._501=1;
if &var3._85=. and &var3._86=. and &var3._87 =. then &var3._501=.;
drop &var3._85 &var3._86 &var3._87;
&var4._501=0;
if &var4._85=1 or &var4._86=1 or &var4._87 =1 then &var4._501=1;
if &var4._85=. and &var4._86=. and &var4._87 =. then &var4._501=.;
drop &var4._85 &var4._86 &var4._87;
&var5._501=0;
if &var5._85=1 or &var5._86=1 or &var5._87 =1 then &var5._501=1;
if &var5._85=. and &var5._86=. and &var5._87 =. then &var5._501=.;
drop &var5._85 &var5._86 &var5._87;
&var6._501=0;
if &var6._85=1 or &var6._86=1 or &var6._87 =1 then &var6._501=1;
if &var6._85=. and &var6._86=. and &var6._87 =. then &var6._501=.;
drop &var6._85 &var6._86 &var6._87;
run;
%mend;
%abc(q1cb,q1ce,q1cg,q1cf,q1cd,q1ca,q1cc);

/*Output file for Quality Check*/
ods html file="E:\WAMU\15 oct\q1c_312_1.xls";
proc freq data=a2.final_data_q1c;
tables q1cb_501 q1ce_501 q1cg_501 q1cf_501 q1cd_501 q1ca_501 q1cc_501 ;
run;
ods html close;


/*for all varibales in q23*/
%macro abc(var,var1,var2,var3,var4,var5,var6,var7,var8,var9,var10,var11,var12,var13,var14,var15,var16,var17,var18,var19,var20,var21,var22,var23);
data a2.final_data_q23;
set a2.final_data_q1c;
&var._501=0;
if &var._85=1 or &var._86=1 or &var._87 =1 then &var._501=1;
if &var._85=. and &var._86=. and &var._87 =. then &var._501=.;
drop &var._85 &var._86 &var._87;
&var1._501=0;
if &var1._85=1 or &var1._86=1 or &var1._87 =1 then &var1._501=1;
if &var1._85=. and &var1._86=. and &var1._87 =. then &var1._501=.;
drop &var1._85 &var1._86 &var1._87;
&var2._501=0;
if &var2._85=1 or &var2._86=1 or &var2._87 =1 then &var2._501=1;
if &var2._85=. and &var2._86=. and &var2._87 =. then &var2._501=.;
drop &var2._85 &var2._86 &var2._87;
&var3._501=0;
if &var3._85=1 or &var3._86=1 or &var3._87 =1 then &var3._501=1;
if &var3._85=. and &var3._86=. and &var3._87 =. then &var3._501=.;
drop &var3._85 &var3._86 &var3._87;
&var4._501=0;
if &var4._85=1 or &var4._86=1 or &var4._87 =1 then &var4._501=1;
if &var4._85=. and &var4._86=. and &var4._87 =. then &var4._501=.;
drop &var4._85 &var4._86 &var4._87;
&var5._501=0;
if &var5._85=1 or &var5._86=1 or &var5._87 =1 then &var5._501=1;
if &var5._85=. and &var5._86=. and &var5._87 =. then &var5._501=.;
drop &var5._85 &var5._86 &var5._87;
&var6._501=0;
if &var6._85=1 or &var6._86=1 or &var6._87 =1 then &var6._501=1;
if &var6._85=. and &var6._86=. and &var6._87 =. then &var6._501=.;
drop &var6._85 &var6._86 &var6._87;
&var7._501=0;
if &var7._85=1 or &var7._86=1 or &var7._87 =1 then &var7._501=1;
if &var7._85=. and &var7._86=. and &var7._87 =. then &var7._501=.;
drop &var7._85 &var7._86 &var7._87;
&var8._501=0;
if &var8._85=1 or &var8._86=1 or &var8._87 =1 then &var8._501=1;
if &var8._85=. and &var8._86=. and &var8._87 =. then &var8._501=.;
drop &var8._85 &var8._86 &var8._87;
&var9._501=0;
if &var9._85=1 or &var9._86=1 or &var9._87 =1 then &var9._501=1;
if &var9._85=. and &var9._86=. and &var9._87 =. then &var9._501=.;
drop &var9._85 &var9._86 &var9._87;
&var10._501=0;
if &var10._85=1 or &var10._86=1 or &var10._87 =1 then &var10._501=1;
if &var10._85=. and &var10._86=. and &var10._87 =. then &var10._501=.;
drop &var10._85 &var10._86 &var10._87;
&var11._501=0;
if &var11._85=1 or &var11._86=1 or &var11._87 =1 then &var11._501=1;
if &var11._85=. and &var11._86=. and &var11._87 =. then &var11._501=.;
drop &var11._85 &var11._86 &var11._87;
&var12._501=0;
if &var12._85=1 or &var12._86=1 or &var12._87 =1 then &var12._501=1;
if &var12._85=. and &var12._86=. and &var12._87 =. then &var12._501=.;
drop &var12._85 &var12._86 &var12._87;
&var13._501=0;
if &var13._85=1 or &var13._86=1 or &var13._87 =1 then &var13._501=1;
if &var13._85=. and &var13._86=. and &var13._87 =. then &var13._501=.;
drop &var13._85 &var13._86 &var13._87;
&var14._501=0;
if &var14._85=1 or &var14._86=1 or &var14._87 =1 then &var14._501=1;
if &var14._85=. and &var14._86=. and &var14._87 =. then &var14._501=.;
drop &var14._85 &var14._86 &var14._87;
&var15._501=0;
if &var15._85=1 or &var15._86=1 or &var15._87 =1 then &var15._501=1;
if &var15._85=. and &var15._86=. and &var15._87 =. then &var15._501=.;
drop &var15._85 &var15._86 &var15._87;
&var16._501=0;
if &var16._85=1 or &var16._86=1 or &var16._87 =1 then &var16._501=1;
if &var16._85=. and &var16._86=. and &var16._87 =. then &var16._501=.;
drop &var16._85 &var16._86 &var16._87;
&var17._501=0;
if &var17._85=1 or &var17._86=1 or &var17._87 =1 then &var17._501=1;
if &var17._85=. and &var17._86=. and &var17._87 =. then &var17._501=.;
drop &var17._85 &var17._86 &var17._87;
&var18._501=0;
if &var18._85=1 or &var18._86=1 or &var18._87 =1 then &var18._501=1;
if &var18._85=. and &var18._86=. and &var18._87 =. then &var18._501=.;
drop &var18._85 &var18._86 &var18._87;
&var19._501=0;
if &var19._85=1 or &var19._86=1 or &var19._87 =1 then &var19._501=1;
if &var19._85=. and &var19._86=. and &var19._87 =. then &var19._501=.;
drop &var19._85 &var19._86 &var19._87;
&var20._501=0;
if &var20._85=1 or &var20._86=1 or &var20._87 =1 then &var20._501=1;
if &var20._85=. and &var20._86=. and &var20._87 =. then &var20._501=.;
drop &var20._85 &var20._86 &var20._87;
&var21._501=0;
if &var21._85=1 or &var21._86=1 or &var21._87 =1 then &var21._501=1;
if &var21._85=. and &var21._86=. and &var21._87 =. then &var21._501=.;
drop &var21._85 &var21._86 &var21._87;
&var22._501=0;
if &var22._85=1 or &var22._86=1 or &var22._87 =1 then &var22._501=1;
if &var22._85=. and &var22._86=. and &var22._87 =. then &var22._501=.;
drop &var22._85 &var22._86 &var22._87;
&var23._501=0;
if &var23._85=1 or &var23._86=1 or &var23._87 =1 then &var23._501=1;
if &var23._85=. and &var23._86=. and &var23._87 =. then &var23._501=.;
drop &var23._85 &var23._86 &var23._87;
run;
%mend;
%abc(j23,k23,l23,m23,n23,o23,p23,q23,r23,s23,t23,u23,v23,w23,x23,y23,z23,aa23,ab23,e23,f23,g23,h23,i23);

/*Output file for Quality Check*/
ods html file="E:\WAMU\15 oct\q23_501.xls";
proc freq data=a2.final_data_q23;
tables j23_501 k23_501 l23_501 m23_501 n23_501 o23_501 p23_501 q23_501 r23_501 s23_501 t23_501 u23_501 v23_501 w23_501 x23_501 y23_501 z23_501 aa23_501 ab23_501 e23_501 f23_501 g23_501 h23_501 i23_501;
run;
ods html close;


/*Macro for combining first mention variables into one variable*/
/*For q1aaf*/
%macro firstmention (var);
data a2.Final_data_first_mention_q1aa;
set a2.final_data_q23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
%end;
%do i=88 %to 222;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
%end;
%do i=224 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
run;
%mend;
%firstmention (q1aaf);

/*For q1f*/
%macro firstmention (var);
data a2.Final_data_first_mention_q1;
set a2.Final_data_first_mention_q1aa;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
%end;
%do i=88 %to 222;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
%end;
%do i=224 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
run;
%mend;
%firstmention (q1f);
/*For q1af*/
%macro firstmention (var);
data a2.Final_data_first_mention_q1a;
set a2.Final_data_first_mention_q1;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
%end;
%do i=88 %to 222;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
%end;
%do i=224 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
run;
%mend;
%firstmention (q1af);
/*For q1bf*/
%macro firstmention (var);
data a2.Final_data_first_mention_q1b;
set a2.Final_data_first_mention_q1a;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
%end;
%do i=88 %to 222;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
%end;
%do i=224 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._first_mention=&i; end;
run;
%mend;
%firstmention (q1bf);

/*Macro for combining Tagline variables into one variable*/
/*for Q1c all 7 tagline*/


%macro tagline (var);
data a2.Final_data_tagline_q1ca;
set a2.Final_data_first_mention_q1b;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
run;
%mend;
%tagline (q1ca);
%macro tagline (var);
data a2.Final_data_tagline_q1cb;
set a2.Final_data_tagline_q1ca;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
run;
%mend;
%tagline (q1cb);
%macro tagline (var);
data a2.Final_data_tagline_q1cc;
set a2.Final_data_tagline_q1cb;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
run;
%mend;
%tagline (q1cc);
%macro tagline (var);
data a2.Final_data_tagline_q1cd;
set a2.Final_data_tagline_q1cc;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
run;
%mend;
%tagline (q1cd);
%macro tagline (var);
data a2.Final_data_tagline_q1cf;
set a2.Final_data_tagline_q1ce;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
run;
%mend;
%tagline (q1cf);
%macro tagline (var);
data a2.Final_data_tagline_q1cf;
set a2.Final_data_tagline_q1ce;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
run;
%mend;
%tagline (q1cf);
%macro tagline (var);
data a2.data_tagline_q1cg_q8a_merge;
set a2.Data_q8a_merge_q1cf_trans;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._tagline=&i; end;
run;
%mend;
%tagline (q1cg);


/*Macro for Reducing Total Mention Variables*/


/*total mention Q1t */
data a2.data_total_mention_q1t;
set a2.data_tagline_q1cg_q8a_merge;
array bcd(*) q1t_1-q1t_314;
array q1_total_mention(20);
j=1;
do i=1 to dim(bcd);
if bcd(i)=1 then do;
q1_total_mention(j)=i;
j=j+1;
end;
end;
drop i j;
run;
/*total mention Q1aat */

data a2.data_total_mention_q1aat;
set a2.data_total_mention_q1t;
array bcd(*) q1aat_1-q1aat_314;
array q1aa_total_mention(20);
j=1;
do i=1 to dim(bcd);
if bcd(i)=1 then do;
q1aa_total_mention(j)=i;
j=j+1;
end;
end;
drop i j;
run;
/*total mention Q1at */

data a2.data_total_mention_q1at;
set a2.data_total_mention_q1aat;
array bcd(*) q1at_1-q1at_314;
array q1a_total_mention(20);
j=1;
do i=1 to dim(bcd);
if bcd(i)=1 then do;
q1a_total_mention(j)=i;
j=j+1;
end;
end;
drop i j;
run;
/*total mention Q1bt */

data a2.data_total_mention_q1bt;
set a2.data_total_mention_q1at;
array bcd(*) q1bt_1-q1bt_314;
array q1b_total_mention(20);
j=1;
do i=1 to dim(bcd);
if bcd(i)=1 then do;
q1b_total_mention(j)=i;
j=j+1;
end;
end;
drop i j;
run;

/*Output dataset and file for Quality Check*/
data check_q1b_total_mention (compress=yes);
set a2.data_total_mention_q1bt;
keep q1bt_1--q1bt_314 q1b_total_mention1--q1b_total_mention20;
run;
proc export data=check_q1b_total_mention outfile="E:\WAMU\20 oct\check_q1b_total_mention.csv";
run;

/*Macro for combining add variable in Q23  and output dataset and file for quality check individually*/

/*for all q 23-- j23,k23,l23,m23,n23,o23,p23,q23,r23,s23,t23,u23,v23,w23,x23,y23,e23,f23,g23,h23,i23*/
libname a2 "E:\WAMU\26 aug";
libname a1 "C:\Wamu Data";
%macro add (var);
data a2.data_add_j23;
set a2.data_total_mention_q1bt;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (j23);
data check_add_j23 (compress=yes);
set a2.data_add_j23;
keep j23_1--j23_84 j23_88--j23_314 j23_314 j23_add ;
run;
proc export data=check_add_j23 outfile="E:\WAMU\20 oct\check_add_j23.csv";
run;
%macro add (var);
data a2.data_add_k23;
set a2.data_add_j23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (k23);
data check_add_k23 (compress=yes);
set a2.data_add_k23;
keep k23_1--k23_84 k23_88--k23_314 k23_314 k23_add ;
run;
proc export data=check_add_k23 outfile="E:\WAMU\20 oct\check_add_k23.csv";
run;
%macro add (var);
data a2.data_add_l23;
set a2.data_add_k23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (l23);
data check_add_l23 (compress=yes);
set a2.data_add_l23;
keep l23_1--l23_84 l23_88--l23_314 l23_314 l23_add ;
run;
proc export data=check_add_l23 outfile="E:\WAMU\20 oct\check_add_l23.csv";
run;
%macro add (var);
data a2.data_add_m23;
set a2.data_add_l23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (m23);
data check_add_m23 (compress=yes);
set a2.data_add_m23;
keep m23_1--m23_84 m23_88--m23_314 m23_314 m23_add ;
run;
proc export data=check_add_m23 outfile="E:\WAMU\20 oct\check_add_m23.csv";
run;
%macro add (var);
data a2.data_add_n23;
set a2.data_add_m23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (n23);
data check_add_n23 (compress=yes);
set a2.data_add_n23;
keep n23_1--n23_84 n23_88--n23_314 n23_314 n23_add ;
run;
proc export data=check_add_n23 outfile="E:\WAMU\20 oct\check_add_n23.csv";
run;
%macro add (var);
data a2.data_add_o23;
set a2.data_add_n23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (o23);
data check_add_o23 (compress=yes);
set a2.data_add_o23;
keep o23_1--o23_84 o23_88--o23_314 o23_314 o23_add ;
run;
proc export data=check_add_o23 outfile="E:\WAMU\20 oct\check_add_o23.csv";
run;
%macro add (var);
data a2.data_add_p23;
set a2.data_add_o23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (p23);
data check_add_p23 (compress=yes);
set a2.data_add_p23;
keep p23_1--p23_84 p23_88--p23_314 p23_314 p23_add ;
run;
proc export data=check_add_p23 outfile="E:\WAMU\20 oct\check_add_p23.csv";
run;
%macro add (var);
data a2.data_add_q23;
set a2.data_add_p23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (q23);
data check_add_q23 (compress=yes);
set a2.data_add_q23;
keep q23_1--q23_84 q23_88--q23_314 q23_314 q23_add ;
run;
proc export data=check_add_q23 outfile="E:\WAMU\20 oct\check_add_q23.csv";
run;
%macro add (var);
data a2.data_add_r23;
set a2.data_add_q23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (r23);
data check_add_r23 (compress=yes);
set a2.data_add_r23;
keep r23_1--r23_84 r23_88--r23_314 r23_314 r23_add ;
run;
proc export data=check_add_r23 outfile="E:\WAMU\20 oct\check_add_r23.csv";
run;
%macro add (var);
data a2.data_add_s23;
set a2.data_add_r23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (s23);
data check_add_s23 (compress=yes);
set a2.data_add_s23;
keep s23_1--s23_84 s23_88--s23_314 s23_314 s23_add ;
run;
proc export data=check_add_s23 outfile="E:\WAMU\20 oct\check_add_s23.csv";
run;

%macro add (var);
data a2.data_add_t23;
set a2.data_add_s23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (t23);
data check_add_t23 (compress=yes);
set a2.data_add_t23;
keep t23_1--t23_84 t23_88--t23_314 t23_314 t23_add ;
run;
proc export data=check_add_t23 outfile="E:\WAMU\20 oct\check_add_t23.csv";
run;
%macro add (var);
data a2.data_add_u23;
set a2.data_add_t23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (u23);
data check_add_u23 (compress=yes);
set a2.data_add_u23;
keep u23_1--u23_84 u23_88--u23_314 u23_314 u23_add ;
run;
proc export data=check_add_u23 outfile="E:\WAMU\20 oct\check_add_u23.csv";
run;

%macro add (var);
data a2.data_add_v23;
set a2.data_add_u23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (v23);
data check_add_v23 (compress=yes);
set a2.data_add_v23;
keep v23_1--v23_84 v23_88--v23_314 v23_314 v23_add ;
run;
proc export data=check_add_v23 outfile="E:\WAMU\20 oct\check_add_v23.csv";
run;
%macro add (var);
data a2.data_add_w23;
set a2.data_add_v23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (w23);
data check_add_w23 (compress=yes);
set a2.data_add_w23;
keep w23_1--w23_84 w23_88--w23_314 w23_314 w23_add ;
run;
proc export data=check_add_w23 outfile="E:\WAMU\20 oct\check_add_w23.csv";
run;

%macro add (var);
data a2.data_add_x23;
set a2.data_add_w23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (x23);
data check_add_x23 (compress=yes);
set a2.data_add_x23;
keep x23_1--x23_84 x23_88--x23_314 x23_314 x23_add ;
run;
proc export data=check_add_x23 outfile="E:\WAMU\20 oct\check_add_x23.csv";
run;
%macro add (var);
data a2.data_add_y23;
set a2.data_add_x23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (y23);
data check_add_y23 (compress=yes);
set a2.data_add_y23;
keep y23_1--y23_84 y23_88--y23_314 y23_314 y23_add ;
run;
proc export data=check_add_y23 outfile="E:\WAMU\20 oct\check_add_y23.csv";
run;
%macro add (var);
data a2.data_add_z23;
set a2.data_add_y23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (z23);
data check_add_z23 (compress=yes);
set a2.data_add_z23;
keep z23_1--z23_84 z23_88--z23_314 z23_314 z23_add ;
run;
proc export data=check_add_z23 outfile="E:\WAMU\20 oct\check_add_z23.csv";
run;
%macro add (var);
data a2.data_add_aa23;
set a2.data_add_z23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (aa23);
data check_add_aa23 (compress=yes);
set a2.data_add_aa23;
keep aa23_1--aa23_84 aa23_88--aa23_314 aa23_314 aa23_add ;
run;
proc export data=check_add_aa23 outfile="E:\WAMU\20 oct\check_add_aa23.csv";
run;

%macro add (var);
data a2.data_add_ab23;
set a2.data_add_aa23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (ab23);
data check_add_ab23 (compress=yes);
set a2.data_add_ab23;
keep ab23_1--ab23_84 ab23_88--ab23_314 ab23_314 ab23_add ;
run;
proc export data=check_add_ab23 outfile="E:\WAMU\20 oct\check_add_ab23.csv";
run;
%macro add (var);
data a2.data_add_e23;
set a2.data_add_ab23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (e23);
data check_add_e23 (compress=yes);
set a2.data_add_e23;
keep e23_1--e23_84 e23_88--e23_314 e23_314 e23_add ;
run;
proc export data=check_add_e23 outfile="E:\WAMU\20 oct\check_add_e23.csv";
run;
%macro add (var);
data a2.data_add_f23;
set a2.data_add_e23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (f23);
data check_add_f23 (compress=yes);
set a2.data_add_f23;
keep f23_1--f23_84 f23_88--f23_314 f23_314 f23_501 f23_add ;
run;
proc export data=check_add_f23 outfile="E:\WAMU\20 oct\check_add_f23.csv";
run;
%macro add (var);
data a2.data_add_g23;
set a2.data_add_f23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (g23);
data check_add_g23 (compress=yes);
set a2.data_add_g23;
keep g23_1--g23_84 g23_88--g23_314 g23_314 g23_501 g23_add ;
run;
proc export data=check_add_g23 outfile="E:\WAMU\20 oct\check_add_g23.csv";
run;
%macro add (var);
data a2.data_add_h23;
set a2.data_add_g23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (h23);
data check_add_h23 (compress=yes);
set a2.data_add_h23;
keep h23_1--h23_84 h23_88--h23_314 h23_314 h23_501 h23_add ;
run;
proc export data=check_add_h23 outfile="E:\WAMU\20 oct\check_add_h23.csv";
run;
%macro add (var);
data a2.data_add_i23;
set a2.data_add_h23;
%do i=1 %to 84;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%do i=88 %to 314;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
%end;
%let i=501;
%let counter=&var._&i;
if &counter=1 then do; &var._add=&i; end;
run;
%mend;
%add (i23);
data check_add_i23 (compress=yes);
set a2.data_add_i23;
keep i23_1--i23_84 i23_88--i23_314 i23_314 i23_501 i23_add ;
run;
proc export data=check_add_i23 outfile="E:\WAMU\20 oct\check_add_i23.csv";
run;


/*Dropping out the Old Variables form Dataset to reduce the variables*/
data a2.final_data_deleted_vars;
set a2.data_add_i23;
drop q1f_1--q1f_314 q1f_501 q1t_1--q1t_314 q1aaf_1--q1aaf_314 q1aaf_501 q1aat_1--q1aat_314 q1af_1--q1af_314 q1af_501 q1at_1--q1at_314 q1bf_1--q1bf_314 q1bf_501 q1bt_1--q1bt_314
q1ca_1--q1ca_314 q1ca_501 q1cb_1--q1cb_314 q1cb_501 q1cc_1--q1cc_314 q1cc_501 q1cd_1--q1cd_314 q1cd_501 q1ce_1--q1ce_314 q1ce_501 q1cf_1--q1cf_314 q1cf_501 q1cg_1--q1cg_314 q1cg_501 
j23_1--j23_314 j23_501 k23_1--k23_314 k23_501 l23_1--l23_314 l23_501 m23_1--m23_314 m23_501 n23_1--n23_314 n23_501 o23_1--o23_314 o23_501 p23_1--p23_314 p23_501 q23_1--q23_314 q23_501
r23_1--r23_314 r23_501 s23_1--s23_314 s23_501 t23_1--t23_314 t23_501 u23_1--u23_314 u23_501 v23_1--v23_314 v23_501 w23_1--w23_314 w23_501 x23_1--x23_314 x23_501 y23_1--y23_314 y23_501
e23_1--e23_314 e23_501 f23_1--f23_314 f23_501 g23_1--g23_314 g23_501 h23_1--h23_314 h23_501 i23_1--i23_314 i23_501 z23_1--z23_314 z23_501 aa23_1--aa23_314 aa23_501 ab23_1--ab23_314 ab23_501 
j26p_1
j26p_10
j26p_11
j26p_12
j26p_13
j26p_2
j26p_3
j26p_4
j26p_5
j26p_6
j26p_7
j26p_8
j26p_9
k26p_1
k26p_10
k26p_11
k26p_12
k26p_2
k26p_3
k26p_4
k26p_5
k26p_6
k26p_7
k26p_8
k26p_9
l26p_1
l26p_10
l26p_11
l26p_12
l26p_2
l26p_3
l26p_4
l26p_5
l26p_6
l26p_7
l26p_8
l26p_9
m26p_1
m26p_10
m26p_11
m26p_12
m26p_2
m26p_3
m26p_4
m26p_5
m26p_6
m26p_7
m26p_8
m26p_9
n26p_1
n26p_10
n26p_11
n26p_12
n26p_2
n26p_3
n26p_4
n26p_5
n26p_6
n26p_7
n26p_8
n26p_9
o26p_1
o26p_10
o26p_11
o26p_12
o26p_2
o26p_3
o26p_4
o26p_5
o26p_6
o26p_7
o26p_8
o26p_9
p26p_1
p26p_10
p26p_11
p26p_12
p26p_2
p26p_3
p26p_4
p26p_5
p26p_6
p26p_7
p26p_8
p26p_9
q26p_1
q26p_10
q26p_11
q26p_12
q26p_2
q26p_3
q26p_4
q26p_5
q26p_6
q26p_7
q26p_8
q26p_9
r26p_1
r26p_10
r26p_11
r26p_12
r26p_2
r26p_3
r26p_4
r26p_5
r26p_6
r26p_7
r26p_8
r26p_9
s26p_1
s26p_10
s26p_11
s26p_12
s26p_2
s26p_3
s26p_4
s26p_5
s26p_6
s26p_7
s26p_8
s26p_9
t26p_1
t26p_10
t26p_11
t26p_12
t26p_2
t26p_3
t26p_4
t26p_5
t26p_6
t26p_7
t26p_8
t26p_9
u26p_1
u26p_10
u26p_11
u26p_12
u26p_2
u26p_3
u26p_4
u26p_5
u26p_6
u26p_7
u26p_8
u26p_9
v26p_1
v26p_10
v26p_11
v26p_12
v26p_2
v26p_3
v26p_4
v26p_5
v26p_6
v26p_7
v26p_8
v26p_9
w26p_1
w26p_10
w26p_11
w26p_12
w26p_2
w26p_3
w26p_4
w26p_5
w26p_6
w26p_7
w26p_8
w26p_9
x26p_1
x26p_10
x26p_11
x26p_12
x26p_2
x26p_3
x26p_4
x26p_5
x26p_6
x26p_7
x26p_8
x26p_9
y26p_1
y26p_10
y26p_11
y26p_12
y26p_2
y26p_3
y26p_4
y26p_5
y26p_6
y26p_7
y26p_8
y26p_9
z26p_1
z26p_10
z26p_11
z26p_12
z26p_2
z26p_3
z26p_4
z26p_5
z26p_6
z26p_7
z26p_8
z26p_9
aa26p_1
aa26p_10
aa26p_11
aa26p_12
aa26p_2
aa26p_3
aa26p_4
aa26p_5
aa26p_6
aa26p_7
aa26p_8
aa26p_9
ab26p_1
ab26p_10
ab26p_11
ab26p_12
ab26p_2
ab26p_3
ab26p_4
ab26p_5
ab26p_6
ab26p_7
ab26p_8
ab26p_9
e26p_1
e26p_10
e26p_11
e26p_12
e26p_13
e26p_2
e26p_3
e26p_4
e26p_5
e26p_6
e26p_7
e26p_8
e26p_9
f26p_1
f26p_10
f26p_11
f26p_12
f26p_13
f26p_2
f26p_3
f26p_4
f26p_5
f26p_6
f26p_7
f26p_8
f26p_9
g26p_1
g26p_10
g26p_11
g26p_12
g26p_13
g26p_2
g26p_3
g26p_4
g26p_5
g26p_6
g26p_7
g26p_8
g26p_9
h26p_1
h26p_10
h26p_11
h26p_12
h26p_13
h26p_2
h26p_3
h26p_4
h26p_5
h26p_6
h26p_7
h26p_8
h26p_9
i26p_1
i26p_10
i26p_11
i26p_12
i26p_13
i26p_2
i26p_3
i26p_4
i26p_5
i26p_6
i26p_7
i26p_8
i26p_9
;
run;

/*Output for variables check*/
proc contents data=a2.final_data_deleted_vars position;
ods output variables;
run;

proc export data=data1 outfile="C:\Wamu New data 13 oct\finalfile.csv";
run;


proc freq data=a1.final_data_deleted_vars;
tables q1aat_311 q1at_311;
run;

/*Sytax for Q9 Transformation into one primary account variable*/
data a2.final_q9_transform;
set a2.Final_data_deleted_vars;
if q9_10 = 1 then q9_primary_account = 286;
if q9_100 = 1 then q9_primary_account = 29;
if q9_101 = 1 then q9_primary_account = 30;
if q9_102 = 1 then q9_primary_account = 31;
if q9_103 = 1 then q9_primary_account = 32;
if q9_104 = 1 then q9_primary_account = 33;
if q9_105 = 1 then q9_primary_account = 34;
if q9_106 = 1 then q9_primary_account = 35;
if q9_107 = 1 then q9_primary_account = 36;
if q9_108 = 1 then q9_primary_account = 37;
if q9_109 = 1 then q9_primary_account = 38;
if q9_110 = 1 then q9_primary_account = 39;
if q9_111 = 1 then q9_primary_account = 40;
if q9_112 = 1 then q9_primary_account = 41;
if q9_113 = 1 then q9_primary_account = 42;
if q9_114 = 1 then q9_primary_account = 43;
if q9_115 = 1 then q9_primary_account = 44;
if q9_116 = 1 then q9_primary_account = 45;
if q9_117 = 1 then q9_primary_account = 46;
if q9_118 = 1 then q9_primary_account = 47;
if q9_119 = 1 then q9_primary_account = 48;
if q9_12 = 1 then q9_primary_account = 137;
if q9_120 = 1 then q9_primary_account = 49;
if q9_121 = 1 then q9_primary_account = 50;
if q9_122 = 1 then q9_primary_account = 51;
if q9_123 = 1 then q9_primary_account = 52;
if q9_124 = 1 then q9_primary_account = 53;
if q9_125 = 1 then q9_primary_account = 54;
if q9_126 = 1 then q9_primary_account = 55;
if q9_127 = 1 then q9_primary_account = 56;
if q9_128 = 1 then q9_primary_account = 57;
if q9_129 = 1 then q9_primary_account = 58;
if q9_130 = 1 then q9_primary_account = 59;
if q9_131 = 1 then q9_primary_account = 60;
if q9_132 = 1 then q9_primary_account = 61;
if q9_133 = 1 then q9_primary_account = 62;
if q9_134 = 1 then q9_primary_account = 63;
if q9_135 = 1 then q9_primary_account = 64;
if q9_136 = 1 then q9_primary_account = 65;
if q9_137 = 1 then q9_primary_account = 66;
if q9_138 = 1 then q9_primary_account = 67;
if q9_139 = 1 then q9_primary_account = 68;
if q9_14 = 1 then q9_primary_account = 298;
if q9_140 = 1 then q9_primary_account = 69;
if q9_141 = 1 then q9_primary_account = 70;
if q9_142 = 1 then q9_primary_account = 71;
if q9_143 = 1 then q9_primary_account = 72;
if q9_144 = 1 then q9_primary_account = 73;
if q9_145 = 1 then q9_primary_account = 74;
if q9_146 = 1 then q9_primary_account = 75;
if q9_147 = 1 then q9_primary_account = 76;
if q9_148 = 1 then q9_primary_account = 77;
if q9_149 = 1 then q9_primary_account = 78;
if q9_150 = 1 then q9_primary_account = 79;
if q9_151 = 1 then q9_primary_account = 80;
if q9_152 = 1 then q9_primary_account = 81;
if q9_153 = 1 then q9_primary_account = 82;
if q9_155 = 1 then q9_primary_account = 505;
if q9_156 = 1 then q9_primary_account = 505;
if q9_158 = 1 then q9_primary_account = 501;
if q9_159 = 1 then q9_primary_account = 501;
if q9_16 = 1 then q9_primary_account = 133;
if q9_161 = 1 then q9_primary_account = 88;
if q9_162 = 1 then q9_primary_account = 89;
if q9_163 = 1 then q9_primary_account = 90;
if q9_164 = 1 then q9_primary_account = 91;
if q9_165 = 1 then q9_primary_account = 92;
if q9_166 = 1 then q9_primary_account = 93;
if q9_167 = 1 then q9_primary_account = 94;
if q9_168 = 1 then q9_primary_account = 95;
if q9_169 = 1 then q9_primary_account = 96;
if q9_170 = 1 then q9_primary_account = 97;
if q9_171 = 1 then q9_primary_account = 98;
if q9_172 = 1 then q9_primary_account = 99;
if q9_173 = 1 then q9_primary_account = 100;
if q9_174 = 1 then q9_primary_account = 101;
if q9_175 = 1 then q9_primary_account = 102;
if q9_176 = 1 then q9_primary_account = 103;
if q9_177 = 1 then q9_primary_account = 104;
if q9_178 = 1 then q9_primary_account = 105;
if q9_179 = 1 then q9_primary_account = 106;
if q9_18 = 1 then q9_primary_account = 106;
if q9_180 = 1 then q9_primary_account = 107;
if q9_181 = 1 then q9_primary_account = 108;
if q9_182 = 1 then q9_primary_account = 109;
if q9_183 = 1 then q9_primary_account = 110;
if q9_184 = 1 then q9_primary_account = 111;
if q9_185 = 1 then q9_primary_account = 112;
if q9_186 = 1 then q9_primary_account = 113;
if q9_187 = 1 then q9_primary_account = 114;
if q9_188 = 1 then q9_primary_account = 115;
if q9_189 = 1 then q9_primary_account = 116;
if q9_190 = 1 then q9_primary_account = 117;
if q9_191 = 1 then q9_primary_account = 118;
if q9_192 = 1 then q9_primary_account = 119;
if q9_193 = 1 then q9_primary_account = 120;
if q9_194 = 1 then q9_primary_account = 121;
if q9_195 = 1 then q9_primary_account = 122;
if q9_196 = 1 then q9_primary_account = 123;
if q9_197 = 1 then q9_primary_account = 124;
if q9_198 = 1 then q9_primary_account = 125;
if q9_199 = 1 then q9_primary_account = 126;
if q9_2 = 1 then q9_primary_account = 505;
if q9_20 = 1 then q9_primary_account = 501;
if q9_200 = 1 then q9_primary_account = 127;
if q9_201 = 1 then q9_primary_account = 128;
if q9_202 = 1 then q9_primary_account = 129;
if q9_203 = 1 then q9_primary_account = 130;
if q9_204 = 1 then q9_primary_account = 131;
if q9_205 = 1 then q9_primary_account = 132;
if q9_206 = 1 then q9_primary_account = 133;
if q9_207 = 1 then q9_primary_account = 134;
if q9_208 = 1 then q9_primary_account = 135;
if q9_209 = 1 then q9_primary_account = 136;
if q9_210 = 1 then q9_primary_account = 137;
if q9_211 = 1 then q9_primary_account = 138;
if q9_212 = 1 then q9_primary_account = 139;
if q9_213 = 1 then q9_primary_account = 140;
if q9_214 = 1 then q9_primary_account = 141;
if q9_215 = 1 then q9_primary_account = 142;
if q9_216 = 1 then q9_primary_account = 143;
if q9_217 = 1 then q9_primary_account = 144;
if q9_218 = 1 then q9_primary_account = 145;
if q9_219 = 1 then q9_primary_account = 146;
if q9_22 = 1 then q9_primary_account = 203;
if q9_220 = 1 then q9_primary_account = 147;
if q9_221 = 1 then q9_primary_account = 148;
if q9_222 = 1 then q9_primary_account = 149;
if q9_223 = 1 then q9_primary_account = 150;
if q9_224 = 1 then q9_primary_account = 151;
if q9_225 = 1 then q9_primary_account = 152;
if q9_226 = 1 then q9_primary_account = 153;
if q9_227 = 1 then q9_primary_account = 154;
if q9_228 = 1 then q9_primary_account = 155;
if q9_229 = 1 then q9_primary_account = 156;
if q9_230 = 1 then q9_primary_account = 157;
if q9_231 = 1 then q9_primary_account = 158;
if q9_232 = 1 then q9_primary_account = 159;
if q9_233 = 1 then q9_primary_account = 160;
if q9_234 = 1 then q9_primary_account = 161;
if q9_235 = 1 then q9_primary_account = 162;
if q9_236 = 1 then q9_primary_account = 507;
if q9_237 = 1 then q9_primary_account = 164;
if q9_238 = 1 then q9_primary_account = 165;
if q9_239 = 1 then q9_primary_account = 166;
if q9_24 = 1 then q9_primary_account = 149;
if q9_240 = 1 then q9_primary_account = 167;
if q9_241 = 1 then q9_primary_account = 168;
if q9_242 = 1 then q9_primary_account = 169;
if q9_243 = 1 then q9_primary_account = 170;
if q9_244 = 1 then q9_primary_account = 171;
if q9_245 = 1 then q9_primary_account = 172;
if q9_246 = 1 then q9_primary_account = 173;
if q9_247 = 1 then q9_primary_account = 174;
if q9_248 = 1 then q9_primary_account = 175;
if q9_249 = 1 then q9_primary_account = 176;
if q9_250 = 1 then q9_primary_account = 177;
if q9_251 = 1 then q9_primary_account = 178;
if q9_252 = 1 then q9_primary_account = 179;
if q9_253 = 1 then q9_primary_account = 180;
if q9_254 = 1 then q9_primary_account = 181;
if q9_255 = 1 then q9_primary_account = 182;
if q9_256 = 1 then q9_primary_account = 183;
if q9_257 = 1 then q9_primary_account = 184;
if q9_258 = 1 then q9_primary_account = 185;
if q9_259 = 1 then q9_primary_account = 186;
if q9_26 = 1 then q9_primary_account = 222;
if q9_260 = 1 then q9_primary_account = 187;
if q9_261 = 1 then q9_primary_account = 188;
if q9_262 = 1 then q9_primary_account = 189;
if q9_263 = 1 then q9_primary_account = 190;
if q9_264 = 1 then q9_primary_account = 191;
if q9_265 = 1 then q9_primary_account = 192;
if q9_266 = 1 then q9_primary_account = 193;
if q9_267 = 1 then q9_primary_account = 194;
if q9_268 = 1 then q9_primary_account = 195;
if q9_269 = 1 then q9_primary_account = 196;
if q9_270 = 1 then q9_primary_account = 197;
if q9_271 = 1 then q9_primary_account = 198;
if q9_272 = 1 then q9_primary_account = 199;
if q9_273 = 1 then q9_primary_account = 200;
if q9_274 = 1 then q9_primary_account = 201;
if q9_275 = 1 then q9_primary_account = 202;
if q9_276 = 1 then q9_primary_account = 203;
if q9_277 = 1 then q9_primary_account = 204;
if q9_278 = 1 then q9_primary_account = 205;
if q9_279 = 1 then q9_primary_account = 206;
if q9_28 = 1 then q9_primary_account = 306;
if q9_280 = 1 then q9_primary_account = 207;
if q9_281 = 1 then q9_primary_account = 208;
if q9_282 = 1 then q9_primary_account = 209;
if q9_283 = 1 then q9_primary_account = 210;
if q9_284 = 1 then q9_primary_account = 211;
if q9_285 = 1 then q9_primary_account = 212;
if q9_286 = 1 then q9_primary_account = 213;
if q9_287 = 1 then q9_primary_account = 214;
if q9_288 = 1 then q9_primary_account = 215;
if q9_289 = 1 then q9_primary_account = 216;
if q9_290 = 1 then q9_primary_account = 217;
if q9_291 = 1 then q9_primary_account = 218;
if q9_292 = 1 then q9_primary_account = 219;
if q9_293 = 1 then q9_primary_account = 220;
if q9_294 = 1 then q9_primary_account = 221;
if q9_295 = 1 then q9_primary_account = 222;
if q9_296 = 1 then q9_primary_account = 501;
if q9_297 = 1 then q9_primary_account = 224;
if q9_298 = 1 then q9_primary_account = 225;
if q9_299 = 1 then q9_primary_account = 226;
if q9_30 = 1 then q9_primary_account = 279;
if q9_300 = 1 then q9_primary_account = 227;
if q9_301 = 1 then q9_primary_account = 228;
if q9_302 = 1 then q9_primary_account = 229;
if q9_303 = 1 then q9_primary_account = 230;
if q9_304 = 1 then q9_primary_account = 231;
if q9_305 = 1 then q9_primary_account = 232;
if q9_306 = 1 then q9_primary_account = 233;
if q9_307 = 1 then q9_primary_account = 234;
if q9_308 = 1 then q9_primary_account = 235;
if q9_309 = 1 then q9_primary_account = 236;
if q9_310 = 1 then q9_primary_account = 237;
if q9_311 = 1 then q9_primary_account = 238;
if q9_312 = 1 then q9_primary_account = 239;
if q9_313 = 1 then q9_primary_account = 240;
if q9_314 = 1 then q9_primary_account = 241;
if q9_315 = 1 then q9_primary_account = 242;
if q9_316 = 1 then q9_primary_account = 243;
if q9_317 = 1 then q9_primary_account = 244;
if q9_318 = 1 then q9_primary_account = 245;
if q9_319 = 1 then q9_primary_account = 246;
if q9_32 = 1 then q9_primary_account = 213;
if q9_320 = 1 then q9_primary_account = 247;
if q9_321 = 1 then q9_primary_account = 248;
if q9_322 = 1 then q9_primary_account = 249;
if q9_323 = 1 then q9_primary_account = 250;
if q9_324 = 1 then q9_primary_account = 251;
if q9_325 = 1 then q9_primary_account = 252;
if q9_326 = 1 then q9_primary_account = 253;
if q9_327 = 1 then q9_primary_account = 254;
if q9_328 = 1 then q9_primary_account = 255;
if q9_329 = 1 then q9_primary_account = 256;
if q9_330 = 1 then q9_primary_account = 257;
if q9_331 = 1 then q9_primary_account = 258;
if q9_332 = 1 then q9_primary_account = 259;
if q9_333 = 1 then q9_primary_account = 260;
if q9_334 = 1 then q9_primary_account = 261;
if q9_335 = 1 then q9_primary_account = 262;
if q9_336 = 1 then q9_primary_account = 263;
if q9_337 = 1 then q9_primary_account = 264;
if q9_338 = 1 then q9_primary_account = 265;
if q9_339 = 1 then q9_primary_account = 266;
if q9_34 = 1 then q9_primary_account = 152;
if q9_340 = 1 then q9_primary_account = 267;
if q9_341 = 1 then q9_primary_account = 268;
if q9_342 = 1 then q9_primary_account = 269;
if q9_343 = 1 then q9_primary_account = 270;
if q9_344 = 1 then q9_primary_account = 271;
if q9_345 = 1 then q9_primary_account = 272;
if q9_346 = 1 then q9_primary_account = 273;
if q9_347 = 1 then q9_primary_account = 274;
if q9_348 = 1 then q9_primary_account = 275;
if q9_349 = 1 then q9_primary_account = 276;
if q9_350 = 1 then q9_primary_account = 277;
if q9_351 = 1 then q9_primary_account = 278;
if q9_352 = 1 then q9_primary_account = 279;
if q9_353 = 1 then q9_primary_account = 280;
if q9_354 = 1 then q9_primary_account = 281;
if q9_355 = 1 then q9_primary_account = 282;
if q9_356 = 1 then q9_primary_account = 283;
if q9_357 = 1 then q9_primary_account = 284;
if q9_358 = 1 then q9_primary_account = 285;
if q9_359 = 1 then q9_primary_account = 286;
if q9_36 = 1 then q9_primary_account = 132;
if q9_360 = 1 then q9_primary_account = 287;
if q9_361 = 1 then q9_primary_account = 288;
if q9_362 = 1 then q9_primary_account = 289;
if q9_363 = 1 then q9_primary_account = 290;
if q9_364 = 1 then q9_primary_account = 291;
if q9_365 = 1 then q9_primary_account = 292;
if q9_366 = 1 then q9_primary_account = 293;
if q9_367 = 1 then q9_primary_account = 294;
if q9_368 = 1 then q9_primary_account = 295;
if q9_369 = 1 then q9_primary_account = 296;
if q9_370 = 1 then q9_primary_account = 297;
if q9_371 = 1 then q9_primary_account = 298;
if q9_372 = 1 then q9_primary_account = 299;
if q9_373 = 1 then q9_primary_account = 300;
if q9_374 = 1 then q9_primary_account = 301;
if q9_375 = 1 then q9_primary_account = 302;
if q9_376 = 1 then q9_primary_account = 303;
if q9_377 = 1 then q9_primary_account = 304;
if q9_378 = 1 then q9_primary_account = 305;
if q9_379 = 1 then q9_primary_account = 306;
if q9_38 = 1 then q9_primary_account = 98;
if q9_380 = 1 then q9_primary_account = 307;
if q9_381 = 1 then q9_primary_account = 308;
if q9_382 = 1 then q9_primary_account = 309;
if q9_383 = 1 then q9_primary_account = 311;
if q9_384 = 1 then q9_primary_account = 312;
if q9_385 = 1 then q9_primary_account = 313;
if q9_386 = 1 then q9_primary_account = 314;
if q9_4 = 1 then q9_primary_account = 501;
if q9_40 = 1 then q9_primary_account = 243;
if q9_42 = 1 then q9_primary_account = 90;
if q9_44 = 1 then q9_primary_account = 184;
if q9_46 = 1 then q9_primary_account = 258;
if q9_48 = 1 then q9_primary_account = 154;
if q9_50 = 1 then q9_primary_account = 308;
if q9_52 = 1 then q9_primary_account = 275;
if q9_54 = 1 then q9_primary_account = 158;
if q9_56 = 1 then q9_primary_account = 506;
if q9_58 = 1 then q9_primary_account = 127;
if q9_6 = 1 then q9_primary_account = 302;
if q9_60 = 1 then q9_primary_account = 91;
if q9_62 = 1 then q9_primary_account = 249;
if q9_64 = 1 then q9_primary_account = 250;
if q9_66 = 1 then q9_primary_account = 301;
if q9_68 = 1 then q9_primary_account = 214;
if q9_70 = 1 then q9_primary_account = 242;
if q9_72 = 1 then q9_primary_account = 1;
if q9_73 = 1 then q9_primary_account = 2;
if q9_74 = 1 then q9_primary_account = 3;
if q9_75 = 1 then q9_primary_account = 4;
if q9_76 = 1 then q9_primary_account = 5;
if q9_77 = 1 then q9_primary_account = 6;
if q9_78 = 1 then q9_primary_account = 7;
if q9_79 = 1 then q9_primary_account = 8;
if q9_8 = 1 then q9_primary_account = 290;
if q9_80 = 1 then q9_primary_account = 9;
if q9_81 = 1 then q9_primary_account = 10;
if q9_82 = 1 then q9_primary_account = 11;
if q9_83 = 1 then q9_primary_account = 12;
if q9_84 = 1 then q9_primary_account = 13;
if q9_85 = 1 then q9_primary_account = 14;
if q9_86 = 1 then q9_primary_account = 15;
if q9_87 = 1 then q9_primary_account = 16;
if q9_88 = 1 then q9_primary_account = 17;
if q9_89 = 1 then q9_primary_account = 18;
if q9_90 = 1 then q9_primary_account = 19;
if q9_91 = 1 then q9_primary_account = 20;
if q9_92 = 1 then q9_primary_account = 21;
if q9_93 = 1 then q9_primary_account = 22;
if q9_94 = 1 then q9_primary_account = 23;
if q9_95 = 1 then q9_primary_account = 24;
if q9_96 = 1 then q9_primary_account = 25;
if q9_97 = 1 then q9_primary_account = 26;
if q9_98 = 1 then q9_primary_account = 27;
if q9_99 = 1 then q9_primary_account = 28;
;
run;
/*Output for Quality Check*/
proc freq data=a2.Final_q9_transform;
tables q9_primary_account;
run;
/*Dropping of Q9 Old Variables from dataset*/
data a2.final_q9_transform_v1;
set a2.final_q9_transform;
drop
q9_10
q9_100
q9_101
q9_102
q9_103
q9_104
q9_105
q9_106
q9_107
q9_108
q9_109
q9_110
q9_111
q9_112
q9_113
q9_114
q9_115
q9_116
q9_117
q9_118
q9_119
q9_12
q9_120
q9_121
q9_122
q9_123
q9_124
q9_125
q9_126
q9_127
q9_128
q9_129
q9_130
q9_131
q9_132
q9_133
q9_134
q9_135
q9_136
q9_137
q9_138
q9_139
q9_14
q9_140
q9_141
q9_142
q9_143
q9_144
q9_145
q9_146
q9_147
q9_148
q9_149
q9_150
q9_151
q9_152
q9_153
q9_155
q9_156
q9_158
q9_159
q9_16
q9_161
q9_162
q9_163
q9_164
q9_165
q9_166
q9_167
q9_168
q9_169
q9_170
q9_171
q9_172
q9_173
q9_174
q9_175
q9_176
q9_177
q9_178
q9_179
q9_18
q9_180
q9_181
q9_182
q9_183
q9_184
q9_185
q9_186
q9_187
q9_188
q9_189
q9_190
q9_191
q9_192
q9_193
q9_194
q9_195
q9_196
q9_197
q9_198
q9_199
q9_2
q9_20
q9_200
q9_201
q9_202
q9_203
q9_204
q9_205
q9_206
q9_207
q9_208
q9_209
q9_210
q9_211
q9_212
q9_213
q9_214
q9_215
q9_216
q9_217
q9_218
q9_219
q9_22
q9_220
q9_221
q9_222
q9_223
q9_224
q9_225
q9_226
q9_227
q9_228
q9_229
q9_230
q9_231
q9_232
q9_233
q9_234
q9_235
q9_236
q9_237
q9_238
q9_239
q9_24
q9_240
q9_241
q9_242
q9_243
q9_244
q9_245
q9_246
q9_247
q9_248
q9_249
q9_250
q9_251
q9_252
q9_253
q9_254
q9_255
q9_256
q9_257
q9_258
q9_259
q9_26
q9_260
q9_261
q9_262
q9_263
q9_264
q9_265
q9_266
q9_267
q9_268
q9_269
q9_270
q9_271
q9_272
q9_273
q9_274
q9_275
q9_276
q9_277
q9_278
q9_279
q9_28
q9_280
q9_281
q9_282
q9_283
q9_284
q9_285
q9_286
q9_287
q9_288
q9_289
q9_290
q9_291
q9_292
q9_293
q9_294
q9_295
q9_296
q9_297
q9_298
q9_299
q9_30
q9_300
q9_301
q9_302
q9_303
q9_304
q9_305
q9_306
q9_307
q9_308
q9_309
q9_310
q9_311
q9_312
q9_313
q9_314
q9_315
q9_316
q9_317
q9_318
q9_319
q9_32
q9_320
q9_321
q9_322
q9_323
q9_324
q9_325
q9_326
q9_327
q9_328
q9_329
q9_330
q9_331
q9_332
q9_333
q9_334
q9_335
q9_336
q9_337
q9_338
q9_339
q9_34
q9_340
q9_341
q9_342
q9_343
q9_344
q9_345
q9_346
q9_347
q9_348
q9_349
q9_350
q9_351
q9_352
q9_353
q9_354
q9_355
q9_356
q9_357
q9_358
q9_359
q9_36
q9_360
q9_361
q9_362
q9_363
q9_364
q9_365
q9_366
q9_367
q9_368
q9_369
q9_370
q9_371
q9_372
q9_373
q9_374
q9_375
q9_376
q9_377
q9_378
q9_379
q9_38
q9_380
q9_381
q9_382
q9_383
q9_384
q9_385
q9_386
q9_4
q9_40
q9_42
q9_44
q9_46
q9_48
q9_50
q9_52
q9_54
q9_56
q9_58
q9_6
q9_60
q9_62
q9_64
q9_66
q9_68
q9_70
q9_72
q9_73
q9_74
q9_75
q9_76
q9_77
q9_78
q9_79
q9_8
q9_80
q9_81
q9_82
q9_83
q9_84
q9_85
q9_86
q9_87
q9_88
q9_89
q9_90
q9_91
q9_92
q9_93
q9_94
q9_95
q9_96
q9_97
q9_98
q9_99
;
run;
/*Output file for variables check in data*/
proc contents data=a2.final_q9_transform_v1;
ods output variables;
run;
proc export data=data1 outfile="C:\Wamu New data 13 oct\proc_contents.csv";
run;
/*Assigning new labels and formats for transform dataset*/
data a2.Final_transformation_22_oct;
set a2.final_q9_transform_v1;
format aa23_add banksF.;
format ab23_add banksF.;
format e23_add banksF.;
format f23_add banksF.;
format g23_add banksF.;
format h23_add banksF.;
format i23_add banksF.;
format j23_add banksF.;
format k23_add banksF.;
format l23_add banksF.;
format m23_add banksF.;
format n23_add banksF.;
format o23_add banksF.;
format p23_add banksF.;
format q1_total_mention1 banksF.;
format q1_total_mention2 banksF.;
format q1_total_mention3 banksF.;
format q1_total_mention4 banksF.;
format q1_total_mention5 banksF.;
format q1_total_mention6 banksF.;
format q1_total_mention7 banksF.;
format q1_total_mention8 banksF.;
format q1_total_mention9 banksF.;
format q1_total_mention10 banksF.;
format q1_total_mention11 banksF.;
format q1_total_mention12 banksF.;
format q1_total_mention13 banksF.;
format q1_total_mention14 banksF.;
format q1_total_mention15 banksF.;
format q1_total_mention16 banksF.;
format q1_total_mention17 banksF.;
format q1_total_mention18 banksF.;
format q1_total_mention19 banksF.;
format q1_total_mention20 banksF.;
format q1a_total_mention1 banksF.;
format q1a_total_mention2 banksF.;
format q1a_total_mention3 banksF.;
format q1a_total_mention4 banksF.;
format q1a_total_mention5 banksF.;
format q1a_total_mention6 banksF.;
format q1a_total_mention7 banksF.;
format q1a_total_mention8 banksF.;
format q1a_total_mention9 banksF.;
format q1a_total_mention10 banksF.;
format q1a_total_mention11 banksF.;
format q1a_total_mention12 banksF.;
format q1a_total_mention13 banksF.;
format q1a_total_mention14 banksF.;
format q1a_total_mention15 banksF.;
format q1a_total_mention16 banksF.;
format q1a_total_mention17 banksF.;
format q1a_total_mention18 banksF.;
format q1a_total_mention19 banksF.;
format q1a_total_mention20 banksF.;
format q1aa_total_mention1 banksF.;
format q1aa_total_mention2 banksF.;
format q1aa_total_mention3 banksF.;
format q1aa_total_mention4 banksF.;
format q1aa_total_mention5 banksF.;
format q1aa_total_mention6 banksF.;
format q1aa_total_mention7 banksF.;
format q1aa_total_mention8 banksF.;
format q1aa_total_mention9 banksF.;
format q1aa_total_mention10 banksF.;
format q1aa_total_mention11 banksF.;
format q1aa_total_mention12 banksF.;
format q1aa_total_mention13 banksF.;
format q1aa_total_mention14 banksF.;
format q1aa_total_mention15 banksF.;
format q1aa_total_mention16 banksF.;
format q1aa_total_mention17 banksF.;
format q1aa_total_mention18 banksF.;
format q1aa_total_mention19 banksF.;
format q1aa_total_mention20 banksF.;
format q1aaf_first_mention banksF.;
format q1af_first_mention banksF.;
format q1b_total_mention1 banksF.;
format q1b_total_mention2 banksF.;
format q1b_total_mention3 banksF.;
format q1b_total_mention4 banksF.;
format q1b_total_mention5 banksF.;
format q1b_total_mention6 banksF.;
format q1b_total_mention7 banksF.;
format q1b_total_mention8 banksF.;
format q1b_total_mention9 banksF.;
format q1b_total_mention10 banksF.;
format q1b_total_mention11 banksF.;
format q1b_total_mention12 banksF.;
format q1b_total_mention13 banksF.;
format q1b_total_mention14 banksF.;
format q1b_total_mention15 banksF.;
format q1b_total_mention16 banksF.;
format q1b_total_mention17 banksF.;
format q1b_total_mention18 banksF.;
format q1b_total_mention19 banksF.;
format q1b_total_mention20 banksF.;
format q1bf_first_mention banksF.;
format q1ca_tagline banksF.;
format q1cb_tagline banksF.;
format q1cc_tagline banksF.;
format q1cd_tagline banksF.;
format q1ce_tagline banksF.;
format q1cf_tagline banksF.;
format q1cg_tagline banksF.;
format q1f_first_mention banksF.;
format q23_add banksF.;
format q9_primary_account banksF.;
format r23_add banksF.;
format s23_add banksF.;
format t23_add banksF.;
format u23_add banksF.;
format v23_add banksF.;
format w23_add banksF.;
format x23_add banksF.;
format y23_add banksF.;
format z23_add banksF.;
Label aa23_add =  'Q.23-27 TV Ad Branding - Kangaroo';
Label ab23_add =  'Q.23-28 TV Ad Branding - Bowling Ball/Asked';
Label e23_add =  'Q.23-5 TV Ad Branding - Exercise';
Label f23_add =  'Q.23-6 TV Ad Branding - Faker';
Label g23_add =  'Q.23-7 TV Ad Branding - Supermarket';
Label h23_add =  'Q.23-8 TV Ad Branding - Where"s Bill';
Label i23_add =  'Q.23-9 TV Ad Branding - Hospital';
Label j23_add =  'Q.23-10 TV Ad Branding - Launch:30';
Label k23_add =  'Q.23-11 TV Ad Branding - Supermarket V2';
Label l23_add =  'Q.23-12 TV Ad Branding - El Bill';
Label m23_add =  'Q.23-13 TV Ad Branding - Jump';
Label n23_add =  'Q.23-14 TV Ad Branding - Nude:30';
Label o23_add =  'Q.23-15 TV Ad Branding - Secrets:30';
Label p23_add =  'Q.23-16 TV Ad Branding - Promo:60';
Label q1_total_mention1 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention2 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention3 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention4 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention5 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention6 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention7 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention8 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention9 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention10 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention11 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention12 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention13 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention14 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention15 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention16 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention17 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention18 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention19 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1_total_mention20 =  'Q.1 Unaided brand awareness - Total mentions';
Label q1a_total_mention1 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention2 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention3 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention4 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention5 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention6 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention7 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention8 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention9 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention10 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention11 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention12 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention13 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention14 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention15 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention16 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention17 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention18 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention19 =  'Q.1A Banks offering free checking - Total mentions';
Label q1a_total_mention20 =  'Q.1A Banks offering free checking - Total mentions';
Label q1aa_total_mention1 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention2 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention3 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention4 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention5 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention6 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention7 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention8 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention9 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention10 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention11 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention12 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention13 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention14 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention15 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention16 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention17 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention18 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention19 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aa_total_mention20 =  'Q.1AA Banks offering mortgages or home loans - Total mentions';
Label q1aaf_first_mention =  'Q.1AA Banks offering mortgages or home loans - First mention';
Label q1af_first_mention =  'Q.1A Banks offering free checking - First mention';
Label q1b_total_mention1 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention2 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention3 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention4 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention5 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention6 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention7 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention8 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention9 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention10 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention11 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention12 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention13 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention14 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention15 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention16 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention17 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention18 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention19 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1b_total_mention20 =  'Q.1B Banks Seen Advertising For In Past Week - Total Mentions';
Label q1bf_first_mention =  'Q.1B Banks Seen Advertising For In Past Week - First Mention';
Label q1ca_tagline =  'Q.1C Financial Institution Which Uses Tagline "Whoo-hoo"';
Label q1cb_tagline =  'Q.1C Financial Institution Which Uses Tagline "Bank Of Opportunity"';
Label q1cc_tagline =  'Q.1C Financial Institution Which Uses Tagline "Chase What Matters"';
Label q1cd_tagline =  'Q.1C Financial Institution Which Uses Tagline "What"s In Your Wallet?"';
Label q1ce_tagline =  'Q.1C Financial Institution Which Uses Tagline "Let"s Get It Done"';
Label q1cf_tagline =  'Q.1C Financial Institution Which Uses Tagline "Uncommon Wisdom"';
Label q1cg_tagline =  'Q.1C Financial Institution Which Uses Tagline "The World"s Local Bank"';
Label q1f_first_mention =  'Q.1 Unaided brand awareness - First mention';
Label q23_add =  'Q.23-17 TV Ad Branding - Intro:60';
Label q9_primary_account =  'Q.9A/B Primary Checking Account';
Label r23_add =  'Q.23-18 TV Ad Branding - Chateau:30';
Label s23_add =  'Q.23-19 TV Ad Branding - Pens';
Label t23_add =  'Q.23-20 TV Ad Branding - Dreams';
Label u23_add =  'Q.23-21 TV Ad Branding - Dance WFC';
Label v23_add =  'Q.23-22 TV Ad Branding - Snow';
Label w23_add =  'Q.23-23 TV Ad Branding - Hair';
Label x23_add =  'Q.23-24 TV Ad Branding - Salt Flats';
Label y23_add =  'Q.23-25 TV Ad Branding - Puppies';
Label z23_add =  'Q.23-26 TV Ad Branding - Roller Rink';

run;
/*Final Output file for data dictionary*/
proc contents data=a2.Final_transformation_22_oct;
ods output variables;
run;
proc export data=data2 outfile="C:\Wamu New data 13 oct\proc_contents_22_oct.csv";
run;
/*syntax for other variables issues*/
/*binary reduction 1 fr qc8*/
libname a1 "E:\WAMU\Important Documents\Data 20 oct";
data cl8_check;
set a1.Final_transformation_22_oct;
keep cl8_1--cl8_9;
run;
proc export data=cl8_check outfile="E:\WAMU\QC\new data 20 oct\cl8_check.csv";
run;
data a2.data_cl8_transform;
set a1.Final_transformation_22_oct;
cl8=0;
if cl8_1=1 then cl8=1;
if cl8_3=1 then cl8=2;
if cl8_4=1 then cl8=3;
if cl8_5=1 then cl8=4;
if cl8_6=1 then cl8=5;
if cl8_7=1 then cl8=6;
if cl8_8=1 then cl8=7;
if cl8_1=. and cl8_3=. and cl8_4=. and cl8_5=. and cl8_6=. and cl8_7=. and cl8_8=. then cl8=.;
run;
ods html file="E:\WAMU\QC\new data 20 oct\cl8_freq.xls";
proc freq data=a2.data_cl8_transform;
tables cl8_1
cl8_3
cl8_4
cl8_5
cl8_6
cl8_7
cl8_8
cl8;
run;
ods html close;

data a2.data_cl8_transform_drop;
set a2.data_cl8_transform;
drop cl8_1
cl8_3
cl8_4
cl8_5
cl8_6
cl8_7
cl8_8
cl8_9
;
run;


/*q10_32vars*/
data q10_check2;
set  a2.data_cl8_transform_drop;
keep
q9_primary_account
q10aa
q10ab
q10ac
q10ba
q10bb
q10cb
q10cc
q10cd
q10ce
q10ci
q10cj
q10ck
q10da
q10db
q10fb
q10ha
q10hb
q10hc
q10ka
q10la
q10na
q10nb
q10pa
q10pb
q10ra
q10sb
q10sc
q10ua
q10ub
q10wb
q10wa
q10wd
q10we
q10wg
q10za
;
run;
proc export data=q10_check2 outfile="E:\WAMU\QC\new data 20 oct\q10_check2.csv";
run;
data a2.data_q10_transform;
set a2.data_cl8_transform_drop;
 if q10aa = 1 or 	 q10ab = 1 or 	 q10ac = 1 or 	 q10ba = 1 or 	 q10bb = 1 or 	 q10cb = 1 or 	 q10cc = 1 or 	 q10cd = 1 or 	 q10ce = 1 or 	 q10ci = 1 or 	 q10cj = 1 or 	 q10ck = 1 or 	 q10da = 1 or 	 q10db = 1 or 	 q10fb = 1 or 	 q10ha = 1 or 	 q10hb = 1 or 	 q10hc = 1 or 	 q10ka = 1 or 	 q10la = 1 or 	 q10na = 1 or 	 q10nb = 1 or 	 q10pa = 1 or 	 q10pb = 1 or 	 q10ra = 1 or 	 q10sb = 1 or 	 q10sc = 1 or 	 q10ua = 1 or 	 q10ub = 1 or 	 q10wa = 1 or 	 q10wb = 1 or 	 q10wd = 1 or 	 q10we = 1 or 	 q10wg = 1 or 	 q10za = 1 		
then q10=1;
else 
 if q10aa = 2 or 	 q10ab = 2 or 	 q10ac = 2 or 	 q10ba = 2 or 	 q10bb = 2 or 	 q10cb = 2 or 	 q10cc = 2 or 	 q10cd = 2 or 	 q10ce = 2 or 	 q10ci = 2 or 	 q10cj = 2 or 	 q10ck = 2 or 	 q10da = 2 or 	 q10db = 2 or 	 q10fb = 2 or 	 q10ha = 2 or 	 q10hb = 2 or 	 q10hc = 2 or 	 q10ka = 2 or 	 q10la = 2 or 	 q10na = 2 or 	 q10nb = 2 or 	 q10pa = 2 or 	 q10pb = 2 or 	 q10ra = 2 or 	 q10sb = 2 or 	 q10sc = 2 or 	 q10ua = 2 or 	 q10ub = 2 or 	 q10wa = 2 or 	 q10wb = 2 or 	 q10wd = 2 or 	 q10we = 2 or 	 q10wg = 2 or 	 q10za = 2 
then q10=2;
else 
if  q10aa = 3 or 	 q10ab = 3 or 	 q10ac = 3 or 	 q10ba = 3 or 	 q10bb = 3 or 	 q10cb = 3 or 	 q10cc = 3 or 	 q10cd = 3 or 	 q10ce = 3 or 	 q10ci = 3 or 	 q10cj = 3 or 	 q10ck = 3 or 	 q10da = 3 or 	 q10db = 3 or 	 q10fb = 3 or 	 q10ha = 3 or 	 q10hb = 3 or 	 q10hc = 3 or 	 q10ka = 3 or 	 q10la = 3 or 	 q10na = 3 or 	 q10nb = 3 or 	 q10pa = 3 or 	 q10pb = 3 or 	 q10ra = 3 or 	 q10sb = 3 or 	 q10sc = 3 or 	 q10ua = 3 or 	 q10ub = 3 or 	 q10wa = 3 or 	 q10wb = 3 or 	 q10wd = 3 or 	 q10we = 3 or 	 q10wg = 3 or 	 q10za = 3  
then q10=3;
else 
 if q10aa = 4 or 	 q10ab = 4 or 	 q10ac = 4 or 	 q10ba = 4 or 	 q10bb = 4 or 	 q10cb = 4 or 	 q10cc = 4 or 	 q10cd = 4 or 	 q10ce = 4 or 	 q10ci = 4 or 	 q10cj = 4 or 	 q10ck = 4 or 	 q10da = 4 or 	 q10db = 4 or 	 q10fb = 4 or 	 q10ha = 4 or 	 q10hb = 4 or 	 q10hc = 4 or 	 q10ka = 4 or 	 q10la = 4 or 	 q10na = 4 or 	 q10nb = 4 or 	 q10pa = 4 or 	 q10pb = 4 or 	 q10ra = 4 or 	 q10sb = 4 or 	 q10sc = 4 or 	 q10ua = 4 or 	 q10ub = 4 or 	 q10wa = 4 or 	 q10wb = 4 or 	 q10wd = 4 or 	 q10we = 4 or 	 q10wg = 4 or 	 q10za = 4 
then q10=4;
else 
if q10aa = 5 or 	 q10ab = 5 or 	 q10ac = 5 or 	 q10ba = 5 or 	 q10bb = 5 or 	 q10cb = 5 or 	 q10cc = 5 or 	 q10cd = 5 or 	 q10ce = 5 or 	 q10ci = 5 or 	 q10cj = 5 or 	 q10ck = 5 or 	 q10da = 5 or 	 q10db = 5 or 	 q10fb = 5 or 	 q10ha = 5 or 	 q10hb = 5 or 	 q10hc = 5 or 	 q10ka = 5 or 	 q10la = 5 or 	 q10na = 5 or 	 q10nb = 5 or 	 q10pa = 5 or 	 q10pb = 5 or 	 q10ra = 5 or 	 q10sb = 5 or 	 q10sc = 5 or 	 q10ua = 5 or 	 q10ub = 5 or 	 q10wa = 5 or 	 q10wb = 5 or 	 q10wd = 5 or 	 q10we = 5 or 	 q10wg = 5 or 	 q10za = 5 
then q10=5;
else q10=.;
run;

proc freq data=a2.data_q10_transform;
tables q10;
run;

data a2.data_q10_transform_drop;
set a2.data_q10_transform;
drop q10aa
q10ab
q10ac
q10ba
q10bb
q10cb
q10cc
q10cd
q10ce
q10ci
q10cj
q10ck
q10da
q10db
q10fb
q10ha
q10hb
q10hc
q10ka
q10la
q10na
q10nb
q10pa
q10pb
q10ra
q10sb
q10sc
q10ua
q10ub
q10wb
q10wa
q10wd
q10we
q10wg
q10za;
run;
data qc6_check;
set  a2.data_q10_transform_drop;
keep
qc6ad
qc6ka
qc6kb
qc6kc
qc6te

;
run;
proc export data=qc6_check outfile="E:\WAMU\QC\new data 20 oct\qc6_check.csv";
run;
proc format;
 value q10F
      5 = '(5) Completely satisfied'
      4 = '(4) Somewhat satisfied'
      3 = '(3) Neither satisfied nor dissatisfied'
      2 = '(2) Somewhat dissatisfied'
      1 = '(1) Completely dissatisfied'
   ;
   value cl8F
1='I currently own my home, but plan on buying a new home within the next year'
2='I currently own my home, but plan on refinancing it within the next year'
3='I currently own my home and do not plan on buying a new home within the next year'
4='I don"t own a home now, but plan on buying a new home within the next year'
5='I don"t own a home now, and do not plan to buy a new home within the next year'
6='Not Sure'
7='Prefer not to answer'
;
   run;
data a2.data_q10_cl8transform;
set  a2.data_q10_transform_drop;
format q10 q10F.;
format cl8 cl8F.;

Label q10 =  'Q.10 Satisfaction With Primary Checking Account';
Label cl8 =  'Q.C8 Own Home';

run;
data qc12_check;
set   a2.data_q10_cl8transform;
keep
cl12_1
cl12_2
cl12_3
cl12_4
cl12_5
cl12_6
;
run;
proc export data=qc12_check outfile="E:\WAMU\QC\new data 20 oct\qc12_check.csv";
run;

/*q14_36vars*/
data a2.data_q14_drop;
set a2.data_q10_cl8transform;
drop

q14aa
q14ab
q14ac
q14ba
q14bb
q14cb
q14cc
q14cd
q14ce
q14ci
q14cj
q14ck
q14da
q14db
q14fb
q14ha
q14hb
q14hc
q14ka
q14la
q14na
q14nb
q14pa
q14pb
q14ra
q14sb
q14sc
q14ua
q14ub
q14wb
q14wa
q14wd
q14we
q14wg
q14za

;
run;
proc export data=q14_check outfile="E:\WAMU\QC\new data 20 oct\q14_check.csv";
run;

/*End*/
