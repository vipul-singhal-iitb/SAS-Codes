
data adstock;
set TMP1.SHAMPOOS_ANALYSIS_DATA_v1;
keep week_num
fdw__new_triers
Dove_GRP--Pantene_GRP;
run;

proc sort data=adstock;
by week_num;
run;
/*creation of adstock for total media spend*/

%macro adstock(var,L,i);
proc means data = adstock noprint;
var &var;
by week;
output out=&var.mean mean =varmean ;
run;

proc sort data=&var.mean;
by dmacode;
run;

proc sort data= adstock;
by dmacode;
run;

data nw_data;
merge  adstock(in=aa) &var.mean(in=bb);
by dmacode;
run;
proc sort data=nw_data;
by dmacode year month;
run;


data nw_data;
set nw_data;
if trend=13 then &var.adstock_&i=&var+&L.*varmean;
run;

data &var.&i;
retain &var.adstock&i 0;
set NW_data(keep=&var.adstock_&i &var dmacode year month trend nm_green_quote_roll);
if trend>13 then &var.adstock&i = &L.*&var.adstock&i  + &var;  else &var.adstock&i = &var.adstock_&i;
run;

proc sort data=&var.&i;
by dmacode year month;
run;

proc reg data = &var.&i;
model nm_green_quote_roll = &var.adstock&i;
run;

%mend;

/*proc sort data=nm_tot_media1;*/
/*by dmacode year month;*/
/*run;*/


%adstock(nm_l_Spot_TV_hun,0.5,1);
%adstock(nm_l_DRTV_hun,0.5,1);
%adstock(nm_tot_cable_tv_hun,0.5,1);




