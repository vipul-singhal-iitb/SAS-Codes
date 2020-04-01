libname a1"D:\ankita\ITC\2 June";

/*creating price variable*/

data A1;
set A1.DATA_R_HP_GRP_SURVEY_OCT07_FEB09;
dove_price=(DOVE_Val_Crore/DOVE_Vol_KL)*10;
fiama_price=(FIAMA_Val_Crore/FIAMA_Vol_KL)*10;
garnier_price=(GARNIER_Val_Crore/GARNIER_Vol_KL)*10;
pantene_price=(PANTENE_Val_Crore/PANTENE_Vol_KL)*10;
fiama_dove_pricegap=fiama_price-dove_price;
fiama_garnier_pricegap=fiama_price-garnier_price;
fiama_pantene_pricegap=fiama_price-pantene_price;
dove_fiama_pricegap=dove_price-fiama_price;
dove_garnier_pricegap=dove_price-garnier_price;
dove_pantene_pricegap=dove_price-pantene_price;
garnier_fiama_pricegap=garnier_price-fiama_price;
garnier_dove_pricegap=garnier_price-dove_price;
garnier_pantene_pricegap=garnier_price-pantene_price;
pantene_fiama_pricegap=pantene_price-fiama_price;
pantene_dove_pricegap=pantene_price-dove_price;
pantene_garnier_pricegap=pantene_price-garnier_price;
fiama_rel_price=fiama_price/(mean(dove_price,garnier_price,pantene_price));
dove_rel_price=dove_price/(mean(fiama_price,garnier_price,pantene_price));
garnier_rel_price=garnier_price/(mean(fiama_price,dove_price,pantene_price));
pantene_rel_price=pantene_price/(mean(fiama_price,dove_price,garnier_price));
run;

data A2;
set A1;
Fiama_Dove_dist_gap=FIAMA_WtdD_Val_Premium - DOVE_WtdD_Val_Premium;
Fiama_Pantene_dist_gap=FIAMA_WtdD_Val_Premium - PANTENE_WtdD_Val_Premium;
Fiama_Garnier_dist_gap=FIAMA_WtdD_Val_Premium - GARNIER_WtdD_Val_Premium;
Dove_Pantene_dist_gap=DOVE_WtdD_Val_Premium - PANTENE_WtdD_Val_Premium;
Dove_Fiama_dist_gap=DOVE_WtdD_Val_Premium - FIAMA_WtdD_Val_Premium;
Dove_Garnier_dist_gap=DOVE_WtdD_Val_Premium - GARNIER_WtdD_Val_Premium;
GARNIER_Dove_dist_gap=GARNIER_WtdD_Val_Premium - DOVE_WtdD_Val_Premium;
GARNIER_Fiama_dist_gap=GARNIER_WtdD_Val_Premium - FIAMA_WtdD_Val_Premium;
GARNIER_PANTENE_dist_gap=GARNIER_WtdD_Val_Premium - PANTENE_WtdD_Val_Premium;
PANTENE_Dove_dist_gap=PANTENE_WtdD_Val_Premium - DOVE_WtdD_Val_Premium;
PANTENE_Fiama_dist_gap=PANTENE_WtdD_Val_Premium - FIAMA_WtdD_Val_Premium;
PANTENE_Garnier_dist_gap=PANTENE_WtdD_Val_Premium - GARNIER_WtdD_Val_Premium;
run;

data a1.Shampoos_data_newvars;
set a2;
Fiama_Dove_dist_ratio=FIAMA_WtdD_Val_Premium / DOVE_WtdD_Val_Premium;
Fiama_Pantene_dist_ratio=FIAMA_WtdD_Val_Premium / PANTENE_WtdD_Val_Premium;
Fiama_Garnier_dist_ratio=FIAMA_WtdD_Val_Premium / GARNIER_WtdD_Val_Premium;
Dove_Pantene_dist_ratio=DOVE_WtdD_Val_Premium / PANTENE_WtdD_Val_Premium;
Dove_Fiama_dist_ratio=DOVE_WtdD_Val_Premium / FIAMA_WtdD_Val_Premium;
Dove_Garnier_dist_ratio=DOVE_WtdD_Val_Premium / GARNIER_WtdD_Val_Premium;
GARNIER_Dove_dist_ratio=GARNIER_WtdD_Val_Premium / DOVE_WtdD_Val_Premium;
GARNIER_Fiama_dist_ratio=GARNIER_WtdD_Val_Premium / FIAMA_WtdD_Val_Premium;
GARNIER_PANTENE_dist_ratio=GARNIER_WtdD_Val_Premium / PANTENE_WtdD_Val_Premium;
PANTENE_Dove_dist_ratio=PANTENE_WtdD_Val_Premium / DOVE_WtdD_Val_Premium;
PANTENE_Fiama_dist_ratio=PANTENE_WtdD_Val_Premium / FIAMA_WtdD_Val_Premium;
PANTENE_Garnier_dist_ratio=PANTENE_WtdD_Val_Premium / GARNIER_WtdD_Val_Premium;
run;


proc export data=a1.Shampoos_data_newvars outfile="D:\lan Share Ankita\ITC\Final Datasets\Shampoos\Merged\May 27\shampoos_newvars.csv";
run;