/*%adstock(nm_tot_ooh_hun,0.707106781,2);*/
/*%adstock(nm_tot_ooh_hun,0.793700526,3);*/
/*%adstock(nm_tot_ooh_hun,0.840896415,4);*/
/*%adstock(nm_tot_ooh_hun,0.870550563,5);*/
/*%adstock(nm_tot_ooh_hun,0.890898718,6);*/
/*%adstock(nm_tot_tv,0.905723664,7);*/
/*%adstock(nm_tot_tv,0.917004043,8);*/
/*%adstock(nm_tot_tv,0.925874712,9);*/
/**/
/*%adstock(nm_tot_radio,0.5,1);*/
/*%adstock(nm_tot_radio,0.707106781,2);*/
/*%adstock(nm_tot_radio,0.793700526,3);*/
/*%adstock(nm_tot_radio,0.840896415,4);*/
/*%adstock(nm_tot_radio,0.870550563,5);*/
/*%adstock(nm_tot_radio,0.890898718,6);*/
/*%adstock(nm_tot_radio,0.905723664,7);*/
/*%adstock(nm_tot_radio,0.917004043,8);*/
/*%adstock(nm_tot_radio,0.925874712,9);*/
/*%adstock(nm_tot_radio,0.933032992,10);*/
/*%adstock(nm_tot_radio,0.938930911,11);*/
/*%adstock(nm_tot_radio,0.943874313,12);*/
/**/
/*%adstock(nm_tot_internet,0.5,1);*/
/*%adstock(nm_tot_internet,0.707106781,2);*/
/*%adstock(nm_tot_internet,0.793700526,3);*/
/*%adstock(nm_tot_internet,0.840896415,4);*/
/*%adstock(nm_tot_internet,0.870550563,5);*/
/*%adstock(nm_tot_internet,0.890898718,6);*/
/*%adstock(nm_tot_internet,0.905723664,7);*/
/*%adstock(nm_tot_internet,0.917004043,8);*/
/*%adstock(nm_tot_internet,0.925874712,9);*/
/*%adstock(nm_tot_internet,0.933032992,10);*/
/*%adstock(nm_tot_internet,0.938930911,11);*/
/*%adstock(nm_tot_internet,0.943874313,12);*/
/**/
/*%adstock(nm_tot_print_media,0.5,1);*/
/*%adstock(nm_tot_print_media,0.707106781,2);*/
/*%adstock(nm_tot_print_media,0.793700526,3);*/
/*%adstock(nm_tot_print_media,0.840896415,4);*/
/*%adstock(nm_tot_print_media,0.870550563,5);*/
/*%adstock(nm_tot_print_media,0.890898718,6);*/
/*%adstock(nm_tot_print_media,0.905723664,7);*/
/*%adstock(nm_tot_print_media,0.917004043,8);*/
/*%adstock(nm_tot_print_media,0.925874712,9);*/
/*%adstock(nm_tot_print_media,0.933032992,10);*/
/*%adstock(nm_tot_print_media,0.938930911,11);*/
/*%adstock(nm_tot_print_media,0.943874313,12);*/
/**/
/**/
/*%adstock(nm_tot_Direct_Mail,0.5,1);*/
/*%adstock(nm_tot_Direct_Mail,0.707106781,2);*/
/*%adstock(nm_tot_Direct_Mail,0.793700526,3);*/
/*%adstock(nm_tot_Direct_Mail,0.840896415,4);*/
/*%adstock(nm_tot_Direct_Mail,0.870550563,5);*/
/*%adstock(nm_tot_Direct_Mail,0.890898718,6);*/
/*%adstock(nm_tot_Direct_Mail,0.905723664,7);*/
/*%adstock(nm_tot_Direct_Mail,0.917004043,8);*/
/*%adstock(nm_tot_Direct_Mail,0.925874712,9);*/
/*%adstock(nm_tot_Direct_Mail,0.933032992,10);*/
/*%adstock(nm_tot_Direct_Mail,0.938930911,11);*/
/*%adstock(nm_tot_Direct_Mail,0.943874313,12);*/
/**/
/**/
/*%adstock(nm_tot_OOH,0.5,1);*/
/*%adstock(nm_tot_OOH,0.707106781,2);*/
/*%adstock(nm_tot_OOH,0.793700526,3);*/
/*%adstock(nm_tot_OOH,0.840896415,4);*/
/*%adstock(nm_tot_OOH,0.870550563,5);*/
/*%adstock(nm_tot_OOH,0.890898718,6);*/
/*%adstock(nm_tot_OOH,0.905723664,7);*/
/*%adstock(nm_tot_OOH,0.917004043,8);*/
/*%adstock(nm_tot_OOH,0.925874712,9);*/
/*%adstock(nm_tot_OOH,0.933032992,10);*/
/*%adstock(nm_tot_OOH,0.938930911,11);*/
/*%adstock(nm_tot_OOH,0.943874313,12);*/
/**/
/**/
/*%adstock(nm_tot_EMail,0.5,1);*/
/*%adstock(nm_tot_EMail,0.707106781,2);*/
/*%adstock(nm_tot_EMail,0.793700526,3);*/
/*%adstock(nm_tot_EMail,0.840896415,4);*/
/*%adstock(nm_tot_EMail,0.870550563,5);*/
/*%adstock(nm_tot_EMail,0.890898718,6);*/
/*%adstock(nm_tot_EMail,0.905723664,7);*/
/*%adstock(nm_tot_EMail,0.917004043,8);*/
/*%adstock(nm_tot_EMail,0.925874712,9);*/
/*%adstock(nm_tot_EMail,0.933032992,10);*/
/*%adstock(nm_tot_EMail,0.938930911,11);*/
/*%adstock(nm_tot_EMail,0.943874313,12);*/


proc sort data=tmp2.flatfile22;
by dmacode year month;
run;

data all_adstock;
merge Nm_tot_direct_mail3 Nm_tot_tv3 Nm_tot_radio3;
by dmacode year month ;
run;

data tmp1.flatfile22;
merge tmp1.flatfile22 all_adstock;
by dmacode year month ;
run;



/*chosen adstock series is adstock_totmedia_2 as the t-value = 49.93 and r sq = 0.2869 */

/*miscllaneous*/

data r.yrmonth;
set r.Nwdata(keep = dmacode year month trend);
run;

proc sort data = r.yrmonth;
by dmacode trend;
run;

proc sort data = r.totmedia;
by dmacode trend;
run;

data r.totmedia1;
merge r.totmedia(in = a) r.yrmonth;
by dmacode trend;
if a;
run;


data r.totmedia2;
set r.totmedia1(drop = 
adstock_totmedia_4
adstock_totmedia_3
adstock_totmedia_1
adstock_totmedia1
adstock_totmedia2
adstock_totmedia3
adstock_totmedia4
);
run;

data r.totmedia2;
set r.totmedia2;
rename adstock_totmedia_2 = ads_totmedia;
run;
