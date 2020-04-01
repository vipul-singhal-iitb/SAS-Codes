libname v1 "E:\Projects\ITC\Apr 21";

proc contents data=v1.Shampoos_rawdata;
ods output variables;
run;

Data Q2;
set v1.Shampoos_rawdata;
keep
M2_HEARD_1
M2_HEARD_2
M2_HEARD_3
M2_HEARD_4
M2_HEARD_5
M2_HEARD_6
M2_HEARD_7
M2_HEARD_8
M2_HEARD_9
M2_HEARD_10
M2_HEARD_11
M2_HEARD_12
M2_HEARD_13
M2_HEARD_14
M2_HEARD_15
M2_HEARD_16
M2_HEARD_17
M2_HEARD_18
M2_HEARD_19
M2_HEARD_20
M2_HEARD_21
M2_HEARD_22
M2_HEARD_23
M2_HEARD_24
M2_HEARD_25
M2_HEARD_26
M2_HEARD_27
M2_HEARD_28
M2_HEARD_29
M2_HEARD_30
M2HEARD_1
M2HEARD_2
M2HEARD_3
M2HEARD_4
M2HEARD_5
M2HEARD_6
M2HEARD_7
M2HEARD_8
M2HEARD_9
M2HEARD_10;
run;
/*for M2_HEARD M@_USED M2_MOst*/
%macro q1 (var);
data v1.Selectvars_rawdata_1;
set v1.Shampoos_rawdata;
%do i=1 %to 30;
%let counter=&var._&i;
if &counter =1 then &counter =1;
if &counter =2 then &counter =1;
if &counter =3 then &counter =3;
if &counter =4 then &counter =4;
if &counter =5 then &counter =5;
if &counter =6 then &counter =31;
if &counter =7 then &counter =31;
if &counter =8 then &counter =8;
if &counter =9 then &counter =31;
if &counter =10 then &counter =10;
if &counter =11 then &counter =11;
if &counter =12 then &counter =11;
if &counter =13 then &counter =11;
if &counter =14 then &counter =11;
if &counter =15 then &counter =11;
if &counter =16 then &counter =30;
if &counter =17 then &counter =30;
if &counter =18 then &counter =18;
if &counter =19 then &counter =19;
if &counter =20 then &counter =19;
if &counter =21 then &counter =19;
if &counter =22 then &counter =19;
if &counter =23 then &counter =19;
if &counter =24 then &counter =24;
if &counter =25 then &counter =24;
if &counter =26 then &counter =24;
if &counter =27 then &counter =24;
if &counter =28 then &counter =28;
if &counter =29 then &counter =18;
if &counter =30 then &counter =30;
if &counter =31 then &counter =31;
if &counter =32 then &counter =38;
if &counter =33 then &counter =38;
if &counter =34 then &counter =38;
if &counter =35 then &counter =38;
if &counter =36 then &counter =38;
if &counter =37 then &counter =38;
if &counter =38 then &counter =38;
if &counter =39 then &counter =38;
if &counter =40 then &counter =38;
if &counter =41 then &counter =38;
if &counter =42 then &counter =38;
if &counter =43 then &counter =38;
if &counter =44 then &counter =38;
if &counter =45 then &counter =38;
if &counter =46 then &counter =38;
if &counter =47 then &counter =38;
if &counter =48 then &counter =38;
if &counter =49 then &counter =38;
if &counter =50 then &counter =38;
if &counter =51 then &counter =38;
if &counter =52 then &counter =38;
if &counter =53 then &counter =38;
if &counter =54 then &counter =38;
if &counter =55 then &counter =38;
if &counter =56 then &counter =38;
if &counter =57 then &counter =38;
if &counter =58 then &counter =38;
if &counter =59 then &counter =38;
if &counter =60 then &counter =38;
if &counter =61 then &counter =38;
if &counter =62 then &counter =38;
if &counter =63 then &counter =38;
if &counter =64 then &counter =24;
if &counter =65 then &counter =24;
if &counter =66 then &counter =38;
if &counter =67 then &counter =38;
if &counter =68 then &counter =24;
if &counter =69 then &counter =24;
if &counter =70 then &counter =24;
if &counter =71 then &counter =24;
if &counter =72 then &counter =24;
if &counter =73 then &counter =24;
if &counter =74 then &counter =24;
if &counter =75 then &counter =38;
if &counter =76 then &counter =38;
if &counter =77 then &counter =1;
if &counter =78 then &counter =1;
if &counter =79 then &counter =1;
if &counter =80 then &counter =1;
if &counter =81 then &counter =38;
if &counter =82 then &counter =1;
if &counter =83 then &counter =1;
if &counter =84 then &counter =1;
if &counter =85 then &counter =1;
if &counter =86 then &counter =1;
if &counter =87 then &counter =1;
if &counter =88 then &counter =38;
if &counter =89 then &counter =1;
if &counter =90 then &counter =1;
if &counter =91 then &counter =3;
if &counter =92 then &counter =38;
if &counter =93 then &counter =3;
if &counter =94 then &counter =3;
if &counter =95 then &counter =3;
if &counter =96 then &counter =3;
if &counter =97 then &counter =3;
if &counter =98 then &counter =3;
if &counter =99 then &counter =3;
if &counter =100 then &counter =3;
if &counter =101 then &counter =3;
if &counter =102 then &counter =3;
if &counter =103 then &counter =3;
if &counter =104 then &counter =38;
if &counter =105 then &counter =38;
if &counter =106 then &counter =38;
if &counter =107 then &counter =38;
if &counter =108 then &counter =108;
if &counter =109 then &counter =38;
if &counter =110 then &counter =38;
if &counter =111 then &counter =38;
if &counter =112 then &counter =38;
if &counter =113 then &counter =38;
if &counter =114 then &counter =38;
if &counter =115 then &counter =38;
if &counter =116 then &counter =38;
if &counter =117 then &counter =38;
if &counter =118 then &counter =38;
if &counter =119 then &counter =19;
if &counter =120 then &counter =31;
if &counter =121 then &counter =38;
if &counter =122 then &counter =38;
if &counter =123 then &counter =38;
if &counter =124 then &counter =38;
if &counter =125 then &counter =38;
if &counter =126 then &counter =38;
if &counter =127 then &counter =38;
if &counter =128 then &counter =38;
if &counter =129 then &counter =38;
if &counter =130 then &counter =38;
if &counter =131 then &counter =38;
if &counter =132 then &counter =38;
if &counter =133 then &counter =38;
if &counter =134 then &counter =10;
if &counter =135 then &counter =10;
if &counter =136 then &counter =10;
if &counter =137 then &counter =10;
if &counter =138 then &counter =10;
if &counter =139 then &counter =10;
if &counter =140 then &counter =10;
if &counter =141 then &counter =10;
if &counter =142 then &counter =10;
if &counter =143 then &counter =10;
if &counter =144 then &counter =10;
if &counter =145 then &counter =10;
if &counter =146 then &counter =10;
if &counter =147 then &counter =10;
if &counter =148 then &counter =10;
if &counter =149 then &counter =10;
if &counter =150 then &counter =38;
if &counter =151 then &counter =38;
if &counter =152 then &counter =38;
if &counter =153 then &counter =38;
if &counter =154 then &counter =38;
if &counter =155 then &counter =38;
if &counter =156 then &counter =38;
if &counter =157 then &counter =38;
if &counter =158 then &counter =38;
if &counter =159 then &counter =38;
if &counter =160 then &counter =38;
if &counter =161 then &counter =38;
if &counter =162 then &counter =38;
if &counter =163 then &counter =38;
if &counter =164 then &counter =38;
if &counter =165 then &counter =38;
if &counter =166 then &counter =38;
if &counter =167 then &counter =38;
if &counter =168 then &counter =38;
if &counter =169 then &counter =38;
if &counter =170 then &counter =28;
if &counter =171 then &counter =28;
if &counter =172 then &counter =28;
if &counter =173 then &counter =38;
if &counter =174 then &counter =38;
if &counter =175 then &counter =38;
if &counter =176 then &counter =38;
if &counter =177 then &counter =38;
if &counter =178 then &counter =38;
if &counter =179 then &counter =38;
if &counter =180 then &counter =38;
if &counter =181 then &counter =38;
if &counter =182 then &counter =38;
if &counter =183 then &counter =38;
if &counter =184 then &counter =38;
if &counter =185 then &counter =38;
if &counter =186 then &counter =38;
if &counter =187 then &counter =4;
if &counter =188 then &counter =10;
if &counter =189 then &counter =30;
if &counter =190 then &counter =38;
if &counter =191 then &counter =38;
if &counter =192 then &counter =38;
if &counter =193 then &counter =38;
if &counter =194 then &counter =38;
if &counter =195 then &counter =38;
if &counter =196 then &counter =38;
if &counter =197 then &counter =38;
if &counter =198 then &counter =38;
if &counter =199 then &counter =38;
if &counter =200 then &counter =38;
if &counter =201 then &counter =38;
if &counter =202 then &counter =38;
if &counter =203 then &counter =38;
if &counter =204 then &counter =38;
if &counter =205 then &counter =38;
if &counter =206 then &counter =38;
if &counter =207 then &counter =38;
if &counter =208 then &counter =38;
if &counter =209 then &counter =38;
if &counter =210 then &counter =38;
if &counter =211 then &counter =38;
if &counter =212 then &counter =38;
if &counter =213 then &counter =38;
if &counter =214 then &counter =38;
if &counter =215 then &counter =217;
if &counter =216 then &counter =11;
if &counter =217 then &counter =217;
if &counter =218 then &counter =11;
if &counter =219 then &counter =11;
if &counter =220 then &counter =11;
if &counter =221 then &counter =24;
if &counter =222 then &counter =11;
if &counter =223 then &counter =11;
if &counter =224 then &counter =11;
if &counter =225 then &counter =11;
if &counter =226 then &counter =11;
if &counter =227 then &counter =11;
if &counter =228 then &counter =11;
if &counter =229 then &counter =11;
if &counter =230 then &counter =11;
if &counter =231 then &counter =38;
if &counter =232 then &counter =38;
if &counter =233 then &counter =38;
if &counter =234 then &counter =38;
if &counter =235 then &counter =38;
if &counter =236 then &counter =38;
if &counter =237 then &counter =38;
if &counter =238 then &counter =38;
if &counter =239 then &counter =38;
if &counter =240 then &counter =38;
if &counter =241 then &counter =38;
if &counter =242 then &counter =38;
if &counter =243 then &counter =38;
if &counter =244 then &counter =38;
if &counter =245 then &counter =38;
if &counter =246 then &counter =38;
if &counter =247 then &counter =38;
if &counter =248 then &counter =38;
if &counter =249 then &counter =38;
if &counter =250 then &counter =38;
if &counter =251 then &counter =38;
if &counter =252 then &counter =252;
if &counter =253 then &counter =30;
if &counter =254 then &counter =30;
if &counter =255 then &counter =30;
if &counter =256 then &counter =30;
if &counter =257 then &counter =30;
if &counter =258 then &counter =30;
if &counter =259 then &counter =30;
if &counter =260 then &counter =30;
if &counter =261 then &counter =30;
if &counter =262 then &counter =30;
if &counter =263 then &counter =30;
if &counter =264 then &counter =30;
if &counter =265 then &counter =252;
if &counter =266 then &counter =30;
if &counter =267 then &counter =30;
if &counter =268 then &counter =30;
if &counter =269 then &counter =30;
if &counter =270 then &counter =30;
if &counter =271 then &counter =38;
if &counter =272 then &counter =38;
if &counter =273 then &counter =38;
if &counter =274 then &counter =18;
if &counter =275 then &counter =18;
if &counter =276 then &counter =18;
if &counter =277 then &counter =18;
if &counter =278 then &counter =18;
if &counter =279 then &counter =38;
if &counter =997 then &counter =38;
if &counter =998 then &counter =38;
if &counter =999 then &counter =38;
if &counter =280 then &counter =28;
if &counter =281 then &counter =30;
if &counter =282 then &counter =4;
if &counter =283 then &counter =31;
if &counter =284 then &counter =28;
if &counter =285 then &counter =11;
if &counter =286 then &counter =38;
if &counter =287 then &counter =19;
if &counter =288 then &counter =19;
if &counter =289 then &counter =4;
if &counter =290 then &counter =30;
if &counter =291 then &counter =291;
if &counter =292 then &counter =291;
if &counter =293 then &counter =291;
if &counter =294 then &counter =291;
if &counter =295 then &counter =38;
if &counter =296 then &counter =3;
if &counter =297 then &counter =1;
if &counter =298 then &counter =30;
if &counter =299 then &counter =24;
if &counter =300 then &counter =38;
if &counter =301 then &counter =4;
if &counter =302 then &counter =4;
if &counter =303 then &counter =4;
if &counter =304 then &counter =11;
if &counter =305 then &counter =10;
if &counter =306 then &counter =28;
if &counter =307 then &counter =38;
if &counter =308 then &counter =28;
if &counter =309 then &counter =4;
if &counter =310 then &counter =3;
if &counter =311 then &counter =4;
if &counter =312 then &counter =38;
if &counter =313 then &counter =38;
if &counter =314 then &counter =3;
if &counter =315 then &counter =28;
if &counter =316 then &counter =38;
if &counter =317 then &counter =38;
if &counter =318 then &counter =38;
if &counter =319 then &counter =3;
if &counter =320 then &counter =1;
if &counter =321 then &counter =38;
if &counter =322 then &counter =291;
if &counter =323 then &counter =4;
if &counter =324 then &counter =38;
if &counter =325 then &counter =38;
if &counter =326 then &counter =38;
if &counter =327 then &counter =38;
if &counter =328 then &counter =4;
if &counter =329 then &counter =38;
if &counter =330 then &counter =38;
if &counter =331 then &counter =3;
if &counter =332 then &counter =31;
if &counter =333 then &counter =4;
if &counter =334 then &counter =11;
if &counter =335 then &counter =31;
if &counter =336 then &counter =38;
if &counter =337 then &counter =30;
if &counter =338 then &counter =38;
if &counter =339 then &counter =38;
if &counter =340 then &counter =38;
if &counter =341 then &counter =38;
if &counter =342 then &counter =30;
if &counter =343 then &counter =38;
if &counter =344 then &counter =24;
if &counter =345 then &counter =30;
if &counter =346 then &counter =38;
if &counter =347 then &counter =11;
if &counter =348 then &counter =38;
if &counter =349 then &counter =31;
if &counter =350 then &counter =10;
if &counter =351 then &counter =38;
if &counter =352 then &counter =8;
if &counter =353 then &counter =1;
if &counter =354 then &counter =38;
if &counter =355 then &counter =19;
if &counter =356 then &counter =3;
if &counter =357 then &counter =38;
if &counter =358 then &counter =38;
if &counter =359 then &counter =11;
if &counter =360 then &counter =38;
if &counter =361 then &counter =38;
if &counter =362 then &counter =38;
if &counter =363 then &counter =38;


%end;
run;
%mend;
%q1 (M2_HEARD);
/*for M2_HEARD M@_USED M2_MOst*/
%macro q1 (var);
data v1.Selectvars_rawdata_1;
set v1.Selectvars_rawdata_1;
%do i=1 %to 30;
%let counter=&var._&i;
if &counter =1 then &counter =1;
if &counter =2 then &counter =1;
if &counter =3 then &counter =3;
if &counter =4 then &counter =4;
if &counter =5 then &counter =5;
if &counter =6 then &counter =31;
if &counter =7 then &counter =31;
if &counter =8 then &counter =8;
if &counter =9 then &counter =31;
if &counter =10 then &counter =10;
if &counter =11 then &counter =11;
if &counter =12 then &counter =11;
if &counter =13 then &counter =11;
if &counter =14 then &counter =11;
if &counter =15 then &counter =11;
if &counter =16 then &counter =30;
if &counter =17 then &counter =30;
if &counter =18 then &counter =18;
if &counter =19 then &counter =19;
if &counter =20 then &counter =19;
if &counter =21 then &counter =19;
if &counter =22 then &counter =19;
if &counter =23 then &counter =19;
if &counter =24 then &counter =24;
if &counter =25 then &counter =24;
if &counter =26 then &counter =24;
if &counter =27 then &counter =24;
if &counter =28 then &counter =28;
if &counter =29 then &counter =18;
if &counter =30 then &counter =30;
if &counter =31 then &counter =31;
if &counter =32 then &counter =38;
if &counter =33 then &counter =38;
if &counter =34 then &counter =38;
if &counter =35 then &counter =38;
if &counter =36 then &counter =38;
if &counter =37 then &counter =38;
if &counter =38 then &counter =38;
if &counter =39 then &counter =38;
if &counter =40 then &counter =38;
if &counter =41 then &counter =38;
if &counter =42 then &counter =38;
if &counter =43 then &counter =38;
if &counter =44 then &counter =38;
if &counter =45 then &counter =38;
if &counter =46 then &counter =38;
if &counter =47 then &counter =38;
if &counter =48 then &counter =38;
if &counter =49 then &counter =38;
if &counter =50 then &counter =38;
if &counter =51 then &counter =38;
if &counter =52 then &counter =38;
if &counter =53 then &counter =38;
if &counter =54 then &counter =38;
if &counter =55 then &counter =38;
if &counter =56 then &counter =38;
if &counter =57 then &counter =38;
if &counter =58 then &counter =38;
if &counter =59 then &counter =38;
if &counter =60 then &counter =38;
if &counter =61 then &counter =38;
if &counter =62 then &counter =38;
if &counter =63 then &counter =38;
if &counter =64 then &counter =24;
if &counter =65 then &counter =24;
if &counter =66 then &counter =38;
if &counter =67 then &counter =38;
if &counter =68 then &counter =24;
if &counter =69 then &counter =24;
if &counter =70 then &counter =24;
if &counter =71 then &counter =24;
if &counter =72 then &counter =24;
if &counter =73 then &counter =24;
if &counter =74 then &counter =24;
if &counter =75 then &counter =38;
if &counter =76 then &counter =38;
if &counter =77 then &counter =1;
if &counter =78 then &counter =1;
if &counter =79 then &counter =1;
if &counter =80 then &counter =1;
if &counter =81 then &counter =38;
if &counter =82 then &counter =1;
if &counter =83 then &counter =1;
if &counter =84 then &counter =1;
if &counter =85 then &counter =1;
if &counter =86 then &counter =1;
if &counter =87 then &counter =1;
if &counter =88 then &counter =38;
if &counter =89 then &counter =1;
if &counter =90 then &counter =1;
if &counter =91 then &counter =3;
if &counter =92 then &counter =38;
if &counter =93 then &counter =3;
if &counter =94 then &counter =3;
if &counter =95 then &counter =3;
if &counter =96 then &counter =3;
if &counter =97 then &counter =3;
if &counter =98 then &counter =3;
if &counter =99 then &counter =3;
if &counter =100 then &counter =3;
if &counter =101 then &counter =3;
if &counter =102 then &counter =3;
if &counter =103 then &counter =3;
if &counter =104 then &counter =38;
if &counter =105 then &counter =38;
if &counter =106 then &counter =38;
if &counter =107 then &counter =38;
if &counter =108 then &counter =108;
if &counter =109 then &counter =38;
if &counter =110 then &counter =38;
if &counter =111 then &counter =38;
if &counter =112 then &counter =38;
if &counter =113 then &counter =38;
if &counter =114 then &counter =38;
if &counter =115 then &counter =38;
if &counter =116 then &counter =38;
if &counter =117 then &counter =38;
if &counter =118 then &counter =38;
if &counter =119 then &counter =19;
if &counter =120 then &counter =31;
if &counter =121 then &counter =38;
if &counter =122 then &counter =38;
if &counter =123 then &counter =38;
if &counter =124 then &counter =38;
if &counter =125 then &counter =38;
if &counter =126 then &counter =38;
if &counter =127 then &counter =38;
if &counter =128 then &counter =38;
if &counter =129 then &counter =38;
if &counter =130 then &counter =38;
if &counter =131 then &counter =38;
if &counter =132 then &counter =38;
if &counter =133 then &counter =38;
if &counter =134 then &counter =10;
if &counter =135 then &counter =10;
if &counter =136 then &counter =10;
if &counter =137 then &counter =10;
if &counter =138 then &counter =10;
if &counter =139 then &counter =10;
if &counter =140 then &counter =10;
if &counter =141 then &counter =10;
if &counter =142 then &counter =10;
if &counter =143 then &counter =10;
if &counter =144 then &counter =10;
if &counter =145 then &counter =10;
if &counter =146 then &counter =10;
if &counter =147 then &counter =10;
if &counter =148 then &counter =10;
if &counter =149 then &counter =10;
if &counter =150 then &counter =38;
if &counter =151 then &counter =38;
if &counter =152 then &counter =38;
if &counter =153 then &counter =38;
if &counter =154 then &counter =38;
if &counter =155 then &counter =38;
if &counter =156 then &counter =38;
if &counter =157 then &counter =38;
if &counter =158 then &counter =38;
if &counter =159 then &counter =38;
if &counter =160 then &counter =38;
if &counter =161 then &counter =38;
if &counter =162 then &counter =38;
if &counter =163 then &counter =38;
if &counter =164 then &counter =38;
if &counter =165 then &counter =38;
if &counter =166 then &counter =38;
if &counter =167 then &counter =38;
if &counter =168 then &counter =38;
if &counter =169 then &counter =38;
if &counter =170 then &counter =28;
if &counter =171 then &counter =28;
if &counter =172 then &counter =28;
if &counter =173 then &counter =38;
if &counter =174 then &counter =38;
if &counter =175 then &counter =38;
if &counter =176 then &counter =38;
if &counter =177 then &counter =38;
if &counter =178 then &counter =38;
if &counter =179 then &counter =38;
if &counter =180 then &counter =38;
if &counter =181 then &counter =38;
if &counter =182 then &counter =38;
if &counter =183 then &counter =38;
if &counter =184 then &counter =38;
if &counter =185 then &counter =38;
if &counter =186 then &counter =38;
if &counter =187 then &counter =4;
if &counter =188 then &counter =10;
if &counter =189 then &counter =30;
if &counter =190 then &counter =38;
if &counter =191 then &counter =38;
if &counter =192 then &counter =38;
if &counter =193 then &counter =38;
if &counter =194 then &counter =38;
if &counter =195 then &counter =38;
if &counter =196 then &counter =38;
if &counter =197 then &counter =38;
if &counter =198 then &counter =38;
if &counter =199 then &counter =38;
if &counter =200 then &counter =38;
if &counter =201 then &counter =38;
if &counter =202 then &counter =38;
if &counter =203 then &counter =38;
if &counter =204 then &counter =38;
if &counter =205 then &counter =38;
if &counter =206 then &counter =38;
if &counter =207 then &counter =38;
if &counter =208 then &counter =38;
if &counter =209 then &counter =38;
if &counter =210 then &counter =38;
if &counter =211 then &counter =38;
if &counter =212 then &counter =38;
if &counter =213 then &counter =38;
if &counter =214 then &counter =38;
if &counter =215 then &counter =217;
if &counter =216 then &counter =11;
if &counter =217 then &counter =217;
if &counter =218 then &counter =11;
if &counter =219 then &counter =11;
if &counter =220 then &counter =11;
if &counter =221 then &counter =24;
if &counter =222 then &counter =11;
if &counter =223 then &counter =11;
if &counter =224 then &counter =11;
if &counter =225 then &counter =11;
if &counter =226 then &counter =11;
if &counter =227 then &counter =11;
if &counter =228 then &counter =11;
if &counter =229 then &counter =11;
if &counter =230 then &counter =11;
if &counter =231 then &counter =38;
if &counter =232 then &counter =38;
if &counter =233 then &counter =38;
if &counter =234 then &counter =38;
if &counter =235 then &counter =38;
if &counter =236 then &counter =38;
if &counter =237 then &counter =38;
if &counter =238 then &counter =38;
if &counter =239 then &counter =38;
if &counter =240 then &counter =38;
if &counter =241 then &counter =38;
if &counter =242 then &counter =38;
if &counter =243 then &counter =38;
if &counter =244 then &counter =38;
if &counter =245 then &counter =38;
if &counter =246 then &counter =38;
if &counter =247 then &counter =38;
if &counter =248 then &counter =38;
if &counter =249 then &counter =38;
if &counter =250 then &counter =38;
if &counter =251 then &counter =38;
if &counter =252 then &counter =252;
if &counter =253 then &counter =30;
if &counter =254 then &counter =30;
if &counter =255 then &counter =30;
if &counter =256 then &counter =30;
if &counter =257 then &counter =30;
if &counter =258 then &counter =30;
if &counter =259 then &counter =30;
if &counter =260 then &counter =30;
if &counter =261 then &counter =30;
if &counter =262 then &counter =30;
if &counter =263 then &counter =30;
if &counter =264 then &counter =30;
if &counter =265 then &counter =252;
if &counter =266 then &counter =30;
if &counter =267 then &counter =30;
if &counter =268 then &counter =30;
if &counter =269 then &counter =30;
if &counter =270 then &counter =30;
if &counter =271 then &counter =38;
if &counter =272 then &counter =38;
if &counter =273 then &counter =38;
if &counter =274 then &counter =18;
if &counter =275 then &counter =18;
if &counter =276 then &counter =18;
if &counter =277 then &counter =18;
if &counter =278 then &counter =18;
if &counter =279 then &counter =38;
if &counter =997 then &counter =38;
if &counter =998 then &counter =38;
if &counter =999 then &counter =38;
if &counter =280 then &counter =28;
if &counter =281 then &counter =30;
if &counter =282 then &counter =4;
if &counter =283 then &counter =31;
if &counter =284 then &counter =28;
if &counter =285 then &counter =11;
if &counter =286 then &counter =38;
if &counter =287 then &counter =19;
if &counter =288 then &counter =19;
if &counter =289 then &counter =4;
if &counter =290 then &counter =30;
if &counter =291 then &counter =291;
if &counter =292 then &counter =291;
if &counter =293 then &counter =291;
if &counter =294 then &counter =291;
if &counter =295 then &counter =38;
if &counter =296 then &counter =3;
if &counter =297 then &counter =1;
if &counter =298 then &counter =30;
if &counter =299 then &counter =24;
if &counter =300 then &counter =38;
if &counter =301 then &counter =4;
if &counter =302 then &counter =4;
if &counter =303 then &counter =4;
if &counter =304 then &counter =11;
if &counter =305 then &counter =10;
if &counter =306 then &counter =28;
if &counter =307 then &counter =38;
if &counter =308 then &counter =28;
if &counter =309 then &counter =4;
if &counter =310 then &counter =3;
if &counter =311 then &counter =4;
if &counter =312 then &counter =38;
if &counter =313 then &counter =38;
if &counter =314 then &counter =3;
if &counter =315 then &counter =28;
if &counter =316 then &counter =38;
if &counter =317 then &counter =38;
if &counter =318 then &counter =38;
if &counter =319 then &counter =3;
if &counter =320 then &counter =1;
if &counter =321 then &counter =38;
if &counter =322 then &counter =291;
if &counter =323 then &counter =4;
if &counter =324 then &counter =38;
if &counter =325 then &counter =38;
if &counter =326 then &counter =38;
if &counter =327 then &counter =38;
if &counter =328 then &counter =4;
if &counter =329 then &counter =38;
if &counter =330 then &counter =38;
if &counter =331 then &counter =3;
if &counter =332 then &counter =31;
if &counter =333 then &counter =4;
if &counter =334 then &counter =11;
if &counter =335 then &counter =31;
if &counter =336 then &counter =38;
if &counter =337 then &counter =30;
if &counter =338 then &counter =38;
if &counter =339 then &counter =38;
if &counter =340 then &counter =38;
if &counter =341 then &counter =38;
if &counter =342 then &counter =30;
if &counter =343 then &counter =38;
if &counter =344 then &counter =24;
if &counter =345 then &counter =30;
if &counter =346 then &counter =38;
if &counter =347 then &counter =11;
if &counter =348 then &counter =38;
if &counter =349 then &counter =31;
if &counter =350 then &counter =10;
if &counter =351 then &counter =38;
if &counter =352 then &counter =8;
if &counter =353 then &counter =1;
if &counter =354 then &counter =38;
if &counter =355 then &counter =19;
if &counter =356 then &counter =3;
if &counter =357 then &counter =38;
if &counter =358 then &counter =38;
if &counter =359 then &counter =11;
if &counter =360 then &counter =38;
if &counter =361 then &counter =38;
if &counter =362 then &counter =38;
if &counter =363 then &counter =38;


%end;
run;
%mend;
%q1 (M2_USED);
/*for M2_HEARD M@_USED M2_MOst*/
%macro q1 (var);
data v1.Selectvars_rawdata_1;
set v1.Selectvars_rawdata_1;
%do i=1 %to 10;
%let counter=&var._&i;
if &counter =1 then &counter =1;
if &counter =2 then &counter =1;
if &counter =3 then &counter =3;
if &counter =4 then &counter =4;
if &counter =5 then &counter =5;
if &counter =6 then &counter =31;
if &counter =7 then &counter =31;
if &counter =8 then &counter =8;
if &counter =9 then &counter =31;
if &counter =10 then &counter =10;
if &counter =11 then &counter =11;
if &counter =12 then &counter =11;
if &counter =13 then &counter =11;
if &counter =14 then &counter =11;
if &counter =15 then &counter =11;
if &counter =16 then &counter =30;
if &counter =17 then &counter =30;
if &counter =18 then &counter =18;
if &counter =19 then &counter =19;
if &counter =20 then &counter =19;
if &counter =21 then &counter =19;
if &counter =22 then &counter =19;
if &counter =23 then &counter =19;
if &counter =24 then &counter =24;
if &counter =25 then &counter =24;
if &counter =26 then &counter =24;
if &counter =27 then &counter =24;
if &counter =28 then &counter =28;
if &counter =29 then &counter =18;
if &counter =30 then &counter =30;
if &counter =31 then &counter =31;
if &counter =32 then &counter =38;
if &counter =33 then &counter =38;
if &counter =34 then &counter =38;
if &counter =35 then &counter =38;
if &counter =36 then &counter =38;
if &counter =37 then &counter =38;
if &counter =38 then &counter =38;
if &counter =39 then &counter =38;
if &counter =40 then &counter =38;
if &counter =41 then &counter =38;
if &counter =42 then &counter =38;
if &counter =43 then &counter =38;
if &counter =44 then &counter =38;
if &counter =45 then &counter =38;
if &counter =46 then &counter =38;
if &counter =47 then &counter =38;
if &counter =48 then &counter =38;
if &counter =49 then &counter =38;
if &counter =50 then &counter =38;
if &counter =51 then &counter =38;
if &counter =52 then &counter =38;
if &counter =53 then &counter =38;
if &counter =54 then &counter =38;
if &counter =55 then &counter =38;
if &counter =56 then &counter =38;
if &counter =57 then &counter =38;
if &counter =58 then &counter =38;
if &counter =59 then &counter =38;
if &counter =60 then &counter =38;
if &counter =61 then &counter =38;
if &counter =62 then &counter =38;
if &counter =63 then &counter =38;
if &counter =64 then &counter =24;
if &counter =65 then &counter =24;
if &counter =66 then &counter =38;
if &counter =67 then &counter =38;
if &counter =68 then &counter =24;
if &counter =69 then &counter =24;
if &counter =70 then &counter =24;
if &counter =71 then &counter =24;
if &counter =72 then &counter =24;
if &counter =73 then &counter =24;
if &counter =74 then &counter =24;
if &counter =75 then &counter =38;
if &counter =76 then &counter =38;
if &counter =77 then &counter =1;
if &counter =78 then &counter =1;
if &counter =79 then &counter =1;
if &counter =80 then &counter =1;
if &counter =81 then &counter =38;
if &counter =82 then &counter =1;
if &counter =83 then &counter =1;
if &counter =84 then &counter =1;
if &counter =85 then &counter =1;
if &counter =86 then &counter =1;
if &counter =87 then &counter =1;
if &counter =88 then &counter =38;
if &counter =89 then &counter =1;
if &counter =90 then &counter =1;
if &counter =91 then &counter =3;
if &counter =92 then &counter =38;
if &counter =93 then &counter =3;
if &counter =94 then &counter =3;
if &counter =95 then &counter =3;
if &counter =96 then &counter =3;
if &counter =97 then &counter =3;
if &counter =98 then &counter =3;
if &counter =99 then &counter =3;
if &counter =100 then &counter =3;
if &counter =101 then &counter =3;
if &counter =102 then &counter =3;
if &counter =103 then &counter =3;
if &counter =104 then &counter =38;
if &counter =105 then &counter =38;
if &counter =106 then &counter =38;
if &counter =107 then &counter =38;
if &counter =108 then &counter =108;
if &counter =109 then &counter =38;
if &counter =110 then &counter =38;
if &counter =111 then &counter =38;
if &counter =112 then &counter =38;
if &counter =113 then &counter =38;
if &counter =114 then &counter =38;
if &counter =115 then &counter =38;
if &counter =116 then &counter =38;
if &counter =117 then &counter =38;
if &counter =118 then &counter =38;
if &counter =119 then &counter =19;
if &counter =120 then &counter =31;
if &counter =121 then &counter =38;
if &counter =122 then &counter =38;
if &counter =123 then &counter =38;
if &counter =124 then &counter =38;
if &counter =125 then &counter =38;
if &counter =126 then &counter =38;
if &counter =127 then &counter =38;
if &counter =128 then &counter =38;
if &counter =129 then &counter =38;
if &counter =130 then &counter =38;
if &counter =131 then &counter =38;
if &counter =132 then &counter =38;
if &counter =133 then &counter =38;
if &counter =134 then &counter =10;
if &counter =135 then &counter =10;
if &counter =136 then &counter =10;
if &counter =137 then &counter =10;
if &counter =138 then &counter =10;
if &counter =139 then &counter =10;
if &counter =140 then &counter =10;
if &counter =141 then &counter =10;
if &counter =142 then &counter =10;
if &counter =143 then &counter =10;
if &counter =144 then &counter =10;
if &counter =145 then &counter =10;
if &counter =146 then &counter =10;
if &counter =147 then &counter =10;
if &counter =148 then &counter =10;
if &counter =149 then &counter =10;
if &counter =150 then &counter =38;
if &counter =151 then &counter =38;
if &counter =152 then &counter =38;
if &counter =153 then &counter =38;
if &counter =154 then &counter =38;
if &counter =155 then &counter =38;
if &counter =156 then &counter =38;
if &counter =157 then &counter =38;
if &counter =158 then &counter =38;
if &counter =159 then &counter =38;
if &counter =160 then &counter =38;
if &counter =161 then &counter =38;
if &counter =162 then &counter =38;
if &counter =163 then &counter =38;
if &counter =164 then &counter =38;
if &counter =165 then &counter =38;
if &counter =166 then &counter =38;
if &counter =167 then &counter =38;
if &counter =168 then &counter =38;
if &counter =169 then &counter =38;
if &counter =170 then &counter =28;
if &counter =171 then &counter =28;
if &counter =172 then &counter =28;
if &counter =173 then &counter =38;
if &counter =174 then &counter =38;
if &counter =175 then &counter =38;
if &counter =176 then &counter =38;
if &counter =177 then &counter =38;
if &counter =178 then &counter =38;
if &counter =179 then &counter =38;
if &counter =180 then &counter =38;
if &counter =181 then &counter =38;
if &counter =182 then &counter =38;
if &counter =183 then &counter =38;
if &counter =184 then &counter =38;
if &counter =185 then &counter =38;
if &counter =186 then &counter =38;
if &counter =187 then &counter =4;
if &counter =188 then &counter =10;
if &counter =189 then &counter =30;
if &counter =190 then &counter =38;
if &counter =191 then &counter =38;
if &counter =192 then &counter =38;
if &counter =193 then &counter =38;
if &counter =194 then &counter =38;
if &counter =195 then &counter =38;
if &counter =196 then &counter =38;
if &counter =197 then &counter =38;
if &counter =198 then &counter =38;
if &counter =199 then &counter =38;
if &counter =200 then &counter =38;
if &counter =201 then &counter =38;
if &counter =202 then &counter =38;
if &counter =203 then &counter =38;
if &counter =204 then &counter =38;
if &counter =205 then &counter =38;
if &counter =206 then &counter =38;
if &counter =207 then &counter =38;
if &counter =208 then &counter =38;
if &counter =209 then &counter =38;
if &counter =210 then &counter =38;
if &counter =211 then &counter =38;
if &counter =212 then &counter =38;
if &counter =213 then &counter =38;
if &counter =214 then &counter =38;
if &counter =215 then &counter =217;
if &counter =216 then &counter =11;
if &counter =217 then &counter =217;
if &counter =218 then &counter =11;
if &counter =219 then &counter =11;
if &counter =220 then &counter =11;
if &counter =221 then &counter =24;
if &counter =222 then &counter =11;
if &counter =223 then &counter =11;
if &counter =224 then &counter =11;
if &counter =225 then &counter =11;
if &counter =226 then &counter =11;
if &counter =227 then &counter =11;
if &counter =228 then &counter =11;
if &counter =229 then &counter =11;
if &counter =230 then &counter =11;
if &counter =231 then &counter =38;
if &counter =232 then &counter =38;
if &counter =233 then &counter =38;
if &counter =234 then &counter =38;
if &counter =235 then &counter =38;
if &counter =236 then &counter =38;
if &counter =237 then &counter =38;
if &counter =238 then &counter =38;
if &counter =239 then &counter =38;
if &counter =240 then &counter =38;
if &counter =241 then &counter =38;
if &counter =242 then &counter =38;
if &counter =243 then &counter =38;
if &counter =244 then &counter =38;
if &counter =245 then &counter =38;
if &counter =246 then &counter =38;
if &counter =247 then &counter =38;
if &counter =248 then &counter =38;
if &counter =249 then &counter =38;
if &counter =250 then &counter =38;
if &counter =251 then &counter =38;
if &counter =252 then &counter =252;
if &counter =253 then &counter =30;
if &counter =254 then &counter =30;
if &counter =255 then &counter =30;
if &counter =256 then &counter =30;
if &counter =257 then &counter =30;
if &counter =258 then &counter =30;
if &counter =259 then &counter =30;
if &counter =260 then &counter =30;
if &counter =261 then &counter =30;
if &counter =262 then &counter =30;
if &counter =263 then &counter =30;
if &counter =264 then &counter =30;
if &counter =265 then &counter =252;
if &counter =266 then &counter =30;
if &counter =267 then &counter =30;
if &counter =268 then &counter =30;
if &counter =269 then &counter =30;
if &counter =270 then &counter =30;
if &counter =271 then &counter =38;
if &counter =272 then &counter =38;
if &counter =273 then &counter =38;
if &counter =274 then &counter =18;
if &counter =275 then &counter =18;
if &counter =276 then &counter =18;
if &counter =277 then &counter =18;
if &counter =278 then &counter =18;
if &counter =279 then &counter =38;
if &counter =997 then &counter =38;
if &counter =998 then &counter =38;
if &counter =999 then &counter =38;
if &counter =280 then &counter =28;
if &counter =281 then &counter =30;
if &counter =282 then &counter =4;
if &counter =283 then &counter =31;
if &counter =284 then &counter =28;
if &counter =285 then &counter =11;
if &counter =286 then &counter =38;
if &counter =287 then &counter =19;
if &counter =288 then &counter =19;
if &counter =289 then &counter =4;
if &counter =290 then &counter =30;
if &counter =291 then &counter =291;
if &counter =292 then &counter =291;
if &counter =293 then &counter =291;
if &counter =294 then &counter =291;
if &counter =295 then &counter =38;
if &counter =296 then &counter =3;
if &counter =297 then &counter =1;
if &counter =298 then &counter =30;
if &counter =299 then &counter =24;
if &counter =300 then &counter =38;
if &counter =301 then &counter =4;
if &counter =302 then &counter =4;
if &counter =303 then &counter =4;
if &counter =304 then &counter =11;
if &counter =305 then &counter =10;
if &counter =306 then &counter =28;
if &counter =307 then &counter =38;
if &counter =308 then &counter =28;
if &counter =309 then &counter =4;
if &counter =310 then &counter =3;
if &counter =311 then &counter =4;
if &counter =312 then &counter =38;
if &counter =313 then &counter =38;
if &counter =314 then &counter =3;
if &counter =315 then &counter =28;
if &counter =316 then &counter =38;
if &counter =317 then &counter =38;
if &counter =318 then &counter =38;
if &counter =319 then &counter =3;
if &counter =320 then &counter =1;
if &counter =321 then &counter =38;
if &counter =322 then &counter =291;
if &counter =323 then &counter =4;
if &counter =324 then &counter =38;
if &counter =325 then &counter =38;
if &counter =326 then &counter =38;
if &counter =327 then &counter =38;
if &counter =328 then &counter =4;
if &counter =329 then &counter =38;
if &counter =330 then &counter =38;
if &counter =331 then &counter =3;
if &counter =332 then &counter =31;
if &counter =333 then &counter =4;
if &counter =334 then &counter =11;
if &counter =335 then &counter =31;
if &counter =336 then &counter =38;
if &counter =337 then &counter =30;
if &counter =338 then &counter =38;
if &counter =339 then &counter =38;
if &counter =340 then &counter =38;
if &counter =341 then &counter =38;
if &counter =342 then &counter =30;
if &counter =343 then &counter =38;
if &counter =344 then &counter =24;
if &counter =345 then &counter =30;
if &counter =346 then &counter =38;
if &counter =347 then &counter =11;
if &counter =348 then &counter =38;
if &counter =349 then &counter =31;
if &counter =350 then &counter =10;
if &counter =351 then &counter =38;
if &counter =352 then &counter =8;
if &counter =353 then &counter =1;
if &counter =354 then &counter =38;
if &counter =355 then &counter =19;
if &counter =356 then &counter =3;
if &counter =357 then &counter =38;
if &counter =358 then &counter =38;
if &counter =359 then &counter =11;
if &counter =360 then &counter =38;
if &counter =361 then &counter =38;
if &counter =362 then &counter =38;
if &counter =363 then &counter =38;


%end;
run;
%mend;
%q1 (M2HEARD);

data v1.Selectvars_rawdata_1;
set v1.Selectvars_rawdata_1;
if M2_MOST =1 then M2_MOST =1;
if M2_MOST =2 then M2_MOST =1;
if M2_MOST =3 then M2_MOST =3;
if M2_MOST =4 then M2_MOST =4;
if M2_MOST =5 then M2_MOST =5;
if M2_MOST =6 then M2_MOST =31;
if M2_MOST =7 then M2_MOST =31;
if M2_MOST =8 then M2_MOST =8;
if M2_MOST =9 then M2_MOST =31;
if M2_MOST =10 then M2_MOST =10;
if M2_MOST =11 then M2_MOST =11;
if M2_MOST =12 then M2_MOST =11;
if M2_MOST =13 then M2_MOST =11;
if M2_MOST =14 then M2_MOST =11;
if M2_MOST =15 then M2_MOST =11;
if M2_MOST =16 then M2_MOST =30;
if M2_MOST =17 then M2_MOST =30;
if M2_MOST =18 then M2_MOST =18;
if M2_MOST =19 then M2_MOST =19;
if M2_MOST =20 then M2_MOST =19;
if M2_MOST =21 then M2_MOST =19;
if M2_MOST =22 then M2_MOST =19;
if M2_MOST =23 then M2_MOST =19;
if M2_MOST =24 then M2_MOST =24;
if M2_MOST =25 then M2_MOST =24;
if M2_MOST =26 then M2_MOST =24;
if M2_MOST =27 then M2_MOST =24;
if M2_MOST =28 then M2_MOST =28;
if M2_MOST =29 then M2_MOST =18;
if M2_MOST =30 then M2_MOST =30;
if M2_MOST =31 then M2_MOST =31;
if M2_MOST =32 then M2_MOST =38;
if M2_MOST =33 then M2_MOST =38;
if M2_MOST =34 then M2_MOST =38;
if M2_MOST =35 then M2_MOST =38;
if M2_MOST =36 then M2_MOST =38;
if M2_MOST =37 then M2_MOST =38;
if M2_MOST =38 then M2_MOST =38;
if M2_MOST =39 then M2_MOST =38;
if M2_MOST =40 then M2_MOST =38;
if M2_MOST =41 then M2_MOST =38;
if M2_MOST =42 then M2_MOST =38;
if M2_MOST =43 then M2_MOST =38;
if M2_MOST =44 then M2_MOST =38;
if M2_MOST =45 then M2_MOST =38;
if M2_MOST =46 then M2_MOST =38;
if M2_MOST =47 then M2_MOST =38;
if M2_MOST =48 then M2_MOST =38;
if M2_MOST =49 then M2_MOST =38;
if M2_MOST =50 then M2_MOST =38;
if M2_MOST =51 then M2_MOST =38;
if M2_MOST =52 then M2_MOST =38;
if M2_MOST =53 then M2_MOST =38;
if M2_MOST =54 then M2_MOST =38;
if M2_MOST =55 then M2_MOST =38;
if M2_MOST =56 then M2_MOST =38;
if M2_MOST =57 then M2_MOST =38;
if M2_MOST =58 then M2_MOST =38;
if M2_MOST =59 then M2_MOST =38;
if M2_MOST =60 then M2_MOST =38;
if M2_MOST =61 then M2_MOST =38;
if M2_MOST =62 then M2_MOST =38;
if M2_MOST =63 then M2_MOST =38;
if M2_MOST =64 then M2_MOST =24;
if M2_MOST =65 then M2_MOST =24;
if M2_MOST =66 then M2_MOST =38;
if M2_MOST =67 then M2_MOST =38;
if M2_MOST =68 then M2_MOST =24;
if M2_MOST =69 then M2_MOST =24;
if M2_MOST =70 then M2_MOST =24;
if M2_MOST =71 then M2_MOST =24;
if M2_MOST =72 then M2_MOST =24;
if M2_MOST =73 then M2_MOST =24;
if M2_MOST =74 then M2_MOST =24;
if M2_MOST =75 then M2_MOST =38;
if M2_MOST =76 then M2_MOST =38;
if M2_MOST =77 then M2_MOST =1;
if M2_MOST =78 then M2_MOST =1;
if M2_MOST =79 then M2_MOST =1;
if M2_MOST =80 then M2_MOST =1;
if M2_MOST =81 then M2_MOST =38;
if M2_MOST =82 then M2_MOST =1;
if M2_MOST =83 then M2_MOST =1;
if M2_MOST =84 then M2_MOST =1;
if M2_MOST =85 then M2_MOST =1;
if M2_MOST =86 then M2_MOST =1;
if M2_MOST =87 then M2_MOST =1;
if M2_MOST =88 then M2_MOST =38;
if M2_MOST =89 then M2_MOST =1;
if M2_MOST =90 then M2_MOST =1;
if M2_MOST =91 then M2_MOST =3;
if M2_MOST =92 then M2_MOST =38;
if M2_MOST =93 then M2_MOST =3;
if M2_MOST =94 then M2_MOST =3;
if M2_MOST =95 then M2_MOST =3;
if M2_MOST =96 then M2_MOST =3;
if M2_MOST =97 then M2_MOST =3;
if M2_MOST =98 then M2_MOST =3;
if M2_MOST =99 then M2_MOST =3;
if M2_MOST =100 then M2_MOST =3;
if M2_MOST =101 then M2_MOST =3;
if M2_MOST =102 then M2_MOST =3;
if M2_MOST =103 then M2_MOST =3;
if M2_MOST =104 then M2_MOST =38;
if M2_MOST =105 then M2_MOST =38;
if M2_MOST =106 then M2_MOST =38;
if M2_MOST =107 then M2_MOST =38;
if M2_MOST =108 then M2_MOST =108;
if M2_MOST =109 then M2_MOST =38;
if M2_MOST =110 then M2_MOST =38;
if M2_MOST =111 then M2_MOST =38;
if M2_MOST =112 then M2_MOST =38;
if M2_MOST =113 then M2_MOST =38;
if M2_MOST =114 then M2_MOST =38;
if M2_MOST =115 then M2_MOST =38;
if M2_MOST =116 then M2_MOST =38;
if M2_MOST =117 then M2_MOST =38;
if M2_MOST =118 then M2_MOST =38;
if M2_MOST =119 then M2_MOST =19;
if M2_MOST =120 then M2_MOST =31;
if M2_MOST =121 then M2_MOST =38;
if M2_MOST =122 then M2_MOST =38;
if M2_MOST =123 then M2_MOST =38;
if M2_MOST =124 then M2_MOST =38;
if M2_MOST =125 then M2_MOST =38;
if M2_MOST =126 then M2_MOST =38;
if M2_MOST =127 then M2_MOST =38;
if M2_MOST =128 then M2_MOST =38;
if M2_MOST =129 then M2_MOST =38;
if M2_MOST =130 then M2_MOST =38;
if M2_MOST =131 then M2_MOST =38;
if M2_MOST =132 then M2_MOST =38;
if M2_MOST =133 then M2_MOST =38;
if M2_MOST =134 then M2_MOST =10;
if M2_MOST =135 then M2_MOST =10;
if M2_MOST =136 then M2_MOST =10;
if M2_MOST =137 then M2_MOST =10;
if M2_MOST =138 then M2_MOST =10;
if M2_MOST =139 then M2_MOST =10;
if M2_MOST =140 then M2_MOST =10;
if M2_MOST =141 then M2_MOST =10;
if M2_MOST =142 then M2_MOST =10;
if M2_MOST =143 then M2_MOST =10;
if M2_MOST =144 then M2_MOST =10;
if M2_MOST =145 then M2_MOST =10;
if M2_MOST =146 then M2_MOST =10;
if M2_MOST =147 then M2_MOST =10;
if M2_MOST =148 then M2_MOST =10;
if M2_MOST =149 then M2_MOST =10;
if M2_MOST =150 then M2_MOST =38;
if M2_MOST =151 then M2_MOST =38;
if M2_MOST =152 then M2_MOST =38;
if M2_MOST =153 then M2_MOST =38;
if M2_MOST =154 then M2_MOST =38;
if M2_MOST =155 then M2_MOST =38;
if M2_MOST =156 then M2_MOST =38;
if M2_MOST =157 then M2_MOST =38;
if M2_MOST =158 then M2_MOST =38;
if M2_MOST =159 then M2_MOST =38;
if M2_MOST =160 then M2_MOST =38;
if M2_MOST =161 then M2_MOST =38;
if M2_MOST =162 then M2_MOST =38;
if M2_MOST =163 then M2_MOST =38;
if M2_MOST =164 then M2_MOST =38;
if M2_MOST =165 then M2_MOST =38;
if M2_MOST =166 then M2_MOST =38;
if M2_MOST =167 then M2_MOST =38;
if M2_MOST =168 then M2_MOST =38;
if M2_MOST =169 then M2_MOST =38;
if M2_MOST =170 then M2_MOST =28;
if M2_MOST =171 then M2_MOST =28;
if M2_MOST =172 then M2_MOST =28;
if M2_MOST =173 then M2_MOST =38;
if M2_MOST =174 then M2_MOST =38;
if M2_MOST =175 then M2_MOST =38;
if M2_MOST =176 then M2_MOST =38;
if M2_MOST =177 then M2_MOST =38;
if M2_MOST =178 then M2_MOST =38;
if M2_MOST =179 then M2_MOST =38;
if M2_MOST =180 then M2_MOST =38;
if M2_MOST =181 then M2_MOST =38;
if M2_MOST =182 then M2_MOST =38;
if M2_MOST =183 then M2_MOST =38;
if M2_MOST =184 then M2_MOST =38;
if M2_MOST =185 then M2_MOST =38;
if M2_MOST =186 then M2_MOST =38;
if M2_MOST =187 then M2_MOST =4;
if M2_MOST =188 then M2_MOST =10;
if M2_MOST =189 then M2_MOST =30;
if M2_MOST =190 then M2_MOST =38;
if M2_MOST =191 then M2_MOST =38;
if M2_MOST =192 then M2_MOST =38;
if M2_MOST =193 then M2_MOST =38;
if M2_MOST =194 then M2_MOST =38;
if M2_MOST =195 then M2_MOST =38;
if M2_MOST =196 then M2_MOST =38;
if M2_MOST =197 then M2_MOST =38;
if M2_MOST =198 then M2_MOST =38;
if M2_MOST =199 then M2_MOST =38;
if M2_MOST =200 then M2_MOST =38;
if M2_MOST =201 then M2_MOST =38;
if M2_MOST =202 then M2_MOST =38;
if M2_MOST =203 then M2_MOST =38;
if M2_MOST =204 then M2_MOST =38;
if M2_MOST =205 then M2_MOST =38;
if M2_MOST =206 then M2_MOST =38;
if M2_MOST =207 then M2_MOST =38;
if M2_MOST =208 then M2_MOST =38;
if M2_MOST =209 then M2_MOST =38;
if M2_MOST =210 then M2_MOST =38;
if M2_MOST =211 then M2_MOST =38;
if M2_MOST =212 then M2_MOST =38;
if M2_MOST =213 then M2_MOST =38;
if M2_MOST =214 then M2_MOST =38;
if M2_MOST =215 then M2_MOST =217;
if M2_MOST =216 then M2_MOST =11;
if M2_MOST =217 then M2_MOST =217;
if M2_MOST =218 then M2_MOST =11;
if M2_MOST =219 then M2_MOST =11;
if M2_MOST =220 then M2_MOST =11;
if M2_MOST =221 then M2_MOST =24;
if M2_MOST =222 then M2_MOST =11;
if M2_MOST =223 then M2_MOST =11;
if M2_MOST =224 then M2_MOST =11;
if M2_MOST =225 then M2_MOST =11;
if M2_MOST =226 then M2_MOST =11;
if M2_MOST =227 then M2_MOST =11;
if M2_MOST =228 then M2_MOST =11;
if M2_MOST =229 then M2_MOST =11;
if M2_MOST =230 then M2_MOST =11;
if M2_MOST =231 then M2_MOST =38;
if M2_MOST =232 then M2_MOST =38;
if M2_MOST =233 then M2_MOST =38;
if M2_MOST =234 then M2_MOST =38;
if M2_MOST =235 then M2_MOST =38;
if M2_MOST =236 then M2_MOST =38;
if M2_MOST =237 then M2_MOST =38;
if M2_MOST =238 then M2_MOST =38;
if M2_MOST =239 then M2_MOST =38;
if M2_MOST =240 then M2_MOST =38;
if M2_MOST =241 then M2_MOST =38;
if M2_MOST =242 then M2_MOST =38;
if M2_MOST =243 then M2_MOST =38;
if M2_MOST =244 then M2_MOST =38;
if M2_MOST =245 then M2_MOST =38;
if M2_MOST =246 then M2_MOST =38;
if M2_MOST =247 then M2_MOST =38;
if M2_MOST =248 then M2_MOST =38;
if M2_MOST =249 then M2_MOST =38;
if M2_MOST =250 then M2_MOST =38;
if M2_MOST =251 then M2_MOST =38;
if M2_MOST =252 then M2_MOST =252;
if M2_MOST =253 then M2_MOST =30;
if M2_MOST =254 then M2_MOST =30;
if M2_MOST =255 then M2_MOST =30;
if M2_MOST =256 then M2_MOST =30;
if M2_MOST =257 then M2_MOST =30;
if M2_MOST =258 then M2_MOST =30;
if M2_MOST =259 then M2_MOST =30;
if M2_MOST =260 then M2_MOST =30;
if M2_MOST =261 then M2_MOST =30;
if M2_MOST =262 then M2_MOST =30;
if M2_MOST =263 then M2_MOST =30;
if M2_MOST =264 then M2_MOST =30;
if M2_MOST =265 then M2_MOST =252;
if M2_MOST =266 then M2_MOST =30;
if M2_MOST =267 then M2_MOST =30;
if M2_MOST =268 then M2_MOST =30;
if M2_MOST =269 then M2_MOST =30;
if M2_MOST =270 then M2_MOST =30;
if M2_MOST =271 then M2_MOST =38;
if M2_MOST =272 then M2_MOST =38;
if M2_MOST =273 then M2_MOST =38;
if M2_MOST =274 then M2_MOST =18;
if M2_MOST =275 then M2_MOST =18;
if M2_MOST =276 then M2_MOST =18;
if M2_MOST =277 then M2_MOST =18;
if M2_MOST =278 then M2_MOST =18;
if M2_MOST =279 then M2_MOST =38;
if M2_MOST =997 then M2_MOST =38;
if M2_MOST =998 then M2_MOST =38;
if M2_MOST =999 then M2_MOST =38;
if M2_MOST =280 then M2_MOST =28;
if M2_MOST =281 then M2_MOST =30;
if M2_MOST =282 then M2_MOST =4;
if M2_MOST =283 then M2_MOST =31;
if M2_MOST =284 then M2_MOST =28;
if M2_MOST =285 then M2_MOST =11;
if M2_MOST =286 then M2_MOST =38;
if M2_MOST =287 then M2_MOST =19;
if M2_MOST =288 then M2_MOST =19;
if M2_MOST =289 then M2_MOST =4;
if M2_MOST =290 then M2_MOST =30;
if M2_MOST =291 then M2_MOST =291;
if M2_MOST =292 then M2_MOST =291;
if M2_MOST =293 then M2_MOST =291;
if M2_MOST =294 then M2_MOST =291;
if M2_MOST =295 then M2_MOST =38;
if M2_MOST =296 then M2_MOST =3;
if M2_MOST =297 then M2_MOST =1;
if M2_MOST =298 then M2_MOST =30;
if M2_MOST =299 then M2_MOST =24;
if M2_MOST =300 then M2_MOST =38;
if M2_MOST =301 then M2_MOST =4;
if M2_MOST =302 then M2_MOST =4;
if M2_MOST =303 then M2_MOST =4;
if M2_MOST =304 then M2_MOST =11;
if M2_MOST =305 then M2_MOST =10;
if M2_MOST =306 then M2_MOST =28;
if M2_MOST =307 then M2_MOST =38;
if M2_MOST =308 then M2_MOST =28;
if M2_MOST =309 then M2_MOST =4;
if M2_MOST =310 then M2_MOST =3;
if M2_MOST =311 then M2_MOST =4;
if M2_MOST =312 then M2_MOST =38;
if M2_MOST =313 then M2_MOST =38;
if M2_MOST =314 then M2_MOST =3;
if M2_MOST =315 then M2_MOST =28;
if M2_MOST =316 then M2_MOST =38;
if M2_MOST =317 then M2_MOST =38;
if M2_MOST =318 then M2_MOST =38;
if M2_MOST =319 then M2_MOST =3;
if M2_MOST =320 then M2_MOST =1;
if M2_MOST =321 then M2_MOST =38;
if M2_MOST =322 then M2_MOST =291;
if M2_MOST =323 then M2_MOST =4;
if M2_MOST =324 then M2_MOST =38;
if M2_MOST =325 then M2_MOST =38;
if M2_MOST =326 then M2_MOST =38;
if M2_MOST =327 then M2_MOST =38;
if M2_MOST =328 then M2_MOST =4;
if M2_MOST =329 then M2_MOST =38;
if M2_MOST =330 then M2_MOST =38;
if M2_MOST =331 then M2_MOST =3;
if M2_MOST =332 then M2_MOST =31;
if M2_MOST =333 then M2_MOST =4;
if M2_MOST =334 then M2_MOST =11;
if M2_MOST =335 then M2_MOST =31;
if M2_MOST =336 then M2_MOST =38;
if M2_MOST =337 then M2_MOST =30;
if M2_MOST =338 then M2_MOST =38;
if M2_MOST =339 then M2_MOST =38;
if M2_MOST =340 then M2_MOST =38;
if M2_MOST =341 then M2_MOST =38;
if M2_MOST =342 then M2_MOST =30;
if M2_MOST =343 then M2_MOST =38;
if M2_MOST =344 then M2_MOST =24;
if M2_MOST =345 then M2_MOST =30;
if M2_MOST =346 then M2_MOST =38;
if M2_MOST =347 then M2_MOST =11;
if M2_MOST =348 then M2_MOST =38;
if M2_MOST =349 then M2_MOST =31;
if M2_MOST =350 then M2_MOST =10;
if M2_MOST =351 then M2_MOST =38;
if M2_MOST =352 then M2_MOST =8;
if M2_MOST =353 then M2_MOST =1;
if M2_MOST =354 then M2_MOST =38;
if M2_MOST =355 then M2_MOST =19;
if M2_MOST =356 then M2_MOST =3;
if M2_MOST =357 then M2_MOST =38;
if M2_MOST =358 then M2_MOST =38;
if M2_MOST =359 then M2_MOST =11;
if M2_MOST =360 then M2_MOST =38;
if M2_MOST =361 then M2_MOST =38;
if M2_MOST =362 then M2_MOST =38;
if M2_MOST =363 then M2_MOST =38;


run;
data v1.Selectvars_rawdata_1;
set v1.Selectvars_rawdata_1;
rename M2_Most=Q2_MOST;
run;


data v1.Selectvars_rawdata_2;
set v1.Selectvars_rawdata_1;
array abc(*) M2_HEARD_1-- M2_HEARD_30;
array def(*) M2HEARD_1-- M2HEARD_10;
do i=1 to 30;
if abc(i)= 1 then Q2_HEARD_Clinic_All_Clear =1;
if abc(i)= 3 then Q2_HEARD_Clinic_Plus =1;
if abc(i)= 4 then Q2_HEARD_Dove =1;
if abc(i)= 5 then Q2_HEARD_Essenza =1;
if abc(i)= 31 then Q2_HEARD_Garnier =1;
if abc(i)= 8 then Q2_HEARD_Garnier_A_D =1;
if abc(i)= 10 then Q2_HEARD_Head_Shoulder =1;
if abc(i)= 11 then Q2_HEARD_Pantene =1;
if abc(i)= 217 then Q2_HEARD_Pantene_A_D =1;
if abc(i)= 30 then Q2_HEARD_Sunsilk =1;
if abc(i)= 252 then Q2_HEARD_Sunsilk_A_D =1;
if abc(i)= 18 then Q2_HEARD_Ultra_Doux =1;
if abc(i)= 19 then Q2_HEARD_Fiama =1;
if abc(i)= 24 then Q2_HEARD_Chik =1;
if abc(i)= 28 then Q2_HEARD_Lux =1;
if abc(i)= 291 then Q2_HEARD_Vivel =1;
if abc(i)= 108 then Q2_HEARD_Dabur_Vatika_A_D =1;
if abc(i)= 38 then Q2_HEARD_Others =1;
end;
do i=1 to 10;
if def(i)= 1 then Q2_HEARD_Clinic_All_Clear =1;
if def(i)= 3 then Q2_HEARD_Clinic_Plus =1;
if def(i)= 4 then Q2_HEARD_Dove =1;
if def(i)= 5 then Q2_HEARD_Essenza =1;
if def(i)= 31 then Q2_HEARD_Garnier =1;
if def(i)= 8 then Q2_HEARD_Garnier_A_D =1;
if def(i)= 10 then Q2_HEARD_Head_Shoulder =1;
if def(i)= 11 then Q2_HEARD_Pantene =1;
if def(i)= 217 then Q2_HEARD_Pantene_A_D =1;
if def(i)= 30 then Q2_HEARD_Sunsilk =1;
if def(i)= 252 then Q2_HEARD_Sunsilk_A_D =1;
if def(i)= 18 then Q2_HEARD_Ultra_Doux =1;
if def(i)= 19 then Q2_HEARD_Fiama =1;
if def(i)= 24 then Q2_HEARD_Chik =1;
if def(i)= 28 then Q2_HEARD_Lux =1;
if def(i)= 291 then Q2_HEARD_Vivel =1;
if def(i)= 108 then Q2_HEARD_Dabur_Vatika_A_D =1;
if def(i)= 38 then Q2_HEARD_Others =1;
end;
run;


data v1.Selectvars_rawdata_2;
set v1.Selectvars_rawdata_2;
array abc(*) M2_USED_1-- M2_USED_30;
do i=1 to 30;
if abc(i)= 1 then Q2_USED_Clinic_All_Clear =1;
if abc(i)= 3 then Q2_USED_Clinic_Plus =1;
if abc(i)= 4 then Q2_USED_Dove =1;
if abc(i)= 5 then Q2_USED_Essenza =1;
if abc(i)= 31 then Q2_USED_Garnier =1;
if abc(i)= 8 then Q2_USED_Garnier_A_D =1;
if abc(i)= 10 then Q2_USED_Head_Shoulder =1;
if abc(i)= 11 then Q2_USED_Pantene =1;
if abc(i)= 217 then Q2_USED_Pantene_A_D =1;
if abc(i)= 30 then Q2_USED_Sunsilk =1;
if abc(i)= 252 then Q2_USED_Sunsilk_A_D =1;
if abc(i)= 18 then Q2_USED_Ultra_Doux =1;
if abc(i)= 19 then Q2_USED_Fiama =1;
if abc(i)= 24 then Q2_USED_Chik =1;
if abc(i)= 28 then Q2_USED_Lux =1;
if abc(i)= 291 then Q2_USED_Vivel =1;
if abc(i)= 108 then Q2_USED_Dabur_Vatika_A_D =1;
if abc(i)= 38 then Q2_USED_Others =1;
end;
run;

data v1.Selectvars_rawdata_2;
set v1.Selectvars_rawdata_2;
if Q2_MOST= 1 then Q2_MOST_Clinic_All_Clear =1;
if Q2_MOST= 3 then Q2_MOST_Clinic_Plus =1;
if Q2_MOST= 4 then Q2_MOST_Dove =1;
if Q2_MOST= 5 then Q2_MOST_Essenza =1;
if Q2_MOST= 31 then Q2_MOST_Garnier =1;
if Q2_MOST= 8 then Q2_MOST_Garnier_A_D =1;
if Q2_MOST= 10 then Q2_MOST_Head_Shoulder =1;
if Q2_MOST= 11 then Q2_MOST_Pantene =1;
if Q2_MOST= 217 then Q2_MOST_Pantene_A_D =1;
if Q2_MOST= 30 then Q2_MOST_Sunsilk =1;
if Q2_MOST= 252 then Q2_MOST_Sunsilk_A_D =1;
if Q2_MOST= 18 then Q2_MOST_Ultra_Doux =1;
if Q2_MOST= 19 then Q2_MOST_Fiama =1;
if Q2_MOST= 24 then Q2_MOST_Chik =1;
if Q2_MOST= 28 then Q2_MOST_Lux =1;
if Q2_MOST= 291 then Q2_MOST_Vivel =1;
if Q2_MOST= 108 then Q2_MOST_Dabur_Vatika_A_D =1;
if Q2_MOST= 38 then Q2_MOST_Others =1;
run;

ods html file="E:\Projects\ITC\Apr 21\freq_q14.xls";

proc freq data=v1.Selectvars_rawdata_2;
tables 
M14_1
M14_1_1
M14_2
M14_2_1
M14_3
M14_3_1
M14_4
M14_4_1
M14_5
M14_5_1
M14_6
M14_6_1
M14_7
M14_7_1
M14_8
M14_8_1
M14_9
M14_9_1
M14_10
M14_10_1
M14_11
M14_11_1
M14_12
M14_12_1
M14_13
M14_13_1
M14_14
M14_14_1
M14_15
M14_15_1
M14_16
M14_16_1
M14_17
M14_17_1
M14_18
M14_18_1
M14_19
M14_19_1
M14_20
M14_20_1;
run;
ods html close;

Data Q14;
set v1.Shampoos_rawdata;
keep
M14_1
M14_1_1
M14_2
M14_2_1
M14_3
M14_3_1
M14_4
M14_4_1
M14_5
M14_5_1
M14_6
M14_6_1
M14_7
M14_7_1
M14_8
M14_8_1
M14_9
M14_9_1
M14_10
M14_10_1
M14_11
M14_11_1
M14_12
M14_12_1
M14_13
M14_13_1
M14_14
M14_14_1
M14_15
M14_15_1
M14_16
M14_16_1
M14_17
M14_17_1
M14_18
M14_18_1
M14_19
M14_19_1
M14_20
M14_20_1;
run;

Data v1.Selectvars_rawdata_2;
retain
M14_1
M14_2
M14_3
M14_4
M14_5
M14_6
M14_7
M14_8
M14_9
M14_10
M14_11
M14_12
M14_13
M14_14
M14_15
M14_16
M14_17
M14_18
M14_19
M14_20
M14_1_1
M14_2_1
M14_3_1
M14_4_1
M14_5_1
M14_6_1
M14_7_1
M14_8_1
M14_9_1
M14_10_1
M14_11_1
M14_12_1
M14_13_1
M14_14_1
M14_15_1
M14_16_1
M14_17_1
M14_18_1
M14_19_1
M14_20_1
;
set v1.Selectvars_rawdata_2;
run;
data v1.Selectvars_rawdata_3;
set v1.Selectvars_rawdata_2;
array aaa(*) M14_1-- M14_20;
array bbb(*) M14_1_1-- M14_20_1;
do i=1 to 20;
if aaa(i)= 1 then Q14_Clinic_All_Clear = bbb(i) ;
if aaa(i)= 3 then Q14_Clinic_Plus = bbb(i) ;
if aaa(i)= 4 then Q14_Dove = bbb(i) ;
if aaa(i)= 5 then Q14_Essenza = bbb(i) ;
if aaa(i)= 31 then Q14_Garnier = bbb(i) ;
if aaa(i)= 8 then Q14_Garnier_A_D = bbb(i) ;
if aaa(i)= 10 then Q14_Head_Shoulder = bbb(i) ;
if aaa(i)= 11 then Q14_Pantene = bbb(i) ;
if aaa(i)= 217 then Q14_Pantene_A_D = bbb(i) ;
if aaa(i)= 30 then Q14_Sunsilk = bbb(i) ;
if aaa(i)= 252 then Q14_Sunsilk_A_D = bbb(i) ;
if aaa(i)= 18 then Q14_Ultra_Doux = bbb(i) ;
if aaa(i)= 19 then Q14_Fiama = bbb(i) ;
if aaa(i)= 24 then Q14_Chik = bbb(i) ;
if aaa(i)= 28 then Q14_Lux = bbb(i) ;
if aaa(i)= 291 then Q14_Vivel = bbb(i) ;
if aaa(i)= 108 then Q14_Dabur_Vatika_A_D = bbb(i) ;
if aaa(i)= 38 then Q14_Others = bbb(i) ;
end;
run;
ods html file="E:\Projects\ITC\Apr 21\freq_q14_transform.xls";

proc freq data=v1.Selectvars_rawdata_3;
tables Q14_Clinic_All_Clear
Q14_Clinic_Plus
Q14_Dove
Q14_Essenza
Q14_Garnier
Q14_Garnier_A_D
Q14_Head_Shoulder
Q14_Pantene
Q14_Pantene_A_D
Q14_Sunsilk
Q14_Sunsilk_A_D
Q14_Ultra_Doux
Q14_Fiama
Q14_Chik
Q14_Lux
Q14_Vivel
Q14_Dabur_Vatika_A_D
Q14_Others

;
run;
ods html close;
/*Q17*/
ods html file="E:\Projects\ITC\Apr 21\freq_q17.xls";

proc freq data=v1.Selectvars_rawdata_3;
tables
M17A_B_01
M17A_B_01a
M17A_B_01_1
M17A_B_01_2
M17A_B_01_3
M17A_B_01_4
M17A_B_01_5
M17A_B_01_6
M17A_B_01_7
M17A_B_01_8
M17A_B_02
M17A_B_02a
M17A_B_02_1
M17A_B_02_2
M17A_B_02_3
M17A_B_02_4
M17A_B_02_5
M17A_B_02_6
M17A_B_02_7
M17A_B_02_8
M17A_B_03
M17A_B_03a
M17A_B_03_1
M17A_B_03_2
M17A_B_03_3
M17A_B_03_4
M17A_B_03_5
M17A_B_03_6
M17A_B_03_7
M17A_B_03_8
M17A_B_04
M17A_B_04a
M17A_B_04_1
M17A_B_04_2
M17A_B_04_3
M17A_B_04_4
M17A_B_04_5
M17A_B_04_6
M17A_B_04_7
M17A_B_04_8
M17A_B_05
M17A_B_05a
M17A_B_05_1
M17A_B_05_2
M17A_B_05_3
M17A_B_05_4
M17A_B_05_5
M17A_B_05_6
M17A_B_05_7
M17A_B_05_8
M17A_B_06
M17A_B_06a
M17A_B_06_1
M17A_B_06_2
M17A_B_06_3
M17A_B_06_4
M17A_B_06_5
M17A_B_06_6
M17A_B_06_7
M17A_B_06_8
M17A_B_07
M17A_B_07a
M17A_B_07_1
M17A_B_07_2
M17A_B_07_3
M17A_B_07_4
M17A_B_07_5
M17A_B_07_6
M17A_B_07_7
M17A_B_07_8
M17A_B_08
M17A_B_08a
M17A_B_08_1
M17A_B_08_2
M17A_B_08_3
M17A_B_08_4
M17A_B_08_5
M17A_B_08_6
M17A_B_08_7
M17A_B_08_8
M17A_B_09
M17A_B_09a
M17A_B_09_1
M17A_B_09_2
M17A_B_09_3
M17A_B_09_4
M17A_B_09_5
M17A_B_09_6
M17A_B_09_7
M17A_B_09_8
M17A_B_10
M17A_B_10a
M17A_B_10_1
M17A_B_10_2
M17A_B_10_3
M17A_B_10_4
M17A_B_10_5
M17A_B_10_6
M17A_B_10_7
M17A_B_10_8
M17A_B_11
M17A_B_11a
M17A_B_11_1
M17A_B_11_2
M17A_B_11_3
M17A_B_11_4
M17A_B_11_5
M17A_B_11_6
M17A_B_11_7
M17A_B_11_8
M17A_B_12
M17A_B_12a
M17A_B_12_1
M17A_B_12_2
M17A_B_12_3
M17A_B_12_4
M17A_B_12_5
M17A_B_12_6
M17A_B_12_7
M17A_B_12_8
M17A_B_13
M17A_B_13a
M17A_B_13_1
M17A_B_13_2
M17A_B_13_3
M17A_B_13_4
M17A_B_13_5
M17A_B_13_6
M17A_B_13_7
M17A_B_13_8
M17A_B_14
M17A_B_14a
M17A_B_14_1
M17A_B_14_2
M17A_B_14_3
M17A_B_14_4
M17A_B_14_5
M17A_B_14_6
M17A_B_14_7
M17A_B_14_8
M17A_B_15
M17A_B_15a
M17A_B_15_1
M17A_B_15_2
M17A_B_15_3
M17A_B_15_4
M17A_B_15_5
M17A_B_15_6
M17A_B_15_7
M17A_B_15_8
M17B1_1
M17B1_2
M17B1_3
M17B1_4
M17B1_5
M17B2_1
M17B2_2
M17B2_3
M17B2_4
M17B2_5
SHAMPU_AD1
SHAMPU_AD2
;
run;
ods html close;
Data v1.Selectvars_rawdata_4;
set v1.Selectvars_rawdata_3;
rename
M17A_B_01 = M17A_B_1
M17A_B_02 = M17A_B_2
M17A_B_03 = M17A_B_3
M17A_B_04 = M17A_B_4
M17A_B_05 = M17A_B_5
M17A_B_06 = M17A_B_6
M17A_B_07 = M17A_B_7
M17A_B_08 = M17A_B_8
M17A_B_09 = M17A_B_9
M17A_B_10 = M17A_B_10
M17A_B_11 = M17A_B_11
M17A_B_12 = M17A_B_12
M17A_B_13 = M17A_B_13
M17A_B_14 = M17A_B_14
M17A_B_15 = M17A_B_15
M17A_B_01a = M17A_1
M17A_B_02a = M17A_2
M17A_B_03a = M17A_3
M17A_B_04a = M17A_4
M17A_B_05a = M17A_5
M17A_B_06a = M17A_6
M17A_B_07a = M17A_7
M17A_B_08a = M17A_8
M17A_B_09a = M17A_9
M17A_B_10a = M17A_10
M17A_B_11a = M17A_11
M17A_B_12a = M17A_12
M17A_B_13a = M17A_13
M17A_B_14a = M17A_14
M17A_B_15a = M17A_15
M17A_B_01_1 = M17_B_1_1
M17A_B_01_2 = M17_B_1_2
M17A_B_01_3 = M17_B_1_3
M17A_B_01_4 = M17_B_1_4
M17A_B_01_5 = M17_B_1_5
M17A_B_01_6 = M17_B_1_6
M17A_B_01_7 = M17_B_1_7
M17A_B_01_8 = M17_B_1_8
M17A_B_02_1 = M17_B_2_1
M17A_B_02_2 = M17_B_2_2
M17A_B_02_3 = M17_B_2_3
M17A_B_02_4 = M17_B_2_4
M17A_B_02_5 = M17_B_2_5
M17A_B_02_6 = M17_B_2_6
M17A_B_02_7 = M17_B_2_7
M17A_B_02_8 = M17_B_2_8
M17A_B_03_1 = M17_B_3_1
M17A_B_03_2 = M17_B_3_2
M17A_B_03_3 = M17_B_3_3
M17A_B_03_4 = M17_B_3_4
M17A_B_03_5 = M17_B_3_5
M17A_B_03_6 = M17_B_3_6
M17A_B_03_7 = M17_B_3_7
M17A_B_03_8 = M17_B_3_8
M17A_B_04_1 = M17_B_4_1
M17A_B_04_2 = M17_B_4_2
M17A_B_04_3 = M17_B_4_3
M17A_B_04_4 = M17_B_4_4
M17A_B_04_5 = M17_B_4_5
M17A_B_04_6 = M17_B_4_6
M17A_B_04_7 = M17_B_4_7
M17A_B_04_8 = M17_B_4_8
M17A_B_05_1 = M17_B_5_1
M17A_B_05_2 = M17_B_5_2
M17A_B_05_3 = M17_B_5_3
M17A_B_05_4 = M17_B_5_4
M17A_B_05_5 = M17_B_5_5
M17A_B_05_6 = M17_B_5_6
M17A_B_05_7 = M17_B_5_7
M17A_B_05_8 = M17_B_5_8
M17A_B_06_1 = M17_B_6_1
M17A_B_06_2 = M17_B_6_2
M17A_B_06_3 = M17_B_6_3
M17A_B_06_4 = M17_B_6_4
M17A_B_06_5 = M17_B_6_5
M17A_B_06_6 = M17_B_6_6
M17A_B_06_7 = M17_B_6_7
M17A_B_06_8 = M17_B_6_8
M17A_B_07_1 = M17_B_7_1
M17A_B_07_2 = M17_B_7_2
M17A_B_07_3 = M17_B_7_3
M17A_B_07_4 = M17_B_7_4
M17A_B_07_5 = M17_B_7_5
M17A_B_07_6 = M17_B_7_6
M17A_B_07_7 = M17_B_7_7
M17A_B_07_8 = M17_B_7_8
M17A_B_08_1 = M17_B_8_1
M17A_B_08_2 = M17_B_8_2
M17A_B_08_3 = M17_B_8_3
M17A_B_08_4 = M17_B_8_4
M17A_B_08_5 = M17_B_8_5
M17A_B_08_6 = M17_B_8_6
M17A_B_08_7 = M17_B_8_7
M17A_B_08_8 = M17_B_8_8
M17A_B_09_1 = M17_B_9_1
M17A_B_09_2 = M17_B_9_2
M17A_B_09_3 = M17_B_9_3
M17A_B_09_4 = M17_B_9_4
M17A_B_09_5 = M17_B_9_5
M17A_B_09_6 = M17_B_9_6
M17A_B_09_7 = M17_B_9_7
M17A_B_09_8 = M17_B_9_8
M17A_B_10_1 = M17_B_10_1
M17A_B_10_2 = M17_B_10_2
M17A_B_10_3 = M17_B_10_3
M17A_B_10_4 = M17_B_10_4
M17A_B_10_5 = M17_B_10_5
M17A_B_10_6 = M17_B_10_6
M17A_B_10_7 = M17_B_10_7
M17A_B_10_8 = M17_B_10_8
M17A_B_11_1 = M17_B_11_1
M17A_B_11_2 = M17_B_11_2
M17A_B_11_3 = M17_B_11_3
M17A_B_11_4 = M17_B_11_4
M17A_B_11_5 = M17_B_11_5
M17A_B_11_6 = M17_B_11_6
M17A_B_11_7 = M17_B_11_7
M17A_B_11_8 = M17_B_11_8
M17A_B_12_1 = M17_B_12_1
M17A_B_12_2 = M17_B_12_2
M17A_B_12_3 = M17_B_12_3
M17A_B_12_4 = M17_B_12_4
M17A_B_12_5 = M17_B_12_5
M17A_B_12_6 = M17_B_12_6
M17A_B_12_7 = M17_B_12_7
M17A_B_12_8 = M17_B_12_8
M17A_B_13_1 = M17_B_13_1
M17A_B_13_2 = M17_B_13_2
M17A_B_13_3 = M17_B_13_3
M17A_B_13_4 = M17_B_13_4
M17A_B_13_5 = M17_B_13_5
M17A_B_13_6 = M17_B_13_6
M17A_B_13_7 = M17_B_13_7
M17A_B_13_8 = M17_B_13_8
M17A_B_14_1 = M17_B_14_1
M17A_B_14_2 = M17_B_14_2
M17A_B_14_3 = M17_B_14_3
M17A_B_14_4 = M17_B_14_4
M17A_B_14_5 = M17_B_14_5
M17A_B_14_6 = M17_B_14_6
M17A_B_14_7 = M17_B_14_7
M17A_B_14_8 = M17_B_14_8
M17A_B_15_1 = M17_B_15_1
M17A_B_15_2 = M17_B_15_2
M17A_B_15_3 = M17_B_15_3
M17A_B_15_4 = M17_B_15_4
M17A_B_15_5 = M17_B_15_5
M17A_B_15_6 = M17_B_15_6
M17A_B_15_7 = M17_B_15_7
M17A_B_15_8 = M17_B_15_8;
run;

Data v1.Selectvars_rawdata_4;
retain 
M17A_B_1
M17A_B_2
M17A_B_3
M17A_B_4
M17A_B_5
M17A_B_6
M17A_B_7
M17A_B_8
M17A_B_9
M17A_B_10
M17A_B_11
M17A_B_12
M17A_B_13
M17A_B_14
M17A_B_15
M17A_1
M17A_2
M17A_3
M17A_4
M17A_5
M17A_6
M17A_7
M17A_8
M17A_9
M17A_10
M17A_11
M17A_12
M17A_13
M17A_14
M17A_15
M17_B_1_1
M17_B_1_2
M17_B_1_3
M17_B_1_4
M17_B_1_5
M17_B_1_6
M17_B_1_7
M17_B_1_8
M17_B_2_1
M17_B_2_2
M17_B_2_3
M17_B_2_4
M17_B_2_5
M17_B_2_6
M17_B_2_7
M17_B_2_8
M17_B_3_1
M17_B_3_2
M17_B_3_3
M17_B_3_4
M17_B_3_5
M17_B_3_6
M17_B_3_7
M17_B_3_8
M17_B_4_1
M17_B_4_2
M17_B_4_3
M17_B_4_4
M17_B_4_5
M17_B_4_6
M17_B_4_7
M17_B_4_8
M17_B_5_1
M17_B_5_2
M17_B_5_3
M17_B_5_4
M17_B_5_5
M17_B_5_6
M17_B_5_7
M17_B_5_8
M17_B_6_1
M17_B_6_2
M17_B_6_3
M17_B_6_4
M17_B_6_5
M17_B_6_6
M17_B_6_7
M17_B_6_8
M17_B_7_1
M17_B_7_2
M17_B_7_3
M17_B_7_4
M17_B_7_5
M17_B_7_6
M17_B_7_7
M17_B_7_8
M17_B_8_1
M17_B_8_2
M17_B_8_3
M17_B_8_4
M17_B_8_5
M17_B_8_6
M17_B_8_7
M17_B_8_8
M17_B_9_1
M17_B_9_2
M17_B_9_3
M17_B_9_4
M17_B_9_5
M17_B_9_6
M17_B_9_7
M17_B_9_8
M17_B_10_1
M17_B_10_2
M17_B_10_3
M17_B_10_4
M17_B_10_5
M17_B_10_6
M17_B_10_7
M17_B_10_8
M17_B_11_1
M17_B_11_2
M17_B_11_3
M17_B_11_4
M17_B_11_5
M17_B_11_6
M17_B_11_7
M17_B_11_8
M17_B_12_1
M17_B_12_2
M17_B_12_3
M17_B_12_4
M17_B_12_5
M17_B_12_6
M17_B_12_7
M17_B_12_8
M17_B_13_1
M17_B_13_2
M17_B_13_3
M17_B_13_4
M17_B_13_5
M17_B_13_6
M17_B_13_7
M17_B_13_8
M17_B_14_1
M17_B_14_2
M17_B_14_3
M17_B_14_4
M17_B_14_5
M17_B_14_6
M17_B_14_7
M17_B_14_8
M17_B_15_1
M17_B_15_2
M17_B_15_3
M17_B_15_4
M17_B_15_5
M17_B_15_6
M17_B_15_7
M17_B_15_8
;
set v1.Selectvars_rawdata_4;
run;


data v1.Selectvars_rawdata_5;
set v1.Selectvars_rawdata_4;
array aaa(*) M17A_B_1-- M17A_B_15;
array bbb(*) M17A_1-- M17A_15;
do i=1 to 15;
if aaa(i)= 1 then Q17_A_Clinic_All_Clear = bbb(i) ;
if aaa(i)= 3 then Q17_A_Clinic_Plus = bbb(i) ;
if aaa(i)= 4 then Q17_A_Dove = bbb(i) ;
if aaa(i)= 5 then Q17_A_Essenza = bbb(i) ;
if aaa(i)= 31 then Q17_A_Garnier = bbb(i) ;
if aaa(i)= 8 then Q17_A_Garnier_A_D = bbb(i) ;
if aaa(i)= 10 then Q17_A_Head_Shoulder = bbb(i) ;
if aaa(i)= 11 then Q17_A_Pantene = bbb(i) ;
if aaa(i)= 217 then Q17_A_Pantene_A_D = bbb(i) ;
if aaa(i)= 30 then Q17_A_Sunsilk = bbb(i) ;
if aaa(i)= 252 then Q17_A_Sunsilk_A_D = bbb(i) ;
if aaa(i)= 18 then Q17_A_Ultra_Doux = bbb(i) ;
if aaa(i)= 19 then Q17_A_Fiama = bbb(i) ;
if aaa(i)= 24 then Q17_A_Chik = bbb(i) ;
if aaa(i)= 28 then Q17_A_Lux = bbb(i) ;
if aaa(i)= 291 then Q17_A_Vivel = bbb(i) ;
if aaa(i)= 108 then Q17_A_Dabur_Vatika_A_D = bbb(i) ;
if aaa(i)= 38 then Q17_A_Others = bbb(i) ;
end;
run;


%macro trans (var1, var2, var3);
data v1.Selectvars_rawdata_6;
set v1.Selectvars_rawdata_5;
%do i=1 %to 15;
%do j=1 %to 8;
%let counter=&var1.&i;
%let counter1=&var3._&i._&j;
if &counter= 1 and Q17_A_Clinic_All_Clear =1 and &counter1= 1 then &var2._Clinic_All_Clear_1 =1;
if &counter= 3 and Q17_A_Clinic_Plus =1 and &counter1= 1 then &var2._Clinic_Plus_1 =1;
if &counter= 4 and Q17_A_Dove =1 and &counter1= 1 then &var2._Dove_1 =1;
if &counter= 5 and Q17_A_Essenza =1 and &counter1= 1 then &var2._Essenza_1 =1;
if &counter= 31 and Q17_A_Garnier =1 and &counter1= 1 then &var2._Garnier_1 =1;
if &counter= 8 and Q17_A_Garnier_A_D =1 and &counter1= 1 then &var2._Garnier_A_D_1 =1;
if &counter= 10 and Q17_A_Head_Shoulder =1 and &counter1= 1 then &var2._Head_Shoulder_1 =1;
if &counter= 11 and Q17_A_Pantene =1 and &counter1= 1 then &var2._Pantene_1 =1;
if &counter= 217 and Q17_A_Pantene_A_D =1 and &counter1= 1 then &var2._Pantene_A_D_1 =1;
if &counter= 30 and Q17_A_Sunsilk =1 and &counter1= 1 then &var2._Sunsilk_1 =1;
if &counter= 252 and Q17_A_Sunsilk_A_D =1 and &counter1= 1 then &var2._Sunsilk_A_D_1 =1;
if &counter= 18 and Q17_A_Ultra_Doux =1 and &counter1= 1 then &var2._Ultra_Doux_1 =1;
if &counter= 19 and Q17_A_Fiama =1 and &counter1= 1 then &var2._Fiama_1 =1;
if &counter= 24 and Q17_A_Chik =1 and &counter1= 1 then &var2._Chik_1 =1;
if &counter= 28 and Q17_A_Lux =1 and &counter1= 1 then &var2._Lux_1 =1;
if &counter= 291 and Q17_A_Vivel =1 and &counter1= 1 then &var2._Vivel_1 =1;
if &counter= 108 and Q17_A_Dabur_Vatika_A_D =1 and &counter1= 1 then &var2._Dabur_Vatika_A_D_1 =1;
if &counter= 38 and Q17_A_Others =1 and &counter1= 1 then &var2._Others_1 =1;
if &counter= 1 and Q17_A_Clinic_All_Clear =1 and &counter1= 2 then &var2._Clinic_All_Clear_2 =1;
if &counter= 3 and Q17_A_Clinic_Plus =1 and &counter1= 2 then &var2._Clinic_Plus_2 =1;
if &counter= 4 and Q17_A_Dove =1 and &counter1= 2 then &var2._Dove_2 =1;
if &counter= 5 and Q17_A_Essenza =1 and &counter1= 2 then &var2._Essenza_2 =1;
if &counter= 31 and Q17_A_Garnier =1 and &counter1= 2 then &var2._Garnier_2 =1;
if &counter= 8 and Q17_A_Garnier_A_D =1 and &counter1= 2 then &var2._Garnier_A_D_2 =1;
if &counter= 10 and Q17_A_Head_Shoulder =1 and &counter1= 2 then &var2._Head_Shoulder_2 =1;
if &counter= 11 and Q17_A_Pantene =1 and &counter1= 2 then &var2._Pantene_2 =1;
if &counter= 217 and Q17_A_Pantene_A_D =1 and &counter1= 2 then &var2._Pantene_A_D_2 =1;
if &counter= 30 and Q17_A_Sunsilk =1 and &counter1= 2 then &var2._Sunsilk_2 =1;
if &counter= 252 and Q17_A_Sunsilk_A_D =1 and &counter1= 2 then &var2._Sunsilk_A_D_2 =1;
if &counter= 18 and Q17_A_Ultra_Doux =1 and &counter1= 2 then &var2._Ultra_Doux_2 =1;
if &counter= 19 and Q17_A_Fiama =1 and &counter1= 2 then &var2._Fiama_2 =1;
if &counter= 24 and Q17_A_Chik =1 and &counter1= 2 then &var2._Chik_2 =1;
if &counter= 28 and Q17_A_Lux =1 and &counter1= 2 then &var2._Lux_2 =1;
if &counter= 291 and Q17_A_Vivel =1 and &counter1= 2 then &var2._Vivel_2 =1;
if &counter= 108 and Q17_A_Dabur_Vatika_A_D =1 and &counter1= 2 then &var2._Dabur_Vatika_A_D_2 =1;
if &counter= 38 and Q17_A_Others =1 and &counter1= 2 then &var2._Others_2 =1;
if &counter= 1 and Q17_A_Clinic_All_Clear =1 and &counter1= 3 then &var2._Clinic_All_Clear_3 =1;
if &counter= 3 and Q17_A_Clinic_Plus =1 and &counter1= 3 then &var2._Clinic_Plus_3 =1;
if &counter= 4 and Q17_A_Dove =1 and &counter1= 3 then &var2._Dove_3 =1;
if &counter= 5 and Q17_A_Essenza =1 and &counter1= 3 then &var2._Essenza_3 =1;
if &counter= 31 and Q17_A_Garnier =1 and &counter1= 3 then &var2._Garnier_3 =1;
if &counter= 8 and Q17_A_Garnier_A_D =1 and &counter1= 3 then &var2._Garnier_A_D_3 =1;
if &counter= 10 and Q17_A_Head_Shoulder =1 and &counter1= 3 then &var2._Head_Shoulder_3 =1;
if &counter= 11 and Q17_A_Pantene =1 and &counter1= 3 then &var2._Pantene_3 =1;
if &counter= 217 and Q17_A_Pantene_A_D =1 and &counter1= 3 then &var2._Pantene_A_D_3 =1;
if &counter= 30 and Q17_A_Sunsilk =1 and &counter1= 3 then &var2._Sunsilk_3 =1;
if &counter= 252 and Q17_A_Sunsilk_A_D =1 and &counter1= 3 then &var2._Sunsilk_A_D_3 =1;
if &counter= 18 and Q17_A_Ultra_Doux =1 and &counter1= 3 then &var2._Ultra_Doux_3 =1;
if &counter= 19 and Q17_A_Fiama =1 and &counter1= 3 then &var2._Fiama_3 =1;
if &counter= 24 and Q17_A_Chik =1 and &counter1= 3 then &var2._Chik_3 =1;
if &counter= 28 and Q17_A_Lux =1 and &counter1= 3 then &var2._Lux_3 =1;
if &counter= 291 and Q17_A_Vivel =1 and &counter1= 3 then &var2._Vivel_3 =1;
if &counter= 108 and Q17_A_Dabur_Vatika_A_D =1 and &counter1= 3 then &var2._Dabur_Vatika_A_D_3 =1;
if &counter= 38 and Q17_A_Others =1 and &counter1= 3 then &var2._Others_3 =1;
if &counter= 1 and Q17_A_Clinic_All_Clear =1 and &counter1= 4 then &var2._Clinic_All_Clear_4 =1;
if &counter= 3 and Q17_A_Clinic_Plus =1 and &counter1= 4 then &var2._Clinic_Plus_4 =1;
if &counter= 4 and Q17_A_Dove =1 and &counter1= 4 then &var2._Dove_4 =1;
if &counter= 5 and Q17_A_Essenza =1 and &counter1= 4 then &var2._Essenza_4 =1;
if &counter= 31 and Q17_A_Garnier =1 and &counter1= 4 then &var2._Garnier_4 =1;
if &counter= 8 and Q17_A_Garnier_A_D =1 and &counter1= 4 then &var2._Garnier_A_D_4 =1;
if &counter= 10 and Q17_A_Head_Shoulder =1 and &counter1= 4 then &var2._Head_Shoulder_4 =1;
if &counter= 11 and Q17_A_Pantene =1 and &counter1= 4 then &var2._Pantene_4 =1;
if &counter= 217 and Q17_A_Pantene_A_D =1 and &counter1= 4 then &var2._Pantene_A_D_4 =1;
if &counter= 30 and Q17_A_Sunsilk =1 and &counter1= 4 then &var2._Sunsilk_4 =1;
if &counter= 252 and Q17_A_Sunsilk_A_D =1 and &counter1= 4 then &var2._Sunsilk_A_D_4 =1;
if &counter= 18 and Q17_A_Ultra_Doux =1 and &counter1= 4 then &var2._Ultra_Doux_4 =1;
if &counter= 19 and Q17_A_Fiama =1 and &counter1= 4 then &var2._Fiama_4 =1;
if &counter= 24 and Q17_A_Chik =1 and &counter1= 4 then &var2._Chik_4 =1;
if &counter= 28 and Q17_A_Lux =1 and &counter1= 4 then &var2._Lux_4 =1;
if &counter= 291 and Q17_A_Vivel =1 and &counter1= 4 then &var2._Vivel_4 =1;
if &counter= 108 and Q17_A_Dabur_Vatika_A_D =1 and &counter1= 4 then &var2._Dabur_Vatika_A_D_4 =1;
if &counter= 38 and Q17_A_Others =1 and &counter1= 4 then &var2._Others_4 =1;
if &counter= 1 and Q17_A_Clinic_All_Clear =1 and &counter1= 5 then &var2._Clinic_All_Clear_5 =1;
if &counter= 3 and Q17_A_Clinic_Plus =1 and &counter1= 5 then &var2._Clinic_Plus_5 =1;
if &counter= 4 and Q17_A_Dove =1 and &counter1= 5 then &var2._Dove_5 =1;
if &counter= 5 and Q17_A_Essenza =1 and &counter1= 5 then &var2._Essenza_5 =1;
if &counter= 31 and Q17_A_Garnier =1 and &counter1= 5 then &var2._Garnier_5 =1;
if &counter= 8 and Q17_A_Garnier_A_D =1 and &counter1= 5 then &var2._Garnier_A_D_5 =1;
if &counter= 10 and Q17_A_Head_Shoulder =1 and &counter1= 5 then &var2._Head_Shoulder_5 =1;
if &counter= 11 and Q17_A_Pantene =1 and &counter1= 5 then &var2._Pantene_5 =1;
if &counter= 217 and Q17_A_Pantene_A_D =1 and &counter1= 5 then &var2._Pantene_A_D_5 =1;
if &counter= 30 and Q17_A_Sunsilk =1 and &counter1= 5 then &var2._Sunsilk_5 =1;
if &counter= 252 and Q17_A_Sunsilk_A_D =1 and &counter1= 5 then &var2._Sunsilk_A_D_5 =1;
if &counter= 18 and Q17_A_Ultra_Doux =1 and &counter1= 5 then &var2._Ultra_Doux_5 =1;
if &counter= 19 and Q17_A_Fiama =1 and &counter1= 5 then &var2._Fiama_5 =1;
if &counter= 24 and Q17_A_Chik =1 and &counter1= 5 then &var2._Chik_5 =1;
if &counter= 28 and Q17_A_Lux =1 and &counter1= 5 then &var2._Lux_5 =1;
if &counter= 291 and Q17_A_Vivel =1 and &counter1= 5 then &var2._Vivel_5 =1;
if &counter= 108 and Q17_A_Dabur_Vatika_A_D =1 and &counter1= 5 then &var2._Dabur_Vatika_A_D_5 =1;
if &counter= 38 and Q17_A_Others =1 and &counter1= 5 then &var2._Others_5 =1;
if &counter= 1 and Q17_A_Clinic_All_Clear =1 and &counter1= 6 then &var2._Clinic_All_Clear_6 =1;
if &counter= 3 and Q17_A_Clinic_Plus =1 and &counter1= 6 then &var2._Clinic_Plus_6 =1;
if &counter= 4 and Q17_A_Dove =1 and &counter1= 6 then &var2._Dove_6 =1;
if &counter= 5 and Q17_A_Essenza =1 and &counter1= 6 then &var2._Essenza_6 =1;
if &counter= 31 and Q17_A_Garnier =1 and &counter1= 6 then &var2._Garnier_6 =1;
if &counter= 8 and Q17_A_Garnier_A_D =1 and &counter1= 6 then &var2._Garnier_A_D_6 =1;
if &counter= 10 and Q17_A_Head_Shoulder =1 and &counter1= 6 then &var2._Head_Shoulder_6 =1;
if &counter= 11 and Q17_A_Pantene =1 and &counter1= 6 then &var2._Pantene_6 =1;
if &counter= 217 and Q17_A_Pantene_A_D =1 and &counter1= 6 then &var2._Pantene_A_D_6 =1;
if &counter= 30 and Q17_A_Sunsilk =1 and &counter1= 6 then &var2._Sunsilk_6 =1;
if &counter= 252 and Q17_A_Sunsilk_A_D =1 and &counter1= 6 then &var2._Sunsilk_A_D_6 =1;
if &counter= 18 and Q17_A_Ultra_Doux =1 and &counter1= 6 then &var2._Ultra_Doux_6 =1;
if &counter= 19 and Q17_A_Fiama =1 and &counter1= 6 then &var2._Fiama_6 =1;
if &counter= 24 and Q17_A_Chik =1 and &counter1= 6 then &var2._Chik_6 =1;
if &counter= 28 and Q17_A_Lux =1 and &counter1= 6 then &var2._Lux_6 =1;
if &counter= 291 and Q17_A_Vivel =1 and &counter1= 6 then &var2._Vivel_6 =1;
if &counter= 108 and Q17_A_Dabur_Vatika_A_D =1 and &counter1= 6 then &var2._Dabur_Vatika_A_D_6 =1;
if &counter= 38 and Q17_A_Others =1 and &counter1= 6 then &var2._Others_6 =1;
if &counter= 1 and Q17_A_Clinic_All_Clear =1 and &counter1= 7 then &var2._Clinic_All_Clear_7 =1;
if &counter= 3 and Q17_A_Clinic_Plus =1 and &counter1= 7 then &var2._Clinic_Plus_7 =1;
if &counter= 4 and Q17_A_Dove =1 and &counter1= 7 then &var2._Dove_7 =1;
if &counter= 5 and Q17_A_Essenza =1 and &counter1= 7 then &var2._Essenza_7 =1;
if &counter= 31 and Q17_A_Garnier =1 and &counter1= 7 then &var2._Garnier_7 =1;
if &counter= 8 and Q17_A_Garnier_A_D =1 and &counter1= 7 then &var2._Garnier_A_D_7 =1;
if &counter= 10 and Q17_A_Head_Shoulder =1 and &counter1= 7 then &var2._Head_Shoulder_7 =1;
if &counter= 11 and Q17_A_Pantene =1 and &counter1= 7 then &var2._Pantene_7 =1;
if &counter= 217 and Q17_A_Pantene_A_D =1 and &counter1= 7 then &var2._Pantene_A_D_7 =1;
if &counter= 30 and Q17_A_Sunsilk =1 and &counter1= 7 then &var2._Sunsilk_7 =1;
if &counter= 252 and Q17_A_Sunsilk_A_D =1 and &counter1= 7 then &var2._Sunsilk_A_D_7 =1;
if &counter= 18 and Q17_A_Ultra_Doux =1 and &counter1= 7 then &var2._Ultra_Doux_7 =1;
if &counter= 19 and Q17_A_Fiama =1 and &counter1= 7 then &var2._Fiama_7 =1;
if &counter= 24 and Q17_A_Chik =1 and &counter1= 7 then &var2._Chik_7 =1;
if &counter= 28 and Q17_A_Lux =1 and &counter1= 7 then &var2._Lux_7 =1;
if &counter= 291 and Q17_A_Vivel =1 and &counter1= 7 then &var2._Vivel_7 =1;
if &counter= 108 and Q17_A_Dabur_Vatika_A_D =1 and &counter1= 7 then &var2._Dabur_Vatika_A_D_7 =1;
if &counter= 38 and Q17_A_Others =1 and &counter1= 7 then &var2._Others_7 =1;
if &counter= 1 and Q17_A_Clinic_All_Clear =1 and &counter1= 8 then &var2._Clinic_All_Clear_8 =1;
if &counter= 3 and Q17_A_Clinic_Plus =1 and &counter1= 8 then &var2._Clinic_Plus_8 =1;
if &counter= 4 and Q17_A_Dove =1 and &counter1= 8 then &var2._Dove_8 =1;
if &counter= 5 and Q17_A_Essenza =1 and &counter1= 8 then &var2._Essenza_8 =1;
if &counter= 31 and Q17_A_Garnier =1 and &counter1= 8 then &var2._Garnier_8 =1;
if &counter= 8 and Q17_A_Garnier_A_D =1 and &counter1= 8 then &var2._Garnier_A_D_8 =1;
if &counter= 10 and Q17_A_Head_Shoulder =1 and &counter1= 8 then &var2._Head_Shoulder_8 =1;
if &counter= 11 and Q17_A_Pantene =1 and &counter1= 8 then &var2._Pantene_8 =1;
if &counter= 217 and Q17_A_Pantene_A_D =1 and &counter1= 8 then &var2._Pantene_A_D_8 =1;
if &counter= 30 and Q17_A_Sunsilk =1 and &counter1= 8 then &var2._Sunsilk_8 =1;
if &counter= 252 and Q17_A_Sunsilk_A_D =1 and &counter1= 8 then &var2._Sunsilk_A_D_8 =1;
if &counter= 18 and Q17_A_Ultra_Doux =1 and &counter1= 8 then &var2._Ultra_Doux_8 =1;
if &counter= 19 and Q17_A_Fiama =1 and &counter1= 8 then &var2._Fiama_8 =1;
if &counter= 24 and Q17_A_Chik =1 and &counter1= 8 then &var2._Chik_8 =1;
if &counter= 28 and Q17_A_Lux =1 and &counter1= 8 then &var2._Lux_8 =1;
if &counter= 291 and Q17_A_Vivel =1 and &counter1= 8 then &var2._Vivel_8 =1;
if &counter= 108 and Q17_A_Dabur_Vatika_A_D =1 and &counter1= 8 then &var2._Dabur_Vatika_A_D_8 =1;
if &counter= 38 and Q17_A_Others =1 and &counter1= 8 then &var2._Others_8 =1;

%end;
%end;
run;
%mend;
%trans (M17A_B_, Q17b, M17_B);


DATA test_q17;
SET v1.Selectvars_rawdata_6;
KEEP 
M17A_B_1
M17A_B_2
M17A_B_3
M17A_B_4
M17A_B_5
M17A_B_6
M17A_B_7
M17A_B_8
M17A_B_9
M17A_B_10
M17A_B_11
M17A_B_12
M17A_B_13
M17A_B_14
M17A_B_15
M17A_1
M17A_2
M17A_3
M17A_4
M17A_5
M17A_6
M17A_7
M17A_8
M17A_9
M17A_10
M17A_11
M17A_12
M17A_13
M17A_14
M17A_15
M17_B_1_1
M17_B_1_2
M17_B_1_3
M17_B_1_4
M17_B_1_5
M17_B_1_6
M17_B_1_7
M17_B_1_8

Q17_A_Dove
 Q17b_Dove_1
 Q17b_Dove_2
 Q17b_Dove_3
 Q17b_Dove_4
 Q17b_Dove_5
 Q17b_Dove_6
Q17b_Dove_7 
 Q17b_Dove_8

;
RUN;

proc export data=test_q17 outfile="E:\Projects\ITC\Apr 21\test_q17.csv";
run;

/*Q18*/

data v1.Selectvars_rawdata_7;
set v1.Selectvars_rawdata_6;
rename
M16A_01 = M16A_1
M16A_01_1 = M16A_1_1
M16A_01_2 = M16A_1_2
M16A_01_3 = M16A_1_3
M16A_01_4 = M16A_1_4
M16A_01_5 = M16A_1_5
M16A_01_6 = M16A_1_6
M16A_01_7 = M16A_1_7
M16A_01_8 = M16A_1_8
M16A_01_9 = M16A_1_9
M16A_01_10 = M16A_1_10
M16A_01_11 = M16A_1_11
M16A_01_12 = M16A_1_12
M16A_01_13 = M16A_1_13
M16A_02 = M16A_2
M16A_02_1 = M16A_2_1
M16A_02_2 = M16A_2_2
M16A_02_3 = M16A_2_3
M16A_02_4 = M16A_2_4
M16A_02_5 = M16A_2_5
M16A_02_6 = M16A_2_6
M16A_02_7 = M16A_2_7
M16A_02_8 = M16A_2_8
M16A_02_9 = M16A_2_9
M16A_02_10 = M16A_2_10
M16A_02_11 = M16A_2_11
M16A_02_12 = M16A_2_12
M16A_02_13 = M16A_2_13
M16A_03 = M16A_3
M16A_03_1 = M16A_3_1
M16A_03_2 = M16A_3_2
M16A_03_3 = M16A_3_3
M16A_03_4 = M16A_3_4
M16A_03_5 = M16A_3_5
M16A_03_6 = M16A_3_6
M16A_03_7 = M16A_3_7
M16A_03_8 = M16A_3_8
M16A_03_9 = M16A_3_9
M16A_03_10 = M16A_3_10
M16A_03_11 = M16A_3_11
M16A_03_12 = M16A_3_12
M16A_03_13 = M16A_3_13
M16A_04 = M16A_4
M16A_04_1 = M16A_4_1
M16A_04_2 = M16A_4_2
M16A_04_3 = M16A_4_3
M16A_04_4 = M16A_4_4
M16A_04_5 = M16A_4_5
M16A_04_6 = M16A_4_6
M16A_04_7 = M16A_4_7
M16A_04_8 = M16A_4_8
M16A_04_9 = M16A_4_9
M16A_04_10 = M16A_4_10
M16A_04_11 = M16A_4_11
M16A_04_12 = M16A_4_12
M16A_04_13 = M16A_4_13
M16A_05 = M16A_5
M16A_05_1 = M16A_5_1
M16A_05_2 = M16A_5_2
M16A_05_3 = M16A_5_3
M16A_05_4 = M16A_5_4
M16A_05_5 = M16A_5_5
M16A_05_6 = M16A_5_6
M16A_05_7 = M16A_5_7
M16A_05_8 = M16A_5_8
M16A_05_9 = M16A_5_9
M16A_05_10 = M16A_5_10
M16A_05_11 = M16A_5_11
M16A_05_12 = M16A_5_12
M16A_05_13 = M16A_5_13
M16A_06 = M16A_6
M16A_06_1 = M16A_6_1
M16A_06_2 = M16A_6_2
M16A_06_3 = M16A_6_3
M16A_06_4 = M16A_6_4
M16A_06_5 = M16A_6_5
M16A_06_6 = M16A_6_6
M16A_06_7 = M16A_6_7
M16A_06_8 = M16A_6_8
M16A_06_9 = M16A_6_9
M16A_06_10 = M16A_6_10
M16A_06_11 = M16A_6_11
M16A_06_12 = M16A_6_12
M16A_06_13 = M16A_6_13
M16A_07 = M16A_7
M16A_07_1 = M16A_7_1
M16A_07_2 = M16A_7_2
M16A_07_3 = M16A_7_3
M16A_07_4 = M16A_7_4
M16A_07_5 = M16A_7_5
M16A_07_6 = M16A_7_6
M16A_07_7 = M16A_7_7
M16A_07_8 = M16A_7_8
M16A_07_9 = M16A_7_9
M16A_07_10 = M16A_7_10
M16A_07_11 = M16A_7_11
M16A_07_12 = M16A_7_12
M16A_07_13 = M16A_7_13
M16A_08 = M16A_8
M16A_08_1 = M16A_8_1
M16A_08_2 = M16A_8_2
M16A_08_3 = M16A_8_3
M16A_08_4 = M16A_8_4
M16A_08_5 = M16A_8_5
M16A_08_6 = M16A_8_6
M16A_08_7 = M16A_8_7
M16A_08_8 = M16A_8_8
M16A_08_9 = M16A_8_9
M16A_08_10 = M16A_8_10
M16A_08_11 = M16A_8_11
M16A_08_12 = M16A_8_12
M16A_08_13 = M16A_8_13
M16A_09 = M16A_9
M16A_09_1 = M16A_9_1
M16A_09_2 = M16A_9_2
M16A_09_3 = M16A_9_3
M16A_09_4 = M16A_9_4
M16A_09_5 = M16A_9_5
M16A_09_6 = M16A_9_6
M16A_09_7 = M16A_9_7
M16A_09_8 = M16A_9_8
M16A_09_9 = M16A_9_9
M16A_09_10 = M16A_9_10
M16A_09_11 = M16A_9_11
M16A_09_12 = M16A_9_12
M16A_09_13 = M16A_9_13
M16A_10 = M16A_10
M16A_10_1 = M16A_10_1
M16A_10_2 = M16A_10_2
M16A_10_3 = M16A_10_3
M16A_10_4 = M16A_10_4
M16A_10_5 = M16A_10_5
M16A_10_6 = M16A_10_6
M16A_10_7 = M16A_10_7
M16A_10_8 = M16A_10_8
M16A_10_9 = M16A_10_9
M16A_10_10 = M16A_10_10
M16A_10_11 = M16A_10_11
M16A_10_12 = M16A_10_12
M16A_10_13 = M16A_10_13
M16A_11 = M16A_11
M16A_11_1 = M16A_11_1
M16A_11_2 = M16A_11_2
M16A_11_3 = M16A_11_3
M16A_11_4 = M16A_11_4
M16A_11_5 = M16A_11_5
M16A_11_6 = M16A_11_6
M16A_11_7 = M16A_11_7
M16A_11_8 = M16A_11_8
M16A_11_9 = M16A_11_9
M16A_11_10 = M16A_11_10
M16A_11_11 = M16A_11_11
M16A_11_12 = M16A_11_12
M16A_11_13 = M16A_11_13
M16A_12 = M16A_12
M16A_12_1 = M16A_12_1
M16A_12_2 = M16A_12_2
M16A_12_3 = M16A_12_3
M16A_12_4 = M16A_12_4
M16A_12_5 = M16A_12_5
M16A_12_6 = M16A_12_6
M16A_12_7 = M16A_12_7
M16A_12_8 = M16A_12_8
M16A_12_9 = M16A_12_9
M16A_12_10 = M16A_12_10
M16A_12_11 = M16A_12_11
M16A_12_12 = M16A_12_12
M16A_12_13 = M16A_12_13
M16A_13 = M16A_13
M16A_13_1 = M16A_13_1
M16A_13_2 = M16A_13_2
M16A_13_3 = M16A_13_3
M16A_13_4 = M16A_13_4
M16A_13_5 = M16A_13_5
M16A_13_6 = M16A_13_6
M16A_13_7 = M16A_13_7
M16A_13_8 = M16A_13_8
M16A_13_9 = M16A_13_9
M16A_13_10 = M16A_13_10
M16A_13_11 = M16A_13_11
M16A_13_12 = M16A_13_12
M16A_13_13 = M16A_13_13
M16A_14 = M16A_14
M16A_14_1 = M16A_14_1
M16A_14_2 = M16A_14_2
M16A_14_3 = M16A_14_3
M16A_14_4 = M16A_14_4
M16A_14_5 = M16A_14_5
M16A_14_6 = M16A_14_6
M16A_14_7 = M16A_14_7
M16A_14_8 = M16A_14_8
M16A_14_9 = M16A_14_9
M16A_14_10 = M16A_14_10
M16A_14_11 = M16A_14_11
M16A_14_12 = M16A_14_12
M16A_14_13 = M16A_14_13
M16A_15 = M16A_15
M16A_15_1 = M16A_15_1
M16A_15_2 = M16A_15_2
M16A_15_3 = M16A_15_3
M16A_15_4 = M16A_15_4
M16A_15_5 = M16A_15_5
M16A_15_6 = M16A_15_6
M16A_15_7 = M16A_15_7
M16A_15_8 = M16A_15_8
M16A_15_9 = M16A_15_9
M16A_15_10 = M16A_15_10
M16A_15_11 = M16A_15_11
M16A_15_12 = M16A_15_12
M16A_15_13 = M16A_15_13
M16B_01 = M16B_1
M16B_01_1 = M16B_1_1
M16B_01_2 = M16B_1_2
M16B_01_3 = M16B_1_3
M16B_01_4 = M16B_1_4
M16B_01_5 = M16B_1_5
M16B_01_6 = M16B_1_6
M16B_01_7 = M16B_1_7
M16B_01_8 = M16B_1_8
M16B_01_9 = M16B_1_9
M16B_01_10 = M16B_1_10
M16B_01_11 = M16B_1_11
M16B_01_12 = M16B_1_12
M16B_02 = M16B_2
M16B_02_1 = M16B_2_1
M16B_02_2 = M16B_2_2
M16B_02_3 = M16B_2_3
M16B_02_4 = M16B_2_4
M16B_02_5 = M16B_2_5
M16B_02_6 = M16B_2_6
M16B_02_7 = M16B_2_7
M16B_02_8 = M16B_2_8
M16B_02_9 = M16B_2_9
M16B_02_10 = M16B_2_10
M16B_02_11 = M16B_2_11
M16B_02_12 = M16B_2_12
M16B_03 = M16B_3
M16B_03_1 = M16B_3_1
M16B_03_2 = M16B_3_2
M16B_03_3 = M16B_3_3
M16B_03_4 = M16B_3_4
M16B_03_5 = M16B_3_5
M16B_03_6 = M16B_3_6
M16B_03_7 = M16B_3_7
M16B_03_8 = M16B_3_8
M16B_03_9 = M16B_3_9
M16B_03_10 = M16B_3_10
M16B_03_11 = M16B_3_11
M16B_03_12 = M16B_3_12
M16B_04 = M16B_4
M16B_04_1 = M16B_4_1
M16B_04_2 = M16B_4_2
M16B_04_3 = M16B_4_3
M16B_04_4 = M16B_4_4
M16B_04_5 = M16B_4_5
M16B_04_6 = M16B_4_6
M16B_04_7 = M16B_4_7
M16B_04_8 = M16B_4_8
M16B_04_9 = M16B_4_9
M16B_04_10 = M16B_4_10
M16B_04_11 = M16B_4_11
M16B_04_12 = M16B_4_12
M16B_05 = M16B_5
M16B_05_1 = M16B_5_1
M16B_05_2 = M16B_5_2
M16B_05_3 = M16B_5_3
M16B_05_4 = M16B_5_4
M16B_05_5 = M16B_5_5
M16B_05_6 = M16B_5_6
M16B_05_7 = M16B_5_7
M16B_05_8 = M16B_5_8
M16B_05_9 = M16B_5_9
M16B_05_10 = M16B_5_10
M16B_05_11 = M16B_5_11
M16B_05_12 = M16B_5_12
M16B_06 = M16B_6
M16B_06_1 = M16B_6_1
M16B_06_2 = M16B_6_2
M16B_06_3 = M16B_6_3
M16B_06_4 = M16B_6_4
M16B_06_5 = M16B_6_5
M16B_06_6 = M16B_6_6
M16B_06_7 = M16B_6_7
M16B_06_8 = M16B_6_8
M16B_06_9 = M16B_6_9
M16B_06_10 = M16B_6_10
M16B_06_11 = M16B_6_11
M16B_06_12 = M16B_6_12
M16B_07 = M16B_7
M16B_07_1 = M16B_7_1
M16B_07_2 = M16B_7_2
M16B_07_3 = M16B_7_3
M16B_07_4 = M16B_7_4
M16B_07_5 = M16B_7_5
M16B_07_6 = M16B_7_6
M16B_07_7 = M16B_7_7
M16B_07_8 = M16B_7_8
M16B_07_9 = M16B_7_9
M16B_07_10 = M16B_7_10
M16B_07_11 = M16B_7_11
M16B_07_12 = M16B_7_12
M16B_08 = M16B_8
M16B_08_1 = M16B_8_1
M16B_08_2 = M16B_8_2
M16B_08_3 = M16B_8_3
M16B_08_4 = M16B_8_4
M16B_08_5 = M16B_8_5
M16B_08_6 = M16B_8_6
M16B_08_7 = M16B_8_7
M16B_08_8 = M16B_8_8
M16B_08_9 = M16B_8_9
M16B_08_10 = M16B_8_10
M16B_08_11 = M16B_8_11
M16B_08_12 = M16B_8_12
M16B_09 = M16B_9
M16B_09_1 = M16B_9_1
M16B_09_2 = M16B_9_2
M16B_09_3 = M16B_9_3
M16B_09_4 = M16B_9_4
M16B_09_5 = M16B_9_5
M16B_09_6 = M16B_9_6
M16B_09_7 = M16B_9_7
M16B_09_8 = M16B_9_8
M16B_09_9 = M16B_9_9
M16B_09_10 = M16B_9_10
M16B_09_11 = M16B_9_11
M16B_09_12 = M16B_9_12
M16B_10 = M16B_10
M16B_10_1 = M16B_10_1
M16B_10_2 = M16B_10_2
M16B_10_3 = M16B_10_3
M16B_10_4 = M16B_10_4
M16B_10_5 = M16B_10_5
M16B_10_6 = M16B_10_6
M16B_10_7 = M16B_10_7
M16B_10_8 = M16B_10_8
M16B_10_9 = M16B_10_9
M16B_10_10 = M16B_10_10
M16B_10_11 = M16B_10_11
M16B_10_12 = M16B_10_12
M16B_11 = M16B_11
M16B_11_1 = M16B_11_1
M16B_11_2 = M16B_11_2
M16B_11_3 = M16B_11_3
M16B_11_4 = M16B_11_4
M16B_11_5 = M16B_11_5
M16B_11_6 = M16B_11_6
M16B_11_7 = M16B_11_7
M16B_11_8 = M16B_11_8
M16B_11_9 = M16B_11_9
M16B_11_10 = M16B_11_10
M16B_11_11 = M16B_11_11
M16B_11_12 = M16B_11_12
M16B_12 = M16B_12
M16B_12_1 = M16B_12_1
M16B_12_2 = M16B_12_2
M16B_12_3 = M16B_12_3
M16B_12_4 = M16B_12_4
M16B_12_5 = M16B_12_5
M16B_12_6 = M16B_12_6
M16B_12_7 = M16B_12_7
M16B_12_8 = M16B_12_8
M16B_12_9 = M16B_12_9
M16B_12_10 = M16B_12_10
M16B_12_11 = M16B_12_11
M16B_12_12 = M16B_12_12
M16B_13 = M16B_13
M16B_13_1 = M16B_13_1
M16B_13_2 = M16B_13_2
M16B_13_3 = M16B_13_3
M16B_13_4 = M16B_13_4
M16B_13_5 = M16B_13_5
M16B_13_6 = M16B_13_6
M16B_13_7 = M16B_13_7
M16B_13_8 = M16B_13_8
M16B_13_9 = M16B_13_9
M16B_13_10 = M16B_13_10
M16B_13_11 = M16B_13_11
M16B_13_12 = M16B_13_12
M16B_14 = M16B_14
M16B_14_1 = M16B_14_1
M16B_14_2 = M16B_14_2
M16B_14_3 = M16B_14_3
M16B_14_4 = M16B_14_4
M16B_14_5 = M16B_14_5
M16B_14_6 = M16B_14_6
M16B_14_7 = M16B_14_7
M16B_14_8 = M16B_14_8
M16B_14_9 = M16B_14_9
M16B_14_10 = M16B_14_10
M16B_14_11 = M16B_14_11
M16B_14_12 = M16B_14_12
M16B_15 = M16B_15
M16B_15_1 = M16B_15_1
M16B_15_2 = M16B_15_2
M16B_15_3 = M16B_15_3
M16B_15_4 = M16B_15_4
M16B_15_5 = M16B_15_5
M16B_15_6 = M16B_15_6
M16B_15_7 = M16B_15_7
M16B_15_8 = M16B_15_8
M16B_15_9 = M16B_15_9
M16B_15_10 = M16B_15_10
M16B_15_11 = M16B_15_11
M16B_15_12 = M16B_15_12
M16B_16 = M16B_16
M16B_16_1 = M16B_16_1
M16B_16_2 = M16B_16_2
M16B_16_3 = M16B_16_3
M16B_16_4 = M16B_16_4
M16B_16_5 = M16B_16_5
M16B_16_6 = M16B_16_6
M16B_16_7 = M16B_16_7
M16B_16_8 = M16B_16_8
M16B_16_9 = M16B_16_9
M16B_16_10 = M16B_16_10
M16B_16_11 = M16B_16_11
M16B_16_12 = M16B_16_12
M16B_17 = M16B_17
M16B_17_1 = M16B_17_1
M16B_17_2 = M16B_17_2
M16B_17_3 = M16B_17_3
M16B_17_4 = M16B_17_4
M16B_17_5 = M16B_17_5
M16B_17_6 = M16B_17_6
M16B_17_7 = M16B_17_7
M16B_17_8 = M16B_17_8
M16B_17_9 = M16B_17_9
M16B_17_10 = M16B_17_10
M16B_17_11 = M16B_17_11
M16B_17_12 = M16B_17_12
M16B_18 = M16B_18
M16B_18_1 = M16B_18_1
M16B_18_2 = M16B_18_2
M16B_18_3 = M16B_18_3
M16B_18_4 = M16B_18_4
M16B_18_5 = M16B_18_5
M16B_18_6 = M16B_18_6
M16B_18_7 = M16B_18_7
M16B_18_8 = M16B_18_8
M16B_18_9 = M16B_18_9
M16B_18_10 = M16B_18_10
M16B_18_11 = M16B_18_11
M16B_18_12 = M16B_18_12
M16B_19 = M16B_19
M16B_19_1 = M16B_19_1
M16B_19_2 = M16B_19_2
M16B_19_3 = M16B_19_3
M16B_19_4 = M16B_19_4
M16B_19_5 = M16B_19_5
M16B_19_6 = M16B_19_6
M16B_19_7 = M16B_19_7
M16B_19_8 = M16B_19_8
M16B_19_9 = M16B_19_9
M16B_19_10 = M16B_19_10
M16B_19_11 = M16B_19_11
M16B_19_12 = M16B_19_12
M16B_20 = M16B_20
M16B_20_1 = M16B_20_1
M16B_20_2 = M16B_20_2
M16B_20_3 = M16B_20_3
M16B_20_4 = M16B_20_4
M16B_20_5 = M16B_20_5
M16B_20_6 = M16B_20_6
M16B_20_7 = M16B_20_7
M16B_20_8 = M16B_20_8
M16B_20_9 = M16B_20_9
M16B_20_10 = M16B_20_10
M16B_20_11 = M16B_20_11
M16B_20_12 = M16B_20_12
M16B_21 = M16B_21
M16B_21_1 = M16B_21_1
M16B_21_2 = M16B_21_2
M16B_21_3 = M16B_21_3
M16B_21_4 = M16B_21_4
M16B_21_5 = M16B_21_5
M16B_21_6 = M16B_21_6
M16B_21_7 = M16B_21_7
M16B_21_8 = M16B_21_8
M16B_21_9 = M16B_21_9
M16B_21_10 = M16B_21_10
M16B_21_11 = M16B_21_11
M16B_21_12 = M16B_21_12
M16B_22 = M16B_22
M16B_22_1 = M16B_22_1
M16B_22_2 = M16B_22_2
M16B_22_3 = M16B_22_3
M16B_22_4 = M16B_22_4
M16B_22_5 = M16B_22_5
M16B_22_6 = M16B_22_6
M16B_22_7 = M16B_22_7
M16B_22_8 = M16B_22_8
M16B_22_9 = M16B_22_9
M16B_22_10 = M16B_22_10
M16B_22_11 = M16B_22_11
M16B_22_12 = M16B_22_12
M16B_23 = M16B_23
M16B_23_1 = M16B_23_1
M16B_23_2 = M16B_23_2
M16B_23_3 = M16B_23_3
M16B_23_4 = M16B_23_4
M16B_23_5 = M16B_23_5
M16B_23_6 = M16B_23_6
M16B_23_7 = M16B_23_7
M16B_23_8 = M16B_23_8
M16B_23_9 = M16B_23_9
M16B_23_10 = M16B_23_10
M16B_23_11 = M16B_23_11
M16B_23_12 = M16B_23_12
M16B_24 = M16B_24
M16B_24_1 = M16B_24_1
M16B_24_2 = M16B_24_2
M16B_24_3 = M16B_24_3
M16B_24_4 = M16B_24_4
M16B_24_5 = M16B_24_5
M16B_24_6 = M16B_24_6
M16B_24_7 = M16B_24_7
M16B_24_8 = M16B_24_8
M16B_24_9 = M16B_24_9
M16B_24_10 = M16B_24_10
M16B_24_11 = M16B_24_11
M16B_24_12 = M16B_24_12
M16B_25 = M16B_25
M16B_25_1 = M16B_25_1
M16B_25_2 = M16B_25_2
M16B_25_3 = M16B_25_3
M16B_25_4 = M16B_25_4
M16B_25_5 = M16B_25_5
M16B_25_6 = M16B_25_6
M16B_25_7 = M16B_25_7
M16B_25_8 = M16B_25_8
M16B_25_9 = M16B_25_9
M16B_25_10 = M16B_25_10
M16B_25_11 = M16B_25_11
M16B_25_12 = M16B_25_12
M16B_26 = M16B_26
M16B_26_1 = M16B_26_1
M16B_26_2 = M16B_26_2
M16B_26_3 = M16B_26_3
M16B_26_4 = M16B_26_4
M16B_26_5 = M16B_26_5
M16B_26_6 = M16B_26_6
M16B_26_7 = M16B_26_7
M16B_26_8 = M16B_26_8
M16B_26_9 = M16B_26_9
M16B_26_10 = M16B_26_10
M16B_26_11 = M16B_26_11
M16B_26_12 = M16B_26_12
M16B_27 = M16B_27
M16B_27_1 = M16B_27_1
M16B_27_2 = M16B_27_2
M16B_27_3 = M16B_27_3
M16B_27_4 = M16B_27_4
M16B_27_5 = M16B_27_5
M16B_27_6 = M16B_27_6
M16B_27_7 = M16B_27_7
M16B_27_8 = M16B_27_8
M16B_27_9 = M16B_27_9
M16B_27_10 = M16B_27_10
M16B_27_11 = M16B_27_11
M16B_27_12 = M16B_27_12
M16B_28 = M16B_28
M16B_28_1 = M16B_28_1
M16B_28_2 = M16B_28_2
M16B_28_3 = M16B_28_3
M16B_28_4 = M16B_28_4
M16B_28_5 = M16B_28_5
M16B_28_6 = M16B_28_6
M16B_28_7 = M16B_28_7
M16B_28_8 = M16B_28_8
M16B_28_9 = M16B_28_9
M16B_28_10 = M16B_28_10
M16B_28_11 = M16B_28_11
M16B_28_12 = M16B_28_12
M16B_29 = M16B_29
M16B_29_1 = M16B_29_1
M16B_29_2 = M16B_29_2
M16B_29_3 = M16B_29_3
M16B_29_4 = M16B_29_4
M16B_29_5 = M16B_29_5
M16B_29_6 = M16B_29_6
M16B_29_7 = M16B_29_7
M16B_29_8 = M16B_29_8
M16B_29_9 = M16B_29_9
M16B_29_10 = M16B_29_10
M16B_29_11 = M16B_29_11
M16B_29_12 = M16B_29_12
M16B_30 = M16B_30
M16B_30_1 = M16B_30_1
M16B_30_2 = M16B_30_2
M16B_30_3 = M16B_30_3
M16B_30_4 = M16B_30_4
M16B_30_5 = M16B_30_5
M16B_30_6 = M16B_30_6
M16B_30_7 = M16B_30_7
M16B_30_8 = M16B_30_8
M16B_30_9 = M16B_30_9
M16B_30_10 = M16B_30_10
M16B_30_11 = M16B_30_11
M16B_30_12 = M16B_30_12
New_M16B01 = New_M16B_1
New_M16B01_1 = New_M16B_1_1
New_M16B01_2 = New_M16B_1_2
New_M16B01_3 = New_M16B_1_3
New_M16B01_4 = New_M16B_1_4
New_M16B01_5 = New_M16B_1_5
New_M16B01_6 = New_M16B_1_6
New_M16B01_7 = New_M16B_1_7
New_M16B01_8 = New_M16B_1_8
New_M16B01_9 = New_M16B_1_9
New_M16B01_10 = New_M16B_1_10
New_M16B01_11 = New_M16B_1_11
New_M16B01_12 = New_M16B_1_12
New_M16B01_13 = New_M16B_1_13
New_M16B01_14 = New_M16B_1_14
New_M16B01_15 = New_M16B_1_15
New_M16B01_16 = New_M16B_1_16
New_M16B01_17 = New_M16B_1_17
New_M16B01_18 = New_M16B_1_18
New_M16B01_19 = New_M16B_1_19
New_M16B01_20 = New_M16B_1_20
New_M16B02 = New_M16B_2
New_M16B02_1 = New_M16B_2_1
New_M16B02_2 = New_M16B_2_2
New_M16B02_3 = New_M16B_2_3
New_M16B02_4 = New_M16B_2_4
New_M16B02_5 = New_M16B_2_5
New_M16B02_6 = New_M16B_2_6
New_M16B02_7 = New_M16B_2_7
New_M16B02_8 = New_M16B_2_8
New_M16B02_9 = New_M16B_2_9
New_M16B02_10 = New_M16B_2_10
New_M16B02_11 = New_M16B_2_11
New_M16B02_12 = New_M16B_2_12
New_M16B02_13 = New_M16B_2_13
New_M16B02_14 = New_M16B_2_14
New_M16B02_15 = New_M16B_2_15
New_M16B02_16 = New_M16B_2_16
New_M16B02_17 = New_M16B_2_17
New_M16B02_18 = New_M16B_2_18
New_M16B02_19 = New_M16B_2_19
New_M16B02_20 = New_M16B_2_20
New_M16B03 = New_M16B_3
New_M16B03_1 = New_M16B_3_1
New_M16B03_2 = New_M16B_3_2
New_M16B03_3 = New_M16B_3_3
New_M16B03_4 = New_M16B_3_4
New_M16B03_5 = New_M16B_3_5
New_M16B03_6 = New_M16B_3_6
New_M16B03_7 = New_M16B_3_7
New_M16B03_8 = New_M16B_3_8
New_M16B03_9 = New_M16B_3_9
New_M16B03_10 = New_M16B_3_10
New_M16B03_11 = New_M16B_3_11
New_M16B03_12 = New_M16B_3_12
New_M16B03_13 = New_M16B_3_13
New_M16B03_14 = New_M16B_3_14
New_M16B03_15 = New_M16B_3_15
New_M16B03_16 = New_M16B_3_16
New_M16B03_17 = New_M16B_3_17
New_M16B03_18 = New_M16B_3_18
New_M16B03_19 = New_M16B_3_19
New_M16B03_20 = New_M16B_3_20
New_M16B04 = New_M16B_4
New_M16B04_1 = New_M16B_4_1
New_M16B04_2 = New_M16B_4_2
New_M16B04_3 = New_M16B_4_3
New_M16B04_4 = New_M16B_4_4
New_M16B04_5 = New_M16B_4_5
New_M16B04_6 = New_M16B_4_6
New_M16B04_7 = New_M16B_4_7
New_M16B04_8 = New_M16B_4_8
New_M16B04_9 = New_M16B_4_9
New_M16B04_10 = New_M16B_4_10
New_M16B04_11 = New_M16B_4_11
New_M16B04_12 = New_M16B_4_12
New_M16B04_13 = New_M16B_4_13
New_M16B04_14 = New_M16B_4_14
New_M16B04_15 = New_M16B_4_15
New_M16B04_16 = New_M16B_4_16
New_M16B04_17 = New_M16B_4_17
New_M16B04_18 = New_M16B_4_18
New_M16B04_19 = New_M16B_4_19
New_M16B04_20 = New_M16B_4_20
New_M16B05 = New_M16B_5
New_M16B05_1 = New_M16B_5_1
New_M16B05_2 = New_M16B_5_2
New_M16B05_3 = New_M16B_5_3
New_M16B05_4 = New_M16B_5_4
New_M16B05_5 = New_M16B_5_5
New_M16B05_6 = New_M16B_5_6
New_M16B05_7 = New_M16B_5_7
New_M16B05_8 = New_M16B_5_8
New_M16B05_9 = New_M16B_5_9
New_M16B05_10 = New_M16B_5_10
New_M16B05_11 = New_M16B_5_11
New_M16B05_12 = New_M16B_5_12
New_M16B05_13 = New_M16B_5_13
New_M16B05_14 = New_M16B_5_14
New_M16B05_15 = New_M16B_5_15
New_M16B05_16 = New_M16B_5_16
New_M16B05_17 = New_M16B_5_17
New_M16B05_18 = New_M16B_5_18
New_M16B05_19 = New_M16B_5_19
New_M16B05_20 = New_M16B_5_20
New_M16B06 = New_M16B_6
New_M16B06_1 = New_M16B_6_1
New_M16B06_2 = New_M16B_6_2
New_M16B06_3 = New_M16B_6_3
New_M16B06_4 = New_M16B_6_4
New_M16B06_5 = New_M16B_6_5
New_M16B06_6 = New_M16B_6_6
New_M16B06_7 = New_M16B_6_7
New_M16B06_8 = New_M16B_6_8
New_M16B06_9 = New_M16B_6_9
New_M16B06_10 = New_M16B_6_10
New_M16B06_11 = New_M16B_6_11
New_M16B06_12 = New_M16B_6_12
New_M16B06_13 = New_M16B_6_13
New_M16B06_14 = New_M16B_6_14
New_M16B06_15 = New_M16B_6_15
New_M16B06_16 = New_M16B_6_16
New_M16B06_17 = New_M16B_6_17
New_M16B06_18 = New_M16B_6_18
New_M16B06_19 = New_M16B_6_19
New_M16B06_20 = New_M16B_6_20
New_M16B07 = New_M16B_7
New_M16B07_1 = New_M16B_7_1
New_M16B07_2 = New_M16B_7_2
New_M16B07_3 = New_M16B_7_3
New_M16B07_4 = New_M16B_7_4
New_M16B07_5 = New_M16B_7_5
New_M16B07_6 = New_M16B_7_6
New_M16B07_7 = New_M16B_7_7
New_M16B07_8 = New_M16B_7_8
New_M16B07_9 = New_M16B_7_9
New_M16B07_10 = New_M16B_7_10
New_M16B07_11 = New_M16B_7_11
New_M16B07_12 = New_M16B_7_12
New_M16B07_13 = New_M16B_7_13
New_M16B07_14 = New_M16B_7_14
New_M16B07_15 = New_M16B_7_15
New_M16B07_16 = New_M16B_7_16
New_M16B07_17 = New_M16B_7_17
New_M16B07_18 = New_M16B_7_18
New_M16B07_19 = New_M16B_7_19
New_M16B07_20 = New_M16B_7_20
New_M16B08 = New_M16B_8
New_M16B08_1 = New_M16B_8_1
New_M16B08_2 = New_M16B_8_2
New_M16B08_3 = New_M16B_8_3
New_M16B08_4 = New_M16B_8_4
New_M16B08_5 = New_M16B_8_5
New_M16B08_6 = New_M16B_8_6
New_M16B08_7 = New_M16B_8_7
New_M16B08_8 = New_M16B_8_8
New_M16B08_9 = New_M16B_8_9
New_M16B08_10 = New_M16B_8_10
New_M16B08_11 = New_M16B_8_11
New_M16B08_12 = New_M16B_8_12
New_M16B08_13 = New_M16B_8_13
New_M16B08_14 = New_M16B_8_14
New_M16B08_15 = New_M16B_8_15
New_M16B08_16 = New_M16B_8_16
New_M16B08_17 = New_M16B_8_17
New_M16B08_18 = New_M16B_8_18
New_M16B08_19 = New_M16B_8_19
New_M16B08_20 = New_M16B_8_20
New_M16B09 = New_M16B_9
New_M16B09_1 = New_M16B_9_1
New_M16B09_2 = New_M16B_9_2
New_M16B09_3 = New_M16B_9_3
New_M16B09_4 = New_M16B_9_4
New_M16B09_5 = New_M16B_9_5
New_M16B09_6 = New_M16B_9_6
New_M16B09_7 = New_M16B_9_7
New_M16B09_8 = New_M16B_9_8
New_M16B09_9 = New_M16B_9_9
New_M16B09_10 = New_M16B_9_10
New_M16B09_11 = New_M16B_9_11
New_M16B09_12 = New_M16B_9_12
New_M16B09_13 = New_M16B_9_13
New_M16B09_14 = New_M16B_9_14
New_M16B09_15 = New_M16B_9_15
New_M16B09_16 = New_M16B_9_16
New_M16B09_17 = New_M16B_9_17
New_M16B09_18 = New_M16B_9_18
New_M16B09_19 = New_M16B_9_19
New_M16B09_20 = New_M16B_9_20
New_M16B10 = New_M16B_10
New_M16B10_1 = New_M16B_10_1
New_M16B10_2 = New_M16B_10_2
New_M16B10_3 = New_M16B_10_3
New_M16B10_4 = New_M16B_10_4
New_M16B10_5 = New_M16B_10_5
New_M16B10_6 = New_M16B_10_6
New_M16B10_7 = New_M16B_10_7
New_M16B10_8 = New_M16B_10_8
New_M16B10_9 = New_M16B_10_9
New_M16B10_10 = New_M16B_10_10
New_M16B10_11 = New_M16B_10_11
New_M16B10_12 = New_M16B_10_12
New_M16B10_13 = New_M16B_10_13
New_M16B10_14 = New_M16B_10_14
New_M16B10_15 = New_M16B_10_15
New_M16B10_16 = New_M16B_10_16
New_M16B10_17 = New_M16B_10_17
New_M16B10_18 = New_M16B_10_18
New_M16B10_19 = New_M16B_10_19
New_M16B10_20 = New_M16B_10_20
New_M16B11 = New_M16B_11
New_M16B11_1 = New_M16B_11_1
New_M16B11_2 = New_M16B_11_2
New_M16B11_3 = New_M16B_11_3
New_M16B11_4 = New_M16B_11_4
New_M16B11_5 = New_M16B_11_5
New_M16B11_6 = New_M16B_11_6
New_M16B11_7 = New_M16B_11_7
New_M16B11_8 = New_M16B_11_8
New_M16B11_9 = New_M16B_11_9
New_M16B11_10 = New_M16B_11_10
New_M16B11_11 = New_M16B_11_11
New_M16B11_12 = New_M16B_11_12
New_M16B11_13 = New_M16B_11_13
New_M16B11_14 = New_M16B_11_14
New_M16B11_15 = New_M16B_11_15
New_M16B11_16 = New_M16B_11_16
New_M16B11_17 = New_M16B_11_17
New_M16B11_18 = New_M16B_11_18
New_M16B11_19 = New_M16B_11_19
New_M16B11_20 = New_M16B_11_20
New_M16B12 = New_M16B_12
New_M16B12_1 = New_M16B_12_1
New_M16B12_2 = New_M16B_12_2
New_M16B12_3 = New_M16B_12_3
New_M16B12_4 = New_M16B_12_4
New_M16B12_5 = New_M16B_12_5
New_M16B12_6 = New_M16B_12_6
New_M16B12_7 = New_M16B_12_7
New_M16B12_8 = New_M16B_12_8
New_M16B12_9 = New_M16B_12_9
New_M16B12_10 = New_M16B_12_10
New_M16B12_11 = New_M16B_12_11
New_M16B12_12 = New_M16B_12_12
New_M16B12_13 = New_M16B_12_13
New_M16B12_14 = New_M16B_12_14
New_M16B12_15 = New_M16B_12_15
New_M16B12_16 = New_M16B_12_16
New_M16B12_17 = New_M16B_12_17
New_M16B12_18 = New_M16B_12_18
New_M16B12_19 = New_M16B_12_19
New_M16B12_20 = New_M16B_12_20
New_M16B13 = New_M16B_13
New_M16B13_1 = New_M16B_13_1
New_M16B13_2 = New_M16B_13_2
New_M16B13_3 = New_M16B_13_3
New_M16B13_4 = New_M16B_13_4
New_M16B13_5 = New_M16B_13_5
New_M16B13_6 = New_M16B_13_6
New_M16B13_7 = New_M16B_13_7
New_M16B13_8 = New_M16B_13_8
New_M16B13_9 = New_M16B_13_9
New_M16B13_10 = New_M16B_13_10
New_M16B13_11 = New_M16B_13_11
New_M16B13_12 = New_M16B_13_12
New_M16B13_13 = New_M16B_13_13
New_M16B13_14 = New_M16B_13_14
New_M16B13_15 = New_M16B_13_15
New_M16B13_16 = New_M16B_13_16
New_M16B13_17 = New_M16B_13_17
New_M16B13_18 = New_M16B_13_18
New_M16B13_19 = New_M16B_13_19
New_M16B13_20 = New_M16B_13_20
New_M16B14 = New_M16B_14
New_M16B14_1 = New_M16B_14_1
New_M16B14_2 = New_M16B_14_2
New_M16B14_3 = New_M16B_14_3
New_M16B14_4 = New_M16B_14_4
New_M16B14_5 = New_M16B_14_5
New_M16B14_6 = New_M16B_14_6
New_M16B14_7 = New_M16B_14_7
New_M16B14_8 = New_M16B_14_8
New_M16B14_9 = New_M16B_14_9
New_M16B14_10 = New_M16B_14_10
New_M16B14_11 = New_M16B_14_11
New_M16B14_12 = New_M16B_14_12
New_M16B14_13 = New_M16B_14_13
New_M16B14_14 = New_M16B_14_14
New_M16B14_15 = New_M16B_14_15
New_M16B14_16 = New_M16B_14_16
New_M16B14_17 = New_M16B_14_17
New_M16B14_18 = New_M16B_14_18
New_M16B14_19 = New_M16B_14_19
New_M16B14_20 = New_M16B_14_20
;
run;
ods html file="E:\Projects\ITC\Apr 21\freq_q16.xls";

proc freq data=v1.Selectvars_rawdata_7;
tables
M16A_1
M16A_1_1
M16A_1_2
M16A_1_3
M16A_1_4
M16A_1_5
M16A_1_6
M16A_1_7
M16A_1_8
M16A_1_9
M16A_1_10
M16A_1_11
M16A_1_12
M16A_1_13
M16A_2
M16A_2_1
M16A_2_2
M16A_2_3
M16A_2_4
M16A_2_5
M16A_2_6
M16A_2_7
M16A_2_8
M16A_2_9
M16A_2_10
M16A_2_11
M16A_2_12
M16A_2_13
M16A_3
M16A_3_1
M16A_3_2
M16A_3_3
M16A_3_4
M16A_3_5
M16A_3_6
M16A_3_7
M16A_3_8
M16A_3_9
M16A_3_10
M16A_3_11
M16A_3_12
M16A_3_13
M16A_4
M16A_4_1
M16A_4_2
M16A_4_3
M16A_4_4
M16A_4_5
M16A_4_6
M16A_4_7
M16A_4_8
M16A_4_9
M16A_4_10
M16A_4_11
M16A_4_12
M16A_4_13
M16A_5
M16A_5_1
M16A_5_2
M16A_5_3
M16A_5_4
M16A_5_5
M16A_5_6
M16A_5_7
M16A_5_8
M16A_5_9
M16A_5_10
M16A_5_11
M16A_5_12
M16A_5_13
M16A_6
M16A_6_1
M16A_6_2
M16A_6_3
M16A_6_4
M16A_6_5
M16A_6_6
M16A_6_7
M16A_6_8
M16A_6_9
M16A_6_10
M16A_6_11
M16A_6_12
M16A_6_13
M16A_7
M16A_7_1
M16A_7_2
M16A_7_3
M16A_7_4
M16A_7_5
M16A_7_6
M16A_7_7
M16A_7_8
M16A_7_9
M16A_7_10
M16A_7_11
M16A_7_12
M16A_7_13
M16A_8
M16A_8_1
M16A_8_2
M16A_8_3
M16A_8_4
M16A_8_5
M16A_8_6
M16A_8_7
M16A_8_8
M16A_8_9
M16A_8_10
M16A_8_11
M16A_8_12
M16A_8_13
M16A_9
M16A_9_1
M16A_9_2
M16A_9_3
M16A_9_4
M16A_9_5
M16A_9_6
M16A_9_7
M16A_9_8
M16A_9_9
M16A_9_10
M16A_9_11
M16A_9_12
M16A_9_13
M16A_10
M16A_10_1
M16A_10_2
M16A_10_3
M16A_10_4
M16A_10_5
M16A_10_6
M16A_10_7
M16A_10_8
M16A_10_9
M16A_10_10
M16A_10_11
M16A_10_12
M16A_10_13
M16A_11
M16A_11_1
M16A_11_2
M16A_11_3
M16A_11_4
M16A_11_5
M16A_11_6
M16A_11_7
M16A_11_8
M16A_11_9
M16A_11_10
M16A_11_11
M16A_11_12
M16A_11_13
M16A_12
M16A_12_1
M16A_12_2
M16A_12_3
M16A_12_4
M16A_12_5
M16A_12_6
M16A_12_7
M16A_12_8
M16A_12_9
M16A_12_10
M16A_12_11
M16A_12_12
M16A_12_13
M16A_13
M16A_13_1
M16A_13_2
M16A_13_3
M16A_13_4
M16A_13_5
M16A_13_6
M16A_13_7
M16A_13_8
M16A_13_9
M16A_13_10
M16A_13_11
M16A_13_12
M16A_13_13
M16A_14
M16A_14_1
M16A_14_2
M16A_14_3
M16A_14_4
M16A_14_5
M16A_14_6
M16A_14_7
M16A_14_8
M16A_14_9
M16A_14_10
M16A_14_11
M16A_14_12
M16A_14_13
M16A_15
M16A_15_1
M16A_15_2
M16A_15_3
M16A_15_4
M16A_15_5
M16A_15_6
M16A_15_7
M16A_15_8
M16A_15_9
M16A_15_10
M16A_15_11
M16A_15_12
M16A_15_13
M16B_1
M16B_1_1
M16B_1_2
M16B_1_3
M16B_1_4
M16B_1_5
M16B_1_6
M16B_1_7
M16B_1_8
M16B_1_9
M16B_1_10
M16B_1_11
M16B_1_12
M16B_2
M16B_2_1
M16B_2_2
M16B_2_3
M16B_2_4
M16B_2_5
M16B_2_6
M16B_2_7
M16B_2_8
M16B_2_9
M16B_2_10
M16B_2_11
M16B_2_12
M16B_3
M16B_3_1
M16B_3_2
M16B_3_3
M16B_3_4
M16B_3_5
M16B_3_6
M16B_3_7
M16B_3_8
M16B_3_9
M16B_3_10
M16B_3_11
M16B_3_12
M16B_4
M16B_4_1
M16B_4_2
M16B_4_3
M16B_4_4
M16B_4_5
M16B_4_6
M16B_4_7
M16B_4_8
M16B_4_9
M16B_4_10
M16B_4_11
M16B_4_12
M16B_5
M16B_5_1
M16B_5_2
M16B_5_3
M16B_5_4
M16B_5_5
M16B_5_6
M16B_5_7
M16B_5_8
M16B_5_9
M16B_5_10
M16B_5_11
M16B_5_12
M16B_6
M16B_6_1
M16B_6_2
M16B_6_3
M16B_6_4
M16B_6_5
M16B_6_6
M16B_6_7
M16B_6_8
M16B_6_9
M16B_6_10
M16B_6_11
M16B_6_12
M16B_7
M16B_7_1
M16B_7_2
M16B_7_3
M16B_7_4
M16B_7_5
M16B_7_6
M16B_7_7
M16B_7_8
M16B_7_9
M16B_7_10
M16B_7_11
M16B_7_12
M16B_8
M16B_8_1
M16B_8_2
M16B_8_3
M16B_8_4
M16B_8_5
M16B_8_6
M16B_8_7
M16B_8_8
M16B_8_9
M16B_8_10
M16B_8_11
M16B_8_12
M16B_9
M16B_9_1
M16B_9_2
M16B_9_3
M16B_9_4
M16B_9_5
M16B_9_6
M16B_9_7
M16B_9_8
M16B_9_9
M16B_9_10
M16B_9_11
M16B_9_12
M16B_10
M16B_10_1
M16B_10_2
M16B_10_3
M16B_10_4
M16B_10_5
M16B_10_6
M16B_10_7
M16B_10_8
M16B_10_9
M16B_10_10
M16B_10_11
M16B_10_12
M16B_11
M16B_11_1
M16B_11_2
M16B_11_3
M16B_11_4
M16B_11_5
M16B_11_6
M16B_11_7
M16B_11_8
M16B_11_9
M16B_11_10
M16B_11_11
M16B_11_12
M16B_12
M16B_12_1
M16B_12_2
M16B_12_3
M16B_12_4
M16B_12_5
M16B_12_6
M16B_12_7
M16B_12_8
M16B_12_9
M16B_12_10
M16B_12_11
M16B_12_12
M16B_13
M16B_13_1
M16B_13_2
M16B_13_3
M16B_13_4
M16B_13_5
M16B_13_6
M16B_13_7
M16B_13_8
M16B_13_9
M16B_13_10
M16B_13_11
M16B_13_12
M16B_14
M16B_14_1
M16B_14_2
M16B_14_3
M16B_14_4
M16B_14_5
M16B_14_6
M16B_14_7
M16B_14_8
M16B_14_9
M16B_14_10
M16B_14_11
M16B_14_12
M16B_15
M16B_15_1
M16B_15_2
M16B_15_3
M16B_15_4
M16B_15_5
M16B_15_6
M16B_15_7
M16B_15_8
M16B_15_9
M16B_15_10
M16B_15_11
M16B_15_12
M16B_16
M16B_16_1
M16B_16_2
M16B_16_3
M16B_16_4
M16B_16_5
M16B_16_6
M16B_16_7
M16B_16_8
M16B_16_9
M16B_16_10
M16B_16_11
M16B_16_12
M16B_17
M16B_17_1
M16B_17_2
M16B_17_3
M16B_17_4
M16B_17_5
M16B_17_6
M16B_17_7
M16B_17_8
M16B_17_9
M16B_17_10
M16B_17_11
M16B_17_12
M16B_18
M16B_18_1
M16B_18_2
M16B_18_3
M16B_18_4
M16B_18_5
M16B_18_6
M16B_18_7
M16B_18_8
M16B_18_9
M16B_18_10
M16B_18_11
M16B_18_12
M16B_19
M16B_19_1
M16B_19_2
M16B_19_3
M16B_19_4
M16B_19_5
M16B_19_6
M16B_19_7
M16B_19_8
M16B_19_9
M16B_19_10
M16B_19_11
M16B_19_12
M16B_20
M16B_20_1
M16B_20_2
M16B_20_3
M16B_20_4
M16B_20_5
M16B_20_6
M16B_20_7
M16B_20_8
M16B_20_9
M16B_20_10
M16B_20_11
M16B_20_12
M16B_21
M16B_21_1
M16B_21_2
M16B_21_3
M16B_21_4
M16B_21_5
M16B_21_6
M16B_21_7
M16B_21_8
M16B_21_9
M16B_21_10
M16B_21_11
M16B_21_12
M16B_22
M16B_22_1
M16B_22_2
M16B_22_3
M16B_22_4
M16B_22_5
M16B_22_6
M16B_22_7
M16B_22_8
M16B_22_9
M16B_22_10
M16B_22_11
M16B_22_12
M16B_23
M16B_23_1
M16B_23_2
M16B_23_3
M16B_23_4
M16B_23_5
M16B_23_6
M16B_23_7
M16B_23_8
M16B_23_9
M16B_23_10
M16B_23_11
M16B_23_12
M16B_24
M16B_24_1
M16B_24_2
M16B_24_3
M16B_24_4
M16B_24_5
M16B_24_6
M16B_24_7
M16B_24_8
M16B_24_9
M16B_24_10
M16B_24_11
M16B_24_12
M16B_25
M16B_25_1
M16B_25_2
M16B_25_3
M16B_25_4
M16B_25_5
M16B_25_6
M16B_25_7
M16B_25_8
M16B_25_9
M16B_25_10
M16B_25_11
M16B_25_12
M16B_26
M16B_26_1
M16B_26_2
M16B_26_3
M16B_26_4
M16B_26_5
M16B_26_6
M16B_26_7
M16B_26_8
M16B_26_9
M16B_26_10
M16B_26_11
M16B_26_12
M16B_27
M16B_27_1
M16B_27_2
M16B_27_3
M16B_27_4
M16B_27_5
M16B_27_6
M16B_27_7
M16B_27_8
M16B_27_9
M16B_27_10
M16B_27_11
M16B_27_12
M16B_28
M16B_28_1
M16B_28_2
M16B_28_3
M16B_28_4
M16B_28_5
M16B_28_6
M16B_28_7
M16B_28_8
M16B_28_9
M16B_28_10
M16B_28_11
M16B_28_12
M16B_29
M16B_29_1
M16B_29_2
M16B_29_3
M16B_29_4
M16B_29_5
M16B_29_6
M16B_29_7
M16B_29_8
M16B_29_9
M16B_29_10
M16B_29_11
M16B_29_12
M16B_30
M16B_30_1
M16B_30_2
M16B_30_3
M16B_30_4
M16B_30_5
M16B_30_6
M16B_30_7
M16B_30_8
M16B_30_9
M16B_30_10
M16B_30_11
M16B_30_12
New_M16B_1
New_M16B_1_1
New_M16B_1_2
New_M16B_1_3
New_M16B_1_4
New_M16B_1_5
New_M16B_1_6
New_M16B_1_7
New_M16B_1_8
New_M16B_1_9
New_M16B_1_10
New_M16B_1_11
New_M16B_1_12
New_M16B_1_13
New_M16B_1_14
New_M16B_1_15
New_M16B_1_16
New_M16B_1_17
New_M16B_1_18
New_M16B_1_19
New_M16B_1_20
New_M16B_2
New_M16B_2_1
New_M16B_2_2
New_M16B_2_3
New_M16B_2_4
New_M16B_2_5
New_M16B_2_6
New_M16B_2_7
New_M16B_2_8
New_M16B_2_9
New_M16B_2_10
New_M16B_2_11
New_M16B_2_12
New_M16B_2_13
New_M16B_2_14
New_M16B_2_15
New_M16B_2_16
New_M16B_2_17
New_M16B_2_18
New_M16B_2_19
New_M16B_2_20
New_M16B_3
New_M16B_3_1
New_M16B_3_2
New_M16B_3_3
New_M16B_3_4
New_M16B_3_5
New_M16B_3_6
New_M16B_3_7
New_M16B_3_8
New_M16B_3_9
New_M16B_3_10
New_M16B_3_11
New_M16B_3_12
New_M16B_3_13
New_M16B_3_14
New_M16B_3_15
New_M16B_3_16
New_M16B_3_17
New_M16B_3_18
New_M16B_3_19
New_M16B_3_20
New_M16B_4
New_M16B_4_1
New_M16B_4_2
New_M16B_4_3
New_M16B_4_4
New_M16B_4_5
New_M16B_4_6
New_M16B_4_7
New_M16B_4_8
New_M16B_4_9
New_M16B_4_10
New_M16B_4_11
New_M16B_4_12
New_M16B_4_13
New_M16B_4_14
New_M16B_4_15
New_M16B_4_16
New_M16B_4_17
New_M16B_4_18
New_M16B_4_19
New_M16B_4_20
New_M16B_5
New_M16B_5_1
New_M16B_5_2
New_M16B_5_3
New_M16B_5_4
New_M16B_5_5
New_M16B_5_6
New_M16B_5_7
New_M16B_5_8
New_M16B_5_9
New_M16B_5_10
New_M16B_5_11
New_M16B_5_12
New_M16B_5_13
New_M16B_5_14
New_M16B_5_15
New_M16B_5_16
New_M16B_5_17
New_M16B_5_18
New_M16B_5_19
New_M16B_5_20
New_M16B_6
New_M16B_6_1
New_M16B_6_2
New_M16B_6_3
New_M16B_6_4
New_M16B_6_5
New_M16B_6_6
New_M16B_6_7
New_M16B_6_8
New_M16B_6_9
New_M16B_6_10
New_M16B_6_11
New_M16B_6_12
New_M16B_6_13
New_M16B_6_14
New_M16B_6_15
New_M16B_6_16
New_M16B_6_17
New_M16B_6_18
New_M16B_6_19
New_M16B_6_20
New_M16B_7
New_M16B_7_1
New_M16B_7_2
New_M16B_7_3
New_M16B_7_4
New_M16B_7_5
New_M16B_7_6
New_M16B_7_7
New_M16B_7_8
New_M16B_7_9
New_M16B_7_10
New_M16B_7_11
New_M16B_7_12
New_M16B_7_13
New_M16B_7_14
New_M16B_7_15
New_M16B_7_16
New_M16B_7_17
New_M16B_7_18
New_M16B_7_19
New_M16B_7_20
New_M16B_8
New_M16B_8_1
New_M16B_8_2
New_M16B_8_3
New_M16B_8_4
New_M16B_8_5
New_M16B_8_6
New_M16B_8_7
New_M16B_8_8
New_M16B_8_9
New_M16B_8_10
New_M16B_8_11
New_M16B_8_12
New_M16B_8_13
New_M16B_8_14
New_M16B_8_15
New_M16B_8_16
New_M16B_8_17
New_M16B_8_18
New_M16B_8_19
New_M16B_8_20
New_M16B_9
New_M16B_9_1
New_M16B_9_2
New_M16B_9_3
New_M16B_9_4
New_M16B_9_5
New_M16B_9_6
New_M16B_9_7
New_M16B_9_8
New_M16B_9_9
New_M16B_9_10
New_M16B_9_11
New_M16B_9_12
New_M16B_9_13
New_M16B_9_14
New_M16B_9_15
New_M16B_9_16
New_M16B_9_17
New_M16B_9_18
New_M16B_9_19
New_M16B_9_20
New_M16B_10
New_M16B_10_1
New_M16B_10_2
New_M16B_10_3
New_M16B_10_4
New_M16B_10_5
New_M16B_10_6
New_M16B_10_7
New_M16B_10_8
New_M16B_10_9
New_M16B_10_10
New_M16B_10_11
New_M16B_10_12
New_M16B_10_13
New_M16B_10_14
New_M16B_10_15
New_M16B_10_16
New_M16B_10_17
New_M16B_10_18
New_M16B_10_19
New_M16B_10_20
New_M16B_11
New_M16B_11_1
New_M16B_11_2
New_M16B_11_3
New_M16B_11_4
New_M16B_11_5
New_M16B_11_6
New_M16B_11_7
New_M16B_11_8
New_M16B_11_9
New_M16B_11_10
New_M16B_11_11
New_M16B_11_12
New_M16B_11_13
New_M16B_11_14
New_M16B_11_15
New_M16B_11_16
New_M16B_11_17
New_M16B_11_18
New_M16B_11_19
New_M16B_11_20
New_M16B_12
New_M16B_12_1
New_M16B_12_2
New_M16B_12_3
New_M16B_12_4
New_M16B_12_5
New_M16B_12_6
New_M16B_12_7
New_M16B_12_8
New_M16B_12_9
New_M16B_12_10
New_M16B_12_11
New_M16B_12_12
New_M16B_12_13
New_M16B_12_14
New_M16B_12_15
New_M16B_12_16
New_M16B_12_17
New_M16B_12_18
New_M16B_12_19
New_M16B_12_20
New_M16B_13
New_M16B_13_1
New_M16B_13_2
New_M16B_13_3
New_M16B_13_4
New_M16B_13_5
New_M16B_13_6
New_M16B_13_7
New_M16B_13_8
New_M16B_13_9
New_M16B_13_10
New_M16B_13_11
New_M16B_13_12
New_M16B_13_13
New_M16B_13_14
New_M16B_13_15
New_M16B_13_16
New_M16B_13_17
New_M16B_13_18
New_M16B_13_19
New_M16B_13_20
New_M16B_14
New_M16B_14_1
New_M16B_14_2
New_M16B_14_3
New_M16B_14_4
New_M16B_14_5
New_M16B_14_6
New_M16B_14_7
New_M16B_14_8
New_M16B_14_9
New_M16B_14_10
New_M16B_14_11
New_M16B_14_12
New_M16B_14_13
New_M16B_14_14
New_M16B_14_15
New_M16B_14_16
New_M16B_14_17
New_M16B_14_18
New_M16B_14_19
New_M16B_14_20
;run;
ods html close;

data v1.Selectvars_rawdata_8;
retain
M16A_1
M16A_2
M16A_3
M16A_4
M16A_5
M16A_6
M16A_7
M16A_8
M16A_9
M16A_10
M16A_11
M16A_12
M16A_13
M16A_14
M16A_15
M16B_1
M16B_2
M16B_3
M16B_4
M16B_5
M16B_6
M16B_7
M16B_8
M16B_9
M16B_10
M16B_11
M16B_12
M16B_13
M16B_14
M16B_15
M16B_16
M16B_17
M16B_18
M16B_19
M16B_20
M16B_21
M16B_22
M16B_23
M16B_24
M16B_25
M16B_26
M16B_27
M16B_28
M16B_29
M16B_30
New_M16B_1
New_M16B_2
New_M16B_3
New_M16B_4
New_M16B_5
New_M16B_6
New_M16B_7
New_M16B_8
New_M16B_9
New_M16B_10
New_M16B_11
New_M16B_12
New_M16B_13
New_M16B_14;
set v1.Selectvars_rawdata_7;
;
run;

data v1.Selectvars_rawdata_9;
set v1.Selectvars_rawdata_8;
array aaa(*) M16A_1-- M16A_15;
do i=1 to 15;
if aaa(i)= 1 then Q16_Clinic_All_Clear = 1 ;
if aaa(i)= 3 then Q16_Clinic_Plus = 1 ;
if aaa(i)= 4 then Q16_Dove = 1 ;
if aaa(i)= 5 then Q16_Essenza = 1 ;
if aaa(i)= 31 then Q16_Garnier = 1 ;
if aaa(i)= 8 then Q16_Garnier_A_D = 1 ;
if aaa(i)= 10 then Q16_Head_Shoulder = 1 ;
if aaa(i)= 11 then Q16_Pantene = 1 ;
if aaa(i)= 217 then Q16_Pantene_A_D = 1 ;
if aaa(i)= 30 then Q16_Sunsilk = 1 ;
if aaa(i)= 252 then Q16_Sunsilk_A_D = 1 ;
if aaa(i)= 18 then Q16_Ultra_Doux = 1 ;
if aaa(i)= 19 then Q16_Fiama = 1 ;
if aaa(i)= 24 then Q16_Chik = 1 ;
if aaa(i)= 28 then Q16_Lux = 1 ;
if aaa(i)= 291 then Q16_Vivel = 1 ;
if aaa(i)= 108 then Q16_Dabur_Vatika_A_D = 1 ;
if aaa(i)= 38 then Q16_Others = 1 ;
end;
run;



%macro trans (var1, var2, var3);
data v1.Selectvars_rawdata_10;
set v1.Selectvars_rawdata_9;
%do i=1 %to 15;
%do j=1 %to 13;
%let counter=&var1.&i;
%let counter1=&var3._&i._&j;
if &counter= 1 and &counter1= 1 then &var2._Clinic_All_Clear_1 =1;
if &counter= 3 and &counter1= 1 then &var2._Clinic_Plus_1 =1;
if &counter= 4 and &counter1= 1 then &var2._Dove_1 =1;
if &counter= 5 and &counter1= 1 then &var2._Essenza_1 =1;
if &counter= 31 and &counter1= 1 then &var2._Garnier_1 =1;
if &counter= 8 and &counter1= 1 then &var2._Garnier_A_D_1 =1;
if &counter= 10 and &counter1= 1 then &var2._Head_Shoulder_1 =1;
if &counter= 11 and &counter1= 1 then &var2._Pantene_1 =1;
if &counter= 217 and &counter1= 1 then &var2._Pantene_A_D_1 =1;
if &counter= 30 and &counter1= 1 then &var2._Sunsilk_1 =1;
if &counter= 252 and &counter1= 1 then &var2._Sunsilk_A_D_1 =1;
if &counter= 18 and &counter1= 1 then &var2._Ultra_Doux_1 =1;
if &counter= 19 and &counter1= 1 then &var2._Fiama_1 =1;
if &counter= 24 and &counter1= 1 then &var2._Chik_1 =1;
if &counter= 28 and &counter1= 1 then &var2._Lux_1 =1;
if &counter= 291 and &counter1= 1 then &var2._Vivel_1 =1;
if &counter= 108 and &counter1= 1 then &var2._Dabur_Vatika_A_D_1 =1;
if &counter= 38 and &counter1= 1 then &var2._Others_1 =1;
if &counter= 1 and &counter1= 2 then &var2._Clinic_All_Clear_2 =1;
if &counter= 3 and &counter1= 2 then &var2._Clinic_Plus_2 =1;
if &counter= 4 and &counter1= 2 then &var2._Dove_2 =1;
if &counter= 5 and &counter1= 2 then &var2._Essenza_2 =1;
if &counter= 31 and &counter1= 2 then &var2._Garnier_2 =1;
if &counter= 8 and &counter1= 2 then &var2._Garnier_A_D_2 =1;
if &counter= 10 and &counter1= 2 then &var2._Head_Shoulder_2 =1;
if &counter= 11 and &counter1= 2 then &var2._Pantene_2 =1;
if &counter= 217 and &counter1= 2 then &var2._Pantene_A_D_2 =1;
if &counter= 30 and &counter1= 2 then &var2._Sunsilk_2 =1;
if &counter= 252 and &counter1= 2 then &var2._Sunsilk_A_D_2 =1;
if &counter= 18 and &counter1= 2 then &var2._Ultra_Doux_2 =1;
if &counter= 19 and &counter1= 2 then &var2._Fiama_2 =1;
if &counter= 24 and &counter1= 2 then &var2._Chik_2 =1;
if &counter= 28 and &counter1= 2 then &var2._Lux_2 =1;
if &counter= 291 and &counter1= 2 then &var2._Vivel_2 =1;
if &counter= 108 and &counter1= 2 then &var2._Dabur_Vatika_A_D_2 =1;
if &counter= 38 and &counter1= 2 then &var2._Others_2 =1;
if &counter= 1 and &counter1= 3 then &var2._Clinic_All_Clear_3 =1;
if &counter= 3 and &counter1= 3 then &var2._Clinic_Plus_3 =1;
if &counter= 4 and &counter1= 3 then &var2._Dove_3 =1;
if &counter= 5 and &counter1= 3 then &var2._Essenza_3 =1;
if &counter= 31 and &counter1= 3 then &var2._Garnier_3 =1;
if &counter= 8 and &counter1= 3 then &var2._Garnier_A_D_3 =1;
if &counter= 10 and &counter1= 3 then &var2._Head_Shoulder_3 =1;
if &counter= 11 and &counter1= 3 then &var2._Pantene_3 =1;
if &counter= 217 and &counter1= 3 then &var2._Pantene_A_D_3 =1;
if &counter= 30 and &counter1= 3 then &var2._Sunsilk_3 =1;
if &counter= 252 and &counter1= 3 then &var2._Sunsilk_A_D_3 =1;
if &counter= 18 and &counter1= 3 then &var2._Ultra_Doux_3 =1;
if &counter= 19 and &counter1= 3 then &var2._Fiama_3 =1;
if &counter= 24 and &counter1= 3 then &var2._Chik_3 =1;
if &counter= 28 and &counter1= 3 then &var2._Lux_3 =1;
if &counter= 291 and &counter1= 3 then &var2._Vivel_3 =1;
if &counter= 108 and &counter1= 3 then &var2._Dabur_Vatika_A_D_3 =1;
if &counter= 38 and &counter1= 3 then &var2._Others_3 =1;
if &counter= 1 and &counter1= 4 then &var2._Clinic_All_Clear_4 =1;
if &counter= 3 and &counter1= 4 then &var2._Clinic_Plus_4 =1;
if &counter= 4 and &counter1= 4 then &var2._Dove_4 =1;
if &counter= 5 and &counter1= 4 then &var2._Essenza_4 =1;
if &counter= 31 and &counter1= 4 then &var2._Garnier_4 =1;
if &counter= 8 and &counter1= 4 then &var2._Garnier_A_D_4 =1;
if &counter= 10 and &counter1= 4 then &var2._Head_Shoulder_4 =1;
if &counter= 11 and &counter1= 4 then &var2._Pantene_4 =1;
if &counter= 217 and &counter1= 4 then &var2._Pantene_A_D_4 =1;
if &counter= 30 and &counter1= 4 then &var2._Sunsilk_4 =1;
if &counter= 252 and &counter1= 4 then &var2._Sunsilk_A_D_4 =1;
if &counter= 18 and &counter1= 4 then &var2._Ultra_Doux_4 =1;
if &counter= 19 and &counter1= 4 then &var2._Fiama_4 =1;
if &counter= 24 and &counter1= 4 then &var2._Chik_4 =1;
if &counter= 28 and &counter1= 4 then &var2._Lux_4 =1;
if &counter= 291 and &counter1= 4 then &var2._Vivel_4 =1;
if &counter= 108 and &counter1= 4 then &var2._Dabur_Vatika_A_D_4 =1;
if &counter= 38 and &counter1= 4 then &var2._Others_4 =1;
if &counter= 1 and &counter1= 5 then &var2._Clinic_All_Clear_5 =1;
if &counter= 3 and &counter1= 5 then &var2._Clinic_Plus_5 =1;
if &counter= 4 and &counter1= 5 then &var2._Dove_5 =1;
if &counter= 5 and &counter1= 5 then &var2._Essenza_5 =1;
if &counter= 31 and &counter1= 5 then &var2._Garnier_5 =1;
if &counter= 8 and &counter1= 5 then &var2._Garnier_A_D_5 =1;
if &counter= 10 and &counter1= 5 then &var2._Head_Shoulder_5 =1;
if &counter= 11 and &counter1= 5 then &var2._Pantene_5 =1;
if &counter= 217 and &counter1= 5 then &var2._Pantene_A_D_5 =1;
if &counter= 30 and &counter1= 5 then &var2._Sunsilk_5 =1;
if &counter= 252 and &counter1= 5 then &var2._Sunsilk_A_D_5 =1;
if &counter= 18 and &counter1= 5 then &var2._Ultra_Doux_5 =1;
if &counter= 19 and &counter1= 5 then &var2._Fiama_5 =1;
if &counter= 24 and &counter1= 5 then &var2._Chik_5 =1;
if &counter= 28 and &counter1= 5 then &var2._Lux_5 =1;
if &counter= 291 and &counter1= 5 then &var2._Vivel_5 =1;
if &counter= 108 and &counter1= 5 then &var2._Dabur_Vatika_A_D_5 =1;
if &counter= 38 and &counter1= 5 then &var2._Others_5 =1;
if &counter= 1 and &counter1= 6 then &var2._Clinic_All_Clear_6 =1;
if &counter= 3 and &counter1= 6 then &var2._Clinic_Plus_6 =1;
if &counter= 4 and &counter1= 6 then &var2._Dove_6 =1;
if &counter= 5 and &counter1= 6 then &var2._Essenza_6 =1;
if &counter= 31 and &counter1= 6 then &var2._Garnier_6 =1;
if &counter= 8 and &counter1= 6 then &var2._Garnier_A_D_6 =1;
if &counter= 10 and &counter1= 6 then &var2._Head_Shoulder_6 =1;
if &counter= 11 and &counter1= 6 then &var2._Pantene_6 =1;
if &counter= 217 and &counter1= 6 then &var2._Pantene_A_D_6 =1;
if &counter= 30 and &counter1= 6 then &var2._Sunsilk_6 =1;
if &counter= 252 and &counter1= 6 then &var2._Sunsilk_A_D_6 =1;
if &counter= 18 and &counter1= 6 then &var2._Ultra_Doux_6 =1;
if &counter= 19 and &counter1= 6 then &var2._Fiama_6 =1;
if &counter= 24 and &counter1= 6 then &var2._Chik_6 =1;
if &counter= 28 and &counter1= 6 then &var2._Lux_6 =1;
if &counter= 291 and &counter1= 6 then &var2._Vivel_6 =1;
if &counter= 108 and &counter1= 6 then &var2._Dabur_Vatika_A_D_6 =1;
if &counter= 38 and &counter1= 6 then &var2._Others_6 =1;
if &counter= 1 and &counter1= 7 then &var2._Clinic_All_Clear_7 =1;
if &counter= 3 and &counter1= 7 then &var2._Clinic_Plus_7 =1;
if &counter= 4 and &counter1= 7 then &var2._Dove_7 =1;
if &counter= 5 and &counter1= 7 then &var2._Essenza_7 =1;
if &counter= 31 and &counter1= 7 then &var2._Garnier_7 =1;
if &counter= 8 and &counter1= 7 then &var2._Garnier_A_D_7 =1;
if &counter= 10 and &counter1= 7 then &var2._Head_Shoulder_7 =1;
if &counter= 11 and &counter1= 7 then &var2._Pantene_7 =1;
if &counter= 217 and &counter1= 7 then &var2._Pantene_A_D_7 =1;
if &counter= 30 and &counter1= 7 then &var2._Sunsilk_7 =1;
if &counter= 252 and &counter1= 7 then &var2._Sunsilk_A_D_7 =1;
if &counter= 18 and &counter1= 7 then &var2._Ultra_Doux_7 =1;
if &counter= 19 and &counter1= 7 then &var2._Fiama_7 =1;
if &counter= 24 and &counter1= 7 then &var2._Chik_7 =1;
if &counter= 28 and &counter1= 7 then &var2._Lux_7 =1;
if &counter= 291 and &counter1= 7 then &var2._Vivel_7 =1;
if &counter= 108 and &counter1= 7 then &var2._Dabur_Vatika_A_D_7 =1;
if &counter= 38 and &counter1= 7 then &var2._Others_7 =1;
if &counter= 1 and &counter1= 8 then &var2._Clinic_All_Clear_8 =1;
if &counter= 3 and &counter1= 8 then &var2._Clinic_Plus_8 =1;
if &counter= 4 and &counter1= 8 then &var2._Dove_8 =1;
if &counter= 5 and &counter1= 8 then &var2._Essenza_8 =1;
if &counter= 31 and &counter1= 8 then &var2._Garnier_8 =1;
if &counter= 8 and &counter1= 8 then &var2._Garnier_A_D_8 =1;
if &counter= 10 and &counter1= 8 then &var2._Head_Shoulder_8 =1;
if &counter= 11 and &counter1= 8 then &var2._Pantene_8 =1;
if &counter= 217 and &counter1= 8 then &var2._Pantene_A_D_8 =1;
if &counter= 30 and &counter1= 8 then &var2._Sunsilk_8 =1;
if &counter= 252 and &counter1= 8 then &var2._Sunsilk_A_D_8 =1;
if &counter= 18 and &counter1= 8 then &var2._Ultra_Doux_8 =1;
if &counter= 19 and &counter1= 8 then &var2._Fiama_8 =1;
if &counter= 24 and &counter1= 8 then &var2._Chik_8 =1;
if &counter= 28 and &counter1= 8 then &var2._Lux_8 =1;
if &counter= 291 and &counter1= 8 then &var2._Vivel_8 =1;
if &counter= 108 and &counter1= 8 then &var2._Dabur_Vatika_A_D_8 =1;
if &counter= 38 and &counter1= 8 then &var2._Others_8 =1;
if &counter= 1 and &counter1= 9 then &var2._Clinic_All_Clear_9 =1;
if &counter= 3 and &counter1= 9 then &var2._Clinic_Plus_9 =1;
if &counter= 4 and &counter1= 9 then &var2._Dove_9 =1;
if &counter= 5 and &counter1= 9 then &var2._Essenza_9 =1;
if &counter= 31 and &counter1= 9 then &var2._Garnier_9 =1;
if &counter= 8 and &counter1= 9 then &var2._Garnier_A_D_9 =1;
if &counter= 10 and &counter1= 9 then &var2._Head_Shoulder_9 =1;
if &counter= 11 and &counter1= 9 then &var2._Pantene_9 =1;
if &counter= 217 and &counter1= 9 then &var2._Pantene_A_D_9 =1;
if &counter= 30 and &counter1= 9 then &var2._Sunsilk_9 =1;
if &counter= 252 and &counter1= 9 then &var2._Sunsilk_A_D_9 =1;
if &counter= 18 and &counter1= 9 then &var2._Ultra_Doux_9 =1;
if &counter= 19 and &counter1= 9 then &var2._Fiama_9 =1;
if &counter= 24 and &counter1= 9 then &var2._Chik_9 =1;
if &counter= 28 and &counter1= 9 then &var2._Lux_9 =1;
if &counter= 291 and &counter1= 9 then &var2._Vivel_9 =1;
if &counter= 108 and &counter1= 9 then &var2._Dabur_Vatika_A_D_9 =1;
if &counter= 38 and &counter1= 9 then &var2._Others_9 =1;
if &counter= 1 and &counter1= 10 then &var2._Clinic_All_Clear_10 =1;
if &counter= 3 and &counter1= 10 then &var2._Clinic_Plus_10 =1;
if &counter= 4 and &counter1= 10 then &var2._Dove_10 =1;
if &counter= 5 and &counter1= 10 then &var2._Essenza_10 =1;
if &counter= 31 and &counter1= 10 then &var2._Garnier_10 =1;
if &counter= 8 and &counter1= 10 then &var2._Garnier_A_D_10 =1;
if &counter= 10 and &counter1= 10 then &var2._Head_Shoulder_10 =1;
if &counter= 11 and &counter1= 10 then &var2._Pantene_10 =1;
if &counter= 217 and &counter1= 10 then &var2._Pantene_A_D_10 =1;
if &counter= 30 and &counter1= 10 then &var2._Sunsilk_10 =1;
if &counter= 252 and &counter1= 10 then &var2._Sunsilk_A_D_10 =1;
if &counter= 18 and &counter1= 10 then &var2._Ultra_Doux_10 =1;
if &counter= 19 and &counter1= 10 then &var2._Fiama_10 =1;
if &counter= 24 and &counter1= 10 then &var2._Chik_10 =1;
if &counter= 28 and &counter1= 10 then &var2._Lux_10 =1;
if &counter= 291 and &counter1= 10 then &var2._Vivel_10 =1;
if &counter= 108 and &counter1= 10 then &var2._Dabur_Vatika_A_D_10 =1;
if &counter= 38 and &counter1= 10 then &var2._Others_10 =1;
if &counter= 1 and &counter1= 11 then &var2._Clinic_All_Clear_11 =1;
if &counter= 3 and &counter1= 11 then &var2._Clinic_Plus_11 =1;
if &counter= 4 and &counter1= 11 then &var2._Dove_11 =1;
if &counter= 5 and &counter1= 11 then &var2._Essenza_11 =1;
if &counter= 31 and &counter1= 11 then &var2._Garnier_11 =1;
if &counter= 8 and &counter1= 11 then &var2._Garnier_A_D_11 =1;
if &counter= 10 and &counter1= 11 then &var2._Head_Shoulder_11 =1;
if &counter= 11 and &counter1= 11 then &var2._Pantene_11 =1;
if &counter= 217 and &counter1= 11 then &var2._Pantene_A_D_11 =1;
if &counter= 30 and &counter1= 11 then &var2._Sunsilk_11 =1;
if &counter= 252 and &counter1= 11 then &var2._Sunsilk_A_D_11 =1;
if &counter= 18 and &counter1= 11 then &var2._Ultra_Doux_11 =1;
if &counter= 19 and &counter1= 11 then &var2._Fiama_11 =1;
if &counter= 24 and &counter1= 11 then &var2._Chik_11 =1;
if &counter= 28 and &counter1= 11 then &var2._Lux_11 =1;
if &counter= 291 and &counter1= 11 then &var2._Vivel_11 =1;
if &counter= 108 and &counter1= 11 then &var2._Dabur_Vatika_A_D_11 =1;
if &counter= 38 and &counter1= 11 then &var2._Others_11 =1;
if &counter= 1 and &counter1= 12 then &var2._Clinic_All_Clear_12 =1;
if &counter= 3 and &counter1= 12 then &var2._Clinic_Plus_12 =1;
if &counter= 4 and &counter1= 12 then &var2._Dove_12 =1;
if &counter= 5 and &counter1= 12 then &var2._Essenza_12 =1;
if &counter= 31 and &counter1= 12 then &var2._Garnier_12 =1;
if &counter= 8 and &counter1= 12 then &var2._Garnier_A_D_12 =1;
if &counter= 10 and &counter1= 12 then &var2._Head_Shoulder_12 =1;
if &counter= 11 and &counter1= 12 then &var2._Pantene_12 =1;
if &counter= 217 and &counter1= 12 then &var2._Pantene_A_D_12 =1;
if &counter= 30 and &counter1= 12 then &var2._Sunsilk_12 =1;
if &counter= 252 and &counter1= 12 then &var2._Sunsilk_A_D_12 =1;
if &counter= 18 and &counter1= 12 then &var2._Ultra_Doux_12 =1;
if &counter= 19 and &counter1= 12 then &var2._Fiama_12 =1;
if &counter= 24 and &counter1= 12 then &var2._Chik_12 =1;
if &counter= 28 and &counter1= 12 then &var2._Lux_12 =1;
if &counter= 291 and &counter1= 12 then &var2._Vivel_12 =1;
if &counter= 108 and &counter1= 12 then &var2._Dabur_Vatika_A_D_12 =1;
if &counter= 38 and &counter1= 12 then &var2._Others_12 =1;
if &counter= 1 and &counter1= 13 then &var2._Clinic_All_Clear_13 =1;
if &counter= 3 and &counter1= 13 then &var2._Clinic_Plus_13 =1;
if &counter= 4 and &counter1= 13 then &var2._Dove_13 =1;
if &counter= 5 and &counter1= 13 then &var2._Essenza_13 =1;
if &counter= 31 and &counter1= 13 then &var2._Garnier_13 =1;
if &counter= 8 and &counter1= 13 then &var2._Garnier_A_D_13 =1;
if &counter= 10 and &counter1= 13 then &var2._Head_Shoulder_13 =1;
if &counter= 11 and &counter1= 13 then &var2._Pantene_13 =1;
if &counter= 217 and &counter1= 13 then &var2._Pantene_A_D_13 =1;
if &counter= 30 and &counter1= 13 then &var2._Sunsilk_13 =1;
if &counter= 252 and &counter1= 13 then &var2._Sunsilk_A_D_13 =1;
if &counter= 18 and &counter1= 13 then &var2._Ultra_Doux_13 =1;
if &counter= 19 and &counter1= 13 then &var2._Fiama_13 =1;
if &counter= 24 and &counter1= 13 then &var2._Chik_13 =1;
if &counter= 28 and &counter1= 13 then &var2._Lux_13 =1;
if &counter= 291 and &counter1= 13 then &var2._Vivel_13 =1;
if &counter= 108 and &counter1= 13 then &var2._Dabur_Vatika_A_D_13 =1;
if &counter= 38 and &counter1= 13 then &var2._Others_13 =1;
if &counter= 1 and &counter1= 14 then &var2._Clinic_All_Clear_14 =1;
if &counter= 3 and &counter1= 14 then &var2._Clinic_Plus_14 =1;
if &counter= 4 and &counter1= 14 then &var2._Dove_14 =1;
if &counter= 5 and &counter1= 14 then &var2._Essenza_14 =1;
if &counter= 31 and &counter1= 14 then &var2._Garnier_14 =1;
if &counter= 8 and &counter1= 14 then &var2._Garnier_A_D_14 =1;
if &counter= 10 and &counter1= 14 then &var2._Head_Shoulder_14 =1;
if &counter= 11 and &counter1= 14 then &var2._Pantene_14 =1;
if &counter= 217 and &counter1= 14 then &var2._Pantene_A_D_14 =1;
if &counter= 30 and &counter1= 14 then &var2._Sunsilk_14 =1;
if &counter= 252 and &counter1= 14 then &var2._Sunsilk_A_D_14 =1;
if &counter= 18 and &counter1= 14 then &var2._Ultra_Doux_14 =1;
if &counter= 19 and &counter1= 14 then &var2._Fiama_14 =1;
if &counter= 24 and &counter1= 14 then &var2._Chik_14 =1;
if &counter= 28 and &counter1= 14 then &var2._Lux_14 =1;
if &counter= 291 and &counter1= 14 then &var2._Vivel_14 =1;
if &counter= 108 and &counter1= 14 then &var2._Dabur_Vatika_A_D_14 =1;
if &counter= 38 and &counter1= 14 then &var2._Others_14 =1;
if &counter= 1 and &counter1= 15 then &var2._Clinic_All_Clear_15 =1;
if &counter= 3 and &counter1= 15 then &var2._Clinic_Plus_15 =1;
if &counter= 4 and &counter1= 15 then &var2._Dove_15 =1;
if &counter= 5 and &counter1= 15 then &var2._Essenza_15 =1;
if &counter= 31 and &counter1= 15 then &var2._Garnier_15 =1;
if &counter= 8 and &counter1= 15 then &var2._Garnier_A_D_15 =1;
if &counter= 10 and &counter1= 15 then &var2._Head_Shoulder_15 =1;
if &counter= 11 and &counter1= 15 then &var2._Pantene_15 =1;
if &counter= 217 and &counter1= 15 then &var2._Pantene_A_D_15 =1;
if &counter= 30 and &counter1= 15 then &var2._Sunsilk_15 =1;
if &counter= 252 and &counter1= 15 then &var2._Sunsilk_A_D_15 =1;
if &counter= 18 and &counter1= 15 then &var2._Ultra_Doux_15 =1;
if &counter= 19 and &counter1= 15 then &var2._Fiama_15 =1;
if &counter= 24 and &counter1= 15 then &var2._Chik_15 =1;
if &counter= 28 and &counter1= 15 then &var2._Lux_15 =1;
if &counter= 291 and &counter1= 15 then &var2._Vivel_15 =1;
if &counter= 108 and &counter1= 15 then &var2._Dabur_Vatika_A_D_15 =1;
if &counter= 38 and &counter1= 15 then &var2._Others_15 =1;
if &counter= 1 and &counter1= 16 then &var2._Clinic_All_Clear_16 =1;
if &counter= 3 and &counter1= 16 then &var2._Clinic_Plus_16 =1;
if &counter= 4 and &counter1= 16 then &var2._Dove_16 =1;
if &counter= 5 and &counter1= 16 then &var2._Essenza_16 =1;
if &counter= 31 and &counter1= 16 then &var2._Garnier_16 =1;
if &counter= 8 and &counter1= 16 then &var2._Garnier_A_D_16 =1;
if &counter= 10 and &counter1= 16 then &var2._Head_Shoulder_16 =1;
if &counter= 11 and &counter1= 16 then &var2._Pantene_16 =1;
if &counter= 217 and &counter1= 16 then &var2._Pantene_A_D_16 =1;
if &counter= 30 and &counter1= 16 then &var2._Sunsilk_16 =1;
if &counter= 252 and &counter1= 16 then &var2._Sunsilk_A_D_16 =1;
if &counter= 18 and &counter1= 16 then &var2._Ultra_Doux_16 =1;
if &counter= 19 and &counter1= 16 then &var2._Fiama_16 =1;
if &counter= 24 and &counter1= 16 then &var2._Chik_16 =1;
if &counter= 28 and &counter1= 16 then &var2._Lux_16 =1;
if &counter= 291 and &counter1= 16 then &var2._Vivel_16 =1;
if &counter= 108 and &counter1= 16 then &var2._Dabur_Vatika_A_D_16 =1;
if &counter= 38 and &counter1= 16 then &var2._Others_16 =1;


%end;
%end;
run;
%mend;
%trans (M16A_, Q16A, M16A);

ods html file="E:\Projects\ITC\Apr 21\freq_q18-20.xls";

proc freq data=v1.Selectvars_rawdata_10;
tables
M18A_B_01
M18A_B_01a
M18A_B_01b
M18A_B_02
M18A_B_02a
M18A_B_02b
M18A_B_03
M18A_B_03a
M18A_B_03b
M18A_B_04
M18A_B_04a
M18A_B_04b
M18A_B_05
M18A_B_05a
M18A_B_05b
M18A_B_06
M18A_B_06a
M18A_B_06b
M18A_B_07
M18A_B_07a
M18A_B_07b
M18A_B_08
M18A_B_08a
M18A_B_08b
M18A_B_09
M18A_B_09a
M18A_B_09b
M18A_B_10
M18A_B_10a
M18A_B_10b
M19A_B_01
M19A_B_01a
M19A_B_01b
M19A_B_02
M19A_B_02a
M19A_B_02b
M19A_B_03
M19A_B_03a
M19A_B_03b
M19A_B_04
M19A_B_04a
M19A_B_04b
M19A_B_05
M19A_B_05a
M19A_B_05b
M19A_B_06
M19A_B_06a
M19A_B_06b
M19A_B_07
M19A_B_07a
M19A_B_07b
M19A_B_08
M19A_B_08a
M19A_B_08b
M19A_B_09
M19A_B_09a
M19A_B_09b
M19A_B_10
M19A_B_10a
M19A_B_10b
M19C
M19D
ADS_1
ADS_2
ADS_3
M20A_B_AD1_1
M20A_B_AD1_2
M20A_B_AD1_3
M20A_B_AD1_4
M20A_B_AD1_5
M20A_B_AD1_6
M20A_B_AD1_7
M20A_B_AD1_8
M20A_B_AD1_9
M20A_B_AD1_10
M20A_B_AD2_1
M20A_B_AD2_2
M20A_B_AD2_3
M20A_B_AD2_4
M20A_B_AD2_5
M20A_B_AD2_6
M20A_B_AD2_7
M20A_B_AD2_8
M20A_B_AD2_9
M20A_B_AD2_10
M20A_B_AD3_1
M20A_B_AD3_2
M20A_B_AD3_3
M20A_B_AD3_4
M20A_B_AD3_5
M20A_B_AD3_6
M20A_B_AD3_7
M20A_B_AD3_8
M20A_B_AD3_9
M20A_B_AD3_10
;
run;
ods html close;
/*Q16B*/
%macro q1 (var);
data v1.Selectvars_rawdata_10;
set v1.Selectvars_rawdata_10;
%do i=1 %to 30;
%let counter=&var._&i;
if &counter =1 then &counter =1;
if &counter =2 then &counter =1;
if &counter =3 then &counter =3;
if &counter =4 then &counter =4;
if &counter =5 then &counter =5;
if &counter =6 then &counter =31;
if &counter =7 then &counter =31;
if &counter =8 then &counter =8;
if &counter =9 then &counter =31;
if &counter =10 then &counter =10;
if &counter =11 then &counter =11;
if &counter =12 then &counter =11;
if &counter =13 then &counter =11;
if &counter =14 then &counter =11;
if &counter =15 then &counter =11;
if &counter =16 then &counter =30;
if &counter =17 then &counter =30;
if &counter =18 then &counter =18;
if &counter =19 then &counter =19;
if &counter =20 then &counter =19;
if &counter =21 then &counter =19;
if &counter =22 then &counter =19;
if &counter =23 then &counter =19;
if &counter =24 then &counter =24;
if &counter =25 then &counter =24;
if &counter =26 then &counter =24;
if &counter =27 then &counter =24;
if &counter =28 then &counter =28;
if &counter =29 then &counter =18;
if &counter =30 then &counter =30;
if &counter =31 then &counter =31;
if &counter =32 then &counter =38;
if &counter =33 then &counter =38;
if &counter =34 then &counter =38;
if &counter =35 then &counter =38;
if &counter =36 then &counter =38;
if &counter =37 then &counter =38;
if &counter =38 then &counter =38;
if &counter =39 then &counter =38;
if &counter =40 then &counter =38;
if &counter =41 then &counter =38;
if &counter =42 then &counter =38;
if &counter =43 then &counter =38;
if &counter =44 then &counter =38;
if &counter =45 then &counter =38;
if &counter =46 then &counter =38;
if &counter =47 then &counter =38;
if &counter =48 then &counter =38;
if &counter =49 then &counter =38;
if &counter =50 then &counter =38;
if &counter =51 then &counter =38;
if &counter =52 then &counter =38;
if &counter =53 then &counter =38;
if &counter =54 then &counter =38;
if &counter =55 then &counter =38;
if &counter =56 then &counter =38;
if &counter =57 then &counter =38;
if &counter =58 then &counter =38;
if &counter =59 then &counter =38;
if &counter =60 then &counter =38;
if &counter =61 then &counter =38;
if &counter =62 then &counter =38;
if &counter =63 then &counter =38;
if &counter =64 then &counter =24;
if &counter =65 then &counter =24;
if &counter =66 then &counter =38;
if &counter =67 then &counter =38;
if &counter =68 then &counter =24;
if &counter =69 then &counter =24;
if &counter =70 then &counter =24;
if &counter =71 then &counter =24;
if &counter =72 then &counter =24;
if &counter =73 then &counter =24;
if &counter =74 then &counter =24;
if &counter =75 then &counter =38;
if &counter =76 then &counter =38;
if &counter =77 then &counter =1;
if &counter =78 then &counter =1;
if &counter =79 then &counter =1;
if &counter =80 then &counter =1;
if &counter =81 then &counter =38;
if &counter =82 then &counter =1;
if &counter =83 then &counter =1;
if &counter =84 then &counter =1;
if &counter =85 then &counter =1;
if &counter =86 then &counter =1;
if &counter =87 then &counter =1;
if &counter =88 then &counter =38;
if &counter =89 then &counter =1;
if &counter =90 then &counter =1;
if &counter =91 then &counter =3;
if &counter =92 then &counter =38;
if &counter =93 then &counter =3;
if &counter =94 then &counter =3;
if &counter =95 then &counter =3;
if &counter =96 then &counter =3;
if &counter =97 then &counter =3;
if &counter =98 then &counter =3;
if &counter =99 then &counter =3;
if &counter =100 then &counter =3;
if &counter =101 then &counter =3;
if &counter =102 then &counter =3;
if &counter =103 then &counter =3;
if &counter =104 then &counter =38;
if &counter =105 then &counter =38;
if &counter =106 then &counter =38;
if &counter =107 then &counter =38;
if &counter =108 then &counter =108;
if &counter =109 then &counter =38;
if &counter =110 then &counter =38;
if &counter =111 then &counter =38;
if &counter =112 then &counter =38;
if &counter =113 then &counter =38;
if &counter =114 then &counter =38;
if &counter =115 then &counter =38;
if &counter =116 then &counter =38;
if &counter =117 then &counter =38;
if &counter =118 then &counter =38;
if &counter =119 then &counter =19;
if &counter =120 then &counter =31;
if &counter =121 then &counter =38;
if &counter =122 then &counter =38;
if &counter =123 then &counter =38;
if &counter =124 then &counter =38;
if &counter =125 then &counter =38;
if &counter =126 then &counter =38;
if &counter =127 then &counter =38;
if &counter =128 then &counter =38;
if &counter =129 then &counter =38;
if &counter =130 then &counter =38;
if &counter =131 then &counter =38;
if &counter =132 then &counter =38;
if &counter =133 then &counter =38;
if &counter =134 then &counter =10;
if &counter =135 then &counter =10;
if &counter =136 then &counter =10;
if &counter =137 then &counter =10;
if &counter =138 then &counter =10;
if &counter =139 then &counter =10;
if &counter =140 then &counter =10;
if &counter =141 then &counter =10;
if &counter =142 then &counter =10;
if &counter =143 then &counter =10;
if &counter =144 then &counter =10;
if &counter =145 then &counter =10;
if &counter =146 then &counter =10;
if &counter =147 then &counter =10;
if &counter =148 then &counter =10;
if &counter =149 then &counter =10;
if &counter =150 then &counter =38;
if &counter =151 then &counter =38;
if &counter =152 then &counter =38;
if &counter =153 then &counter =38;
if &counter =154 then &counter =38;
if &counter =155 then &counter =38;
if &counter =156 then &counter =38;
if &counter =157 then &counter =38;
if &counter =158 then &counter =38;
if &counter =159 then &counter =38;
if &counter =160 then &counter =38;
if &counter =161 then &counter =38;
if &counter =162 then &counter =38;
if &counter =163 then &counter =38;
if &counter =164 then &counter =38;
if &counter =165 then &counter =38;
if &counter =166 then &counter =38;
if &counter =167 then &counter =38;
if &counter =168 then &counter =38;
if &counter =169 then &counter =38;
if &counter =170 then &counter =28;
if &counter =171 then &counter =28;
if &counter =172 then &counter =28;
if &counter =173 then &counter =38;
if &counter =174 then &counter =38;
if &counter =175 then &counter =38;
if &counter =176 then &counter =38;
if &counter =177 then &counter =38;
if &counter =178 then &counter =38;
if &counter =179 then &counter =38;
if &counter =180 then &counter =38;
if &counter =181 then &counter =38;
if &counter =182 then &counter =38;
if &counter =183 then &counter =38;
if &counter =184 then &counter =38;
if &counter =185 then &counter =38;
if &counter =186 then &counter =38;
if &counter =187 then &counter =4;
if &counter =188 then &counter =10;
if &counter =189 then &counter =30;
if &counter =190 then &counter =38;
if &counter =191 then &counter =38;
if &counter =192 then &counter =38;
if &counter =193 then &counter =38;
if &counter =194 then &counter =38;
if &counter =195 then &counter =38;
if &counter =196 then &counter =38;
if &counter =197 then &counter =38;
if &counter =198 then &counter =38;
if &counter =199 then &counter =38;
if &counter =200 then &counter =38;
if &counter =201 then &counter =38;
if &counter =202 then &counter =38;
if &counter =203 then &counter =38;
if &counter =204 then &counter =38;
if &counter =205 then &counter =38;
if &counter =206 then &counter =38;
if &counter =207 then &counter =38;
if &counter =208 then &counter =38;
if &counter =209 then &counter =38;
if &counter =210 then &counter =38;
if &counter =211 then &counter =38;
if &counter =212 then &counter =38;
if &counter =213 then &counter =38;
if &counter =214 then &counter =38;
if &counter =215 then &counter =217;
if &counter =216 then &counter =11;
if &counter =217 then &counter =217;
if &counter =218 then &counter =11;
if &counter =219 then &counter =11;
if &counter =220 then &counter =11;
if &counter =221 then &counter =24;
if &counter =222 then &counter =11;
if &counter =223 then &counter =11;
if &counter =224 then &counter =11;
if &counter =225 then &counter =11;
if &counter =226 then &counter =11;
if &counter =227 then &counter =11;
if &counter =228 then &counter =11;
if &counter =229 then &counter =11;
if &counter =230 then &counter =11;
if &counter =231 then &counter =38;
if &counter =232 then &counter =38;
if &counter =233 then &counter =38;
if &counter =234 then &counter =38;
if &counter =235 then &counter =38;
if &counter =236 then &counter =38;
if &counter =237 then &counter =38;
if &counter =238 then &counter =38;
if &counter =239 then &counter =38;
if &counter =240 then &counter =38;
if &counter =241 then &counter =38;
if &counter =242 then &counter =38;
if &counter =243 then &counter =38;
if &counter =244 then &counter =38;
if &counter =245 then &counter =38;
if &counter =246 then &counter =38;
if &counter =247 then &counter =38;
if &counter =248 then &counter =38;
if &counter =249 then &counter =38;
if &counter =250 then &counter =38;
if &counter =251 then &counter =38;
if &counter =252 then &counter =252;
if &counter =253 then &counter =30;
if &counter =254 then &counter =30;
if &counter =255 then &counter =30;
if &counter =256 then &counter =30;
if &counter =257 then &counter =30;
if &counter =258 then &counter =30;
if &counter =259 then &counter =30;
if &counter =260 then &counter =30;
if &counter =261 then &counter =30;
if &counter =262 then &counter =30;
if &counter =263 then &counter =30;
if &counter =264 then &counter =30;
if &counter =265 then &counter =252;
if &counter =266 then &counter =30;
if &counter =267 then &counter =30;
if &counter =268 then &counter =30;
if &counter =269 then &counter =30;
if &counter =270 then &counter =30;
if &counter =271 then &counter =38;
if &counter =272 then &counter =38;
if &counter =273 then &counter =38;
if &counter =274 then &counter =18;
if &counter =275 then &counter =18;
if &counter =276 then &counter =18;
if &counter =277 then &counter =18;
if &counter =278 then &counter =18;
if &counter =279 then &counter =38;
if &counter =997 then &counter =38;
if &counter =998 then &counter =38;
if &counter =999 then &counter =38;
if &counter =280 then &counter =28;
if &counter =281 then &counter =30;
if &counter =282 then &counter =4;
if &counter =283 then &counter =31;
if &counter =284 then &counter =28;
if &counter =285 then &counter =11;
if &counter =286 then &counter =38;
if &counter =287 then &counter =19;
if &counter =288 then &counter =19;
if &counter =289 then &counter =4;
if &counter =290 then &counter =30;
if &counter =291 then &counter =291;
if &counter =292 then &counter =291;
if &counter =293 then &counter =291;
if &counter =294 then &counter =291;
if &counter =295 then &counter =38;
if &counter =296 then &counter =3;
if &counter =297 then &counter =1;
if &counter =298 then &counter =30;
if &counter =299 then &counter =24;
if &counter =300 then &counter =38;
if &counter =301 then &counter =4;
if &counter =302 then &counter =4;
if &counter =303 then &counter =4;
if &counter =304 then &counter =11;
if &counter =305 then &counter =10;
if &counter =306 then &counter =28;
if &counter =307 then &counter =38;
if &counter =308 then &counter =28;
if &counter =309 then &counter =4;
if &counter =310 then &counter =3;
if &counter =311 then &counter =4;
if &counter =312 then &counter =38;
if &counter =313 then &counter =38;
if &counter =314 then &counter =3;
if &counter =315 then &counter =28;
if &counter =316 then &counter =38;
if &counter =317 then &counter =38;
if &counter =318 then &counter =38;
if &counter =319 then &counter =3;
if &counter =320 then &counter =1;
if &counter =321 then &counter =38;
if &counter =322 then &counter =291;
if &counter =323 then &counter =4;
if &counter =324 then &counter =38;
if &counter =325 then &counter =38;
if &counter =326 then &counter =38;
if &counter =327 then &counter =38;
if &counter =328 then &counter =4;
if &counter =329 then &counter =38;
if &counter =330 then &counter =38;
if &counter =331 then &counter =3;
if &counter =332 then &counter =31;
if &counter =333 then &counter =4;
if &counter =334 then &counter =11;
if &counter =335 then &counter =31;
if &counter =336 then &counter =38;
if &counter =337 then &counter =30;
if &counter =338 then &counter =38;
if &counter =339 then &counter =38;
if &counter =340 then &counter =38;
if &counter =341 then &counter =38;
if &counter =342 then &counter =30;
if &counter =343 then &counter =38;
if &counter =344 then &counter =24;
if &counter =345 then &counter =30;
if &counter =346 then &counter =38;
if &counter =347 then &counter =11;
if &counter =348 then &counter =38;
if &counter =349 then &counter =31;
if &counter =350 then &counter =10;
if &counter =351 then &counter =38;
if &counter =352 then &counter =8;
if &counter =353 then &counter =1;
if &counter =354 then &counter =38;
if &counter =355 then &counter =19;
if &counter =356 then &counter =3;
if &counter =357 then &counter =38;
if &counter =358 then &counter =38;
if &counter =359 then &counter =11;
if &counter =360 then &counter =38;
if &counter =361 then &counter =38;
if &counter =362 then &counter =38;
if &counter =363 then &counter =38;


%end;
run;
%mend;
%q1 (M16B);
/*Q16B*/
%macro q1 (var);
data v1.Selectvars_rawdata_10;
set v1.Selectvars_rawdata_10;
%do i=1 %to 14;
%let counter=&var._&i;
if &counter =1 then &counter =1;
if &counter =2 then &counter =1;
if &counter =3 then &counter =3;
if &counter =4 then &counter =4;
if &counter =5 then &counter =5;
if &counter =6 then &counter =31;
if &counter =7 then &counter =31;
if &counter =8 then &counter =8;
if &counter =9 then &counter =31;
if &counter =10 then &counter =10;
if &counter =11 then &counter =11;
if &counter =12 then &counter =11;
if &counter =13 then &counter =11;
if &counter =14 then &counter =11;
if &counter =15 then &counter =11;
if &counter =16 then &counter =30;
if &counter =17 then &counter =30;
if &counter =18 then &counter =18;
if &counter =19 then &counter =19;
if &counter =20 then &counter =19;
if &counter =21 then &counter =19;
if &counter =22 then &counter =19;
if &counter =23 then &counter =19;
if &counter =24 then &counter =24;
if &counter =25 then &counter =24;
if &counter =26 then &counter =24;
if &counter =27 then &counter =24;
if &counter =28 then &counter =28;
if &counter =29 then &counter =18;
if &counter =30 then &counter =30;
if &counter =31 then &counter =31;
if &counter =32 then &counter =38;
if &counter =33 then &counter =38;
if &counter =34 then &counter =38;
if &counter =35 then &counter =38;
if &counter =36 then &counter =38;
if &counter =37 then &counter =38;
if &counter =38 then &counter =38;
if &counter =39 then &counter =38;
if &counter =40 then &counter =38;
if &counter =41 then &counter =38;
if &counter =42 then &counter =38;
if &counter =43 then &counter =38;
if &counter =44 then &counter =38;
if &counter =45 then &counter =38;
if &counter =46 then &counter =38;
if &counter =47 then &counter =38;
if &counter =48 then &counter =38;
if &counter =49 then &counter =38;
if &counter =50 then &counter =38;
if &counter =51 then &counter =38;
if &counter =52 then &counter =38;
if &counter =53 then &counter =38;
if &counter =54 then &counter =38;
if &counter =55 then &counter =38;
if &counter =56 then &counter =38;
if &counter =57 then &counter =38;
if &counter =58 then &counter =38;
if &counter =59 then &counter =38;
if &counter =60 then &counter =38;
if &counter =61 then &counter =38;
if &counter =62 then &counter =38;
if &counter =63 then &counter =38;
if &counter =64 then &counter =24;
if &counter =65 then &counter =24;
if &counter =66 then &counter =38;
if &counter =67 then &counter =38;
if &counter =68 then &counter =24;
if &counter =69 then &counter =24;
if &counter =70 then &counter =24;
if &counter =71 then &counter =24;
if &counter =72 then &counter =24;
if &counter =73 then &counter =24;
if &counter =74 then &counter =24;
if &counter =75 then &counter =38;
if &counter =76 then &counter =38;
if &counter =77 then &counter =1;
if &counter =78 then &counter =1;
if &counter =79 then &counter =1;
if &counter =80 then &counter =1;
if &counter =81 then &counter =38;
if &counter =82 then &counter =1;
if &counter =83 then &counter =1;
if &counter =84 then &counter =1;
if &counter =85 then &counter =1;
if &counter =86 then &counter =1;
if &counter =87 then &counter =1;
if &counter =88 then &counter =38;
if &counter =89 then &counter =1;
if &counter =90 then &counter =1;
if &counter =91 then &counter =3;
if &counter =92 then &counter =38;
if &counter =93 then &counter =3;
if &counter =94 then &counter =3;
if &counter =95 then &counter =3;
if &counter =96 then &counter =3;
if &counter =97 then &counter =3;
if &counter =98 then &counter =3;
if &counter =99 then &counter =3;
if &counter =100 then &counter =3;
if &counter =101 then &counter =3;
if &counter =102 then &counter =3;
if &counter =103 then &counter =3;
if &counter =104 then &counter =38;
if &counter =105 then &counter =38;
if &counter =106 then &counter =38;
if &counter =107 then &counter =38;
if &counter =108 then &counter =108;
if &counter =109 then &counter =38;
if &counter =110 then &counter =38;
if &counter =111 then &counter =38;
if &counter =112 then &counter =38;
if &counter =113 then &counter =38;
if &counter =114 then &counter =38;
if &counter =115 then &counter =38;
if &counter =116 then &counter =38;
if &counter =117 then &counter =38;
if &counter =118 then &counter =38;
if &counter =119 then &counter =19;
if &counter =120 then &counter =31;
if &counter =121 then &counter =38;
if &counter =122 then &counter =38;
if &counter =123 then &counter =38;
if &counter =124 then &counter =38;
if &counter =125 then &counter =38;
if &counter =126 then &counter =38;
if &counter =127 then &counter =38;
if &counter =128 then &counter =38;
if &counter =129 then &counter =38;
if &counter =130 then &counter =38;
if &counter =131 then &counter =38;
if &counter =132 then &counter =38;
if &counter =133 then &counter =38;
if &counter =134 then &counter =10;
if &counter =135 then &counter =10;
if &counter =136 then &counter =10;
if &counter =137 then &counter =10;
if &counter =138 then &counter =10;
if &counter =139 then &counter =10;
if &counter =140 then &counter =10;
if &counter =141 then &counter =10;
if &counter =142 then &counter =10;
if &counter =143 then &counter =10;
if &counter =144 then &counter =10;
if &counter =145 then &counter =10;
if &counter =146 then &counter =10;
if &counter =147 then &counter =10;
if &counter =148 then &counter =10;
if &counter =149 then &counter =10;
if &counter =150 then &counter =38;
if &counter =151 then &counter =38;
if &counter =152 then &counter =38;
if &counter =153 then &counter =38;
if &counter =154 then &counter =38;
if &counter =155 then &counter =38;
if &counter =156 then &counter =38;
if &counter =157 then &counter =38;
if &counter =158 then &counter =38;
if &counter =159 then &counter =38;
if &counter =160 then &counter =38;
if &counter =161 then &counter =38;
if &counter =162 then &counter =38;
if &counter =163 then &counter =38;
if &counter =164 then &counter =38;
if &counter =165 then &counter =38;
if &counter =166 then &counter =38;
if &counter =167 then &counter =38;
if &counter =168 then &counter =38;
if &counter =169 then &counter =38;
if &counter =170 then &counter =28;
if &counter =171 then &counter =28;
if &counter =172 then &counter =28;
if &counter =173 then &counter =38;
if &counter =174 then &counter =38;
if &counter =175 then &counter =38;
if &counter =176 then &counter =38;
if &counter =177 then &counter =38;
if &counter =178 then &counter =38;
if &counter =179 then &counter =38;
if &counter =180 then &counter =38;
if &counter =181 then &counter =38;
if &counter =182 then &counter =38;
if &counter =183 then &counter =38;
if &counter =184 then &counter =38;
if &counter =185 then &counter =38;
if &counter =186 then &counter =38;
if &counter =187 then &counter =4;
if &counter =188 then &counter =10;
if &counter =189 then &counter =30;
if &counter =190 then &counter =38;
if &counter =191 then &counter =38;
if &counter =192 then &counter =38;
if &counter =193 then &counter =38;
if &counter =194 then &counter =38;
if &counter =195 then &counter =38;
if &counter =196 then &counter =38;
if &counter =197 then &counter =38;
if &counter =198 then &counter =38;
if &counter =199 then &counter =38;
if &counter =200 then &counter =38;
if &counter =201 then &counter =38;
if &counter =202 then &counter =38;
if &counter =203 then &counter =38;
if &counter =204 then &counter =38;
if &counter =205 then &counter =38;
if &counter =206 then &counter =38;
if &counter =207 then &counter =38;
if &counter =208 then &counter =38;
if &counter =209 then &counter =38;
if &counter =210 then &counter =38;
if &counter =211 then &counter =38;
if &counter =212 then &counter =38;
if &counter =213 then &counter =38;
if &counter =214 then &counter =38;
if &counter =215 then &counter =217;
if &counter =216 then &counter =11;
if &counter =217 then &counter =217;
if &counter =218 then &counter =11;
if &counter =219 then &counter =11;
if &counter =220 then &counter =11;
if &counter =221 then &counter =24;
if &counter =222 then &counter =11;
if &counter =223 then &counter =11;
if &counter =224 then &counter =11;
if &counter =225 then &counter =11;
if &counter =226 then &counter =11;
if &counter =227 then &counter =11;
if &counter =228 then &counter =11;
if &counter =229 then &counter =11;
if &counter =230 then &counter =11;
if &counter =231 then &counter =38;
if &counter =232 then &counter =38;
if &counter =233 then &counter =38;
if &counter =234 then &counter =38;
if &counter =235 then &counter =38;
if &counter =236 then &counter =38;
if &counter =237 then &counter =38;
if &counter =238 then &counter =38;
if &counter =239 then &counter =38;
if &counter =240 then &counter =38;
if &counter =241 then &counter =38;
if &counter =242 then &counter =38;
if &counter =243 then &counter =38;
if &counter =244 then &counter =38;
if &counter =245 then &counter =38;
if &counter =246 then &counter =38;
if &counter =247 then &counter =38;
if &counter =248 then &counter =38;
if &counter =249 then &counter =38;
if &counter =250 then &counter =38;
if &counter =251 then &counter =38;
if &counter =252 then &counter =252;
if &counter =253 then &counter =30;
if &counter =254 then &counter =30;
if &counter =255 then &counter =30;
if &counter =256 then &counter =30;
if &counter =257 then &counter =30;
if &counter =258 then &counter =30;
if &counter =259 then &counter =30;
if &counter =260 then &counter =30;
if &counter =261 then &counter =30;
if &counter =262 then &counter =30;
if &counter =263 then &counter =30;
if &counter =264 then &counter =30;
if &counter =265 then &counter =252;
if &counter =266 then &counter =30;
if &counter =267 then &counter =30;
if &counter =268 then &counter =30;
if &counter =269 then &counter =30;
if &counter =270 then &counter =30;
if &counter =271 then &counter =38;
if &counter =272 then &counter =38;
if &counter =273 then &counter =38;
if &counter =274 then &counter =18;
if &counter =275 then &counter =18;
if &counter =276 then &counter =18;
if &counter =277 then &counter =18;
if &counter =278 then &counter =18;
if &counter =279 then &counter =38;
if &counter =997 then &counter =38;
if &counter =998 then &counter =38;
if &counter =999 then &counter =38;
if &counter =280 then &counter =28;
if &counter =281 then &counter =30;
if &counter =282 then &counter =4;
if &counter =283 then &counter =31;
if &counter =284 then &counter =28;
if &counter =285 then &counter =11;
if &counter =286 then &counter =38;
if &counter =287 then &counter =19;
if &counter =288 then &counter =19;
if &counter =289 then &counter =4;
if &counter =290 then &counter =30;
if &counter =291 then &counter =291;
if &counter =292 then &counter =291;
if &counter =293 then &counter =291;
if &counter =294 then &counter =291;
if &counter =295 then &counter =38;
if &counter =296 then &counter =3;
if &counter =297 then &counter =1;
if &counter =298 then &counter =30;
if &counter =299 then &counter =24;
if &counter =300 then &counter =38;
if &counter =301 then &counter =4;
if &counter =302 then &counter =4;
if &counter =303 then &counter =4;
if &counter =304 then &counter =11;
if &counter =305 then &counter =10;
if &counter =306 then &counter =28;
if &counter =307 then &counter =38;
if &counter =308 then &counter =28;
if &counter =309 then &counter =4;
if &counter =310 then &counter =3;
if &counter =311 then &counter =4;
if &counter =312 then &counter =38;
if &counter =313 then &counter =38;
if &counter =314 then &counter =3;
if &counter =315 then &counter =28;
if &counter =316 then &counter =38;
if &counter =317 then &counter =38;
if &counter =318 then &counter =38;
if &counter =319 then &counter =3;
if &counter =320 then &counter =1;
if &counter =321 then &counter =38;
if &counter =322 then &counter =291;
if &counter =323 then &counter =4;
if &counter =324 then &counter =38;
if &counter =325 then &counter =38;
if &counter =326 then &counter =38;
if &counter =327 then &counter =38;
if &counter =328 then &counter =4;
if &counter =329 then &counter =38;
if &counter =330 then &counter =38;
if &counter =331 then &counter =3;
if &counter =332 then &counter =31;
if &counter =333 then &counter =4;
if &counter =334 then &counter =11;
if &counter =335 then &counter =31;
if &counter =336 then &counter =38;
if &counter =337 then &counter =30;
if &counter =338 then &counter =38;
if &counter =339 then &counter =38;
if &counter =340 then &counter =38;
if &counter =341 then &counter =38;
if &counter =342 then &counter =30;
if &counter =343 then &counter =38;
if &counter =344 then &counter =24;
if &counter =345 then &counter =30;
if &counter =346 then &counter =38;
if &counter =347 then &counter =11;
if &counter =348 then &counter =38;
if &counter =349 then &counter =31;
if &counter =350 then &counter =10;
if &counter =351 then &counter =38;
if &counter =352 then &counter =8;
if &counter =353 then &counter =1;
if &counter =354 then &counter =38;
if &counter =355 then &counter =19;
if &counter =356 then &counter =3;
if &counter =357 then &counter =38;
if &counter =358 then &counter =38;
if &counter =359 then &counter =11;
if &counter =360 then &counter =38;
if &counter =361 then &counter =38;
if &counter =362 then &counter =38;
if &counter =363 then &counter =38;


%end;
run;
%mend;
%q1 (New_M16B);
data v1.Selectvars_rawdata_10;
set v1.Selectvars_rawdata_10;
array aaa(*) M16B_1-- M16B_30;
do i=1 to 30;
if aaa(i)= 1 then Q16B_Clinic_All_Clear = 1 ;
if aaa(i)= 3 then Q16B_Clinic_Plus = 1 ;
if aaa(i)= 4 then Q16B_Dove = 1 ;
if aaa(i)= 5 then Q16B_Essenza = 1 ;
if aaa(i)= 31 then Q16B_Garnier = 1 ;
if aaa(i)= 8 then Q16B_Garnier_A_D = 1 ;
if aaa(i)= 10 then Q16B_Head_Shoulder = 1 ;
if aaa(i)= 11 then Q16B_Pantene = 1 ;
if aaa(i)= 217 then Q16B_Pantene_A_D = 1 ;
if aaa(i)= 30 then Q16B_Sunsilk = 1 ;
if aaa(i)= 252 then Q16B_Sunsilk_A_D = 1 ;
if aaa(i)= 18 then Q16B_Ultra_Doux = 1 ;
if aaa(i)= 19 then Q16B_Fiama = 1 ;
if aaa(i)= 24 then Q16B_Chik = 1 ;
if aaa(i)= 28 then Q16B_Lux = 1 ;
if aaa(i)= 291 then Q16B_Vivel = 1 ;
if aaa(i)= 108 then Q16B_Dabur_Vatika_A_D = 1 ;
if aaa(i)= 38 then Q16B_Others = 1 ;
end;
run;
data v1.Selectvars_rawdata_10;
set v1.Selectvars_rawdata_10;
array aaa(*) New_M16B_1-- New_M16B_14;
do i=1 to 14;
if aaa(i)= 1 then Q16B_Clinic_All_Clear = 1 ;
if aaa(i)= 3 then Q16B_Clinic_Plus = 1 ;
if aaa(i)= 4 then Q16B_Dove = 1 ;
if aaa(i)= 5 then Q16B_Essenza = 1 ;
if aaa(i)= 31 then Q16B_Garnier = 1 ;
if aaa(i)= 8 then Q16B_Garnier_A_D = 1 ;
if aaa(i)= 10 then Q16B_Head_Shoulder = 1 ;
if aaa(i)= 11 then Q16B_Pantene = 1 ;
if aaa(i)= 217 then Q16B_Pantene_A_D = 1 ;
if aaa(i)= 30 then Q16B_Sunsilk = 1 ;
if aaa(i)= 252 then Q16B_Sunsilk_A_D = 1 ;
if aaa(i)= 18 then Q16B_Ultra_Doux = 1 ;
if aaa(i)= 19 then Q16B_Fiama = 1 ;
if aaa(i)= 24 then Q16B_Chik = 1 ;
if aaa(i)= 28 then Q16B_Lux = 1 ;
if aaa(i)= 291 then Q16B_Vivel = 1 ;
if aaa(i)= 108 then Q16B_Dabur_Vatika_A_D = 1 ;
if aaa(i)= 38 then Q16B_Others = 1 ;
end;
run;




%macro trans (var1, var2, var3);
data v1.Selectvars_rawdata_11;
set v1.Selectvars_rawdata_10;
%do i=1 %to 30;
%do j=1 %to 12;
%let counter=&var1.&i;
%let counter1=&var3._&i._&j;
if &counter= 1 and &counter1= 1 then &var2._Clinic_All_Clear_1 =1;
if &counter= 3 and &counter1= 1 then &var2._Clinic_Plus_1 =1;
if &counter= 4 and &counter1= 1 then &var2._Dove_1 =1;
if &counter= 5 and &counter1= 1 then &var2._Essenza_1 =1;
if &counter= 31 and &counter1= 1 then &var2._Garnier_1 =1;
if &counter= 8 and &counter1= 1 then &var2._Garnier_A_D_1 =1;
if &counter= 10 and &counter1= 1 then &var2._Head_Shoulder_1 =1;
if &counter= 11 and &counter1= 1 then &var2._Pantene_1 =1;
if &counter= 217 and &counter1= 1 then &var2._Pantene_A_D_1 =1;
if &counter= 30 and &counter1= 1 then &var2._Sunsilk_1 =1;
if &counter= 252 and &counter1= 1 then &var2._Sunsilk_A_D_1 =1;
if &counter= 18 and &counter1= 1 then &var2._Ultra_Doux_1 =1;
if &counter= 19 and &counter1= 1 then &var2._Fiama_1 =1;
if &counter= 24 and &counter1= 1 then &var2._Chik_1 =1;
if &counter= 28 and &counter1= 1 then &var2._Lux_1 =1;
if &counter= 291 and &counter1= 1 then &var2._Vivel_1 =1;
if &counter= 108 and &counter1= 1 then &var2._Dabur_Vatika_A_D_1 =1;
if &counter= 38 and &counter1= 1 then &var2._Others_1 =1;
if &counter= 1 and &counter1= 2 then &var2._Clinic_All_Clear_2 =1;
if &counter= 3 and &counter1= 2 then &var2._Clinic_Plus_2 =1;
if &counter= 4 and &counter1= 2 then &var2._Dove_2 =1;
if &counter= 5 and &counter1= 2 then &var2._Essenza_2 =1;
if &counter= 31 and &counter1= 2 then &var2._Garnier_2 =1;
if &counter= 8 and &counter1= 2 then &var2._Garnier_A_D_2 =1;
if &counter= 10 and &counter1= 2 then &var2._Head_Shoulder_2 =1;
if &counter= 11 and &counter1= 2 then &var2._Pantene_2 =1;
if &counter= 217 and &counter1= 2 then &var2._Pantene_A_D_2 =1;
if &counter= 30 and &counter1= 2 then &var2._Sunsilk_2 =1;
if &counter= 252 and &counter1= 2 then &var2._Sunsilk_A_D_2 =1;
if &counter= 18 and &counter1= 2 then &var2._Ultra_Doux_2 =1;
if &counter= 19 and &counter1= 2 then &var2._Fiama_2 =1;
if &counter= 24 and &counter1= 2 then &var2._Chik_2 =1;
if &counter= 28 and &counter1= 2 then &var2._Lux_2 =1;
if &counter= 291 and &counter1= 2 then &var2._Vivel_2 =1;
if &counter= 108 and &counter1= 2 then &var2._Dabur_Vatika_A_D_2 =1;
if &counter= 38 and &counter1= 2 then &var2._Others_2 =1;
if &counter= 1 and &counter1= 3 then &var2._Clinic_All_Clear_3 =1;
if &counter= 3 and &counter1= 3 then &var2._Clinic_Plus_3 =1;
if &counter= 4 and &counter1= 3 then &var2._Dove_3 =1;
if &counter= 5 and &counter1= 3 then &var2._Essenza_3 =1;
if &counter= 31 and &counter1= 3 then &var2._Garnier_3 =1;
if &counter= 8 and &counter1= 3 then &var2._Garnier_A_D_3 =1;
if &counter= 10 and &counter1= 3 then &var2._Head_Shoulder_3 =1;
if &counter= 11 and &counter1= 3 then &var2._Pantene_3 =1;
if &counter= 217 and &counter1= 3 then &var2._Pantene_A_D_3 =1;
if &counter= 30 and &counter1= 3 then &var2._Sunsilk_3 =1;
if &counter= 252 and &counter1= 3 then &var2._Sunsilk_A_D_3 =1;
if &counter= 18 and &counter1= 3 then &var2._Ultra_Doux_3 =1;
if &counter= 19 and &counter1= 3 then &var2._Fiama_3 =1;
if &counter= 24 and &counter1= 3 then &var2._Chik_3 =1;
if &counter= 28 and &counter1= 3 then &var2._Lux_3 =1;
if &counter= 291 and &counter1= 3 then &var2._Vivel_3 =1;
if &counter= 108 and &counter1= 3 then &var2._Dabur_Vatika_A_D_3 =1;
if &counter= 38 and &counter1= 3 then &var2._Others_3 =1;
if &counter= 1 and &counter1= 4 then &var2._Clinic_All_Clear_4 =1;
if &counter= 3 and &counter1= 4 then &var2._Clinic_Plus_4 =1;
if &counter= 4 and &counter1= 4 then &var2._Dove_4 =1;
if &counter= 5 and &counter1= 4 then &var2._Essenza_4 =1;
if &counter= 31 and &counter1= 4 then &var2._Garnier_4 =1;
if &counter= 8 and &counter1= 4 then &var2._Garnier_A_D_4 =1;
if &counter= 10 and &counter1= 4 then &var2._Head_Shoulder_4 =1;
if &counter= 11 and &counter1= 4 then &var2._Pantene_4 =1;
if &counter= 217 and &counter1= 4 then &var2._Pantene_A_D_4 =1;
if &counter= 30 and &counter1= 4 then &var2._Sunsilk_4 =1;
if &counter= 252 and &counter1= 4 then &var2._Sunsilk_A_D_4 =1;
if &counter= 18 and &counter1= 4 then &var2._Ultra_Doux_4 =1;
if &counter= 19 and &counter1= 4 then &var2._Fiama_4 =1;
if &counter= 24 and &counter1= 4 then &var2._Chik_4 =1;
if &counter= 28 and &counter1= 4 then &var2._Lux_4 =1;
if &counter= 291 and &counter1= 4 then &var2._Vivel_4 =1;
if &counter= 108 and &counter1= 4 then &var2._Dabur_Vatika_A_D_4 =1;
if &counter= 38 and &counter1= 4 then &var2._Others_4 =1;
if &counter= 1 and &counter1= 5 then &var2._Clinic_All_Clear_5 =1;
if &counter= 3 and &counter1= 5 then &var2._Clinic_Plus_5 =1;
if &counter= 4 and &counter1= 5 then &var2._Dove_5 =1;
if &counter= 5 and &counter1= 5 then &var2._Essenza_5 =1;
if &counter= 31 and &counter1= 5 then &var2._Garnier_5 =1;
if &counter= 8 and &counter1= 5 then &var2._Garnier_A_D_5 =1;
if &counter= 10 and &counter1= 5 then &var2._Head_Shoulder_5 =1;
if &counter= 11 and &counter1= 5 then &var2._Pantene_5 =1;
if &counter= 217 and &counter1= 5 then &var2._Pantene_A_D_5 =1;
if &counter= 30 and &counter1= 5 then &var2._Sunsilk_5 =1;
if &counter= 252 and &counter1= 5 then &var2._Sunsilk_A_D_5 =1;
if &counter= 18 and &counter1= 5 then &var2._Ultra_Doux_5 =1;
if &counter= 19 and &counter1= 5 then &var2._Fiama_5 =1;
if &counter= 24 and &counter1= 5 then &var2._Chik_5 =1;
if &counter= 28 and &counter1= 5 then &var2._Lux_5 =1;
if &counter= 291 and &counter1= 5 then &var2._Vivel_5 =1;
if &counter= 108 and &counter1= 5 then &var2._Dabur_Vatika_A_D_5 =1;
if &counter= 38 and &counter1= 5 then &var2._Others_5 =1;
if &counter= 1 and &counter1= 6 then &var2._Clinic_All_Clear_6 =1;
if &counter= 3 and &counter1= 6 then &var2._Clinic_Plus_6 =1;
if &counter= 4 and &counter1= 6 then &var2._Dove_6 =1;
if &counter= 5 and &counter1= 6 then &var2._Essenza_6 =1;
if &counter= 31 and &counter1= 6 then &var2._Garnier_6 =1;
if &counter= 8 and &counter1= 6 then &var2._Garnier_A_D_6 =1;
if &counter= 10 and &counter1= 6 then &var2._Head_Shoulder_6 =1;
if &counter= 11 and &counter1= 6 then &var2._Pantene_6 =1;
if &counter= 217 and &counter1= 6 then &var2._Pantene_A_D_6 =1;
if &counter= 30 and &counter1= 6 then &var2._Sunsilk_6 =1;
if &counter= 252 and &counter1= 6 then &var2._Sunsilk_A_D_6 =1;
if &counter= 18 and &counter1= 6 then &var2._Ultra_Doux_6 =1;
if &counter= 19 and &counter1= 6 then &var2._Fiama_6 =1;
if &counter= 24 and &counter1= 6 then &var2._Chik_6 =1;
if &counter= 28 and &counter1= 6 then &var2._Lux_6 =1;
if &counter= 291 and &counter1= 6 then &var2._Vivel_6 =1;
if &counter= 108 and &counter1= 6 then &var2._Dabur_Vatika_A_D_6 =1;
if &counter= 38 and &counter1= 6 then &var2._Others_6 =1;
if &counter= 1 and &counter1= 7 then &var2._Clinic_All_Clear_7 =1;
if &counter= 3 and &counter1= 7 then &var2._Clinic_Plus_7 =1;
if &counter= 4 and &counter1= 7 then &var2._Dove_7 =1;
if &counter= 5 and &counter1= 7 then &var2._Essenza_7 =1;
if &counter= 31 and &counter1= 7 then &var2._Garnier_7 =1;
if &counter= 8 and &counter1= 7 then &var2._Garnier_A_D_7 =1;
if &counter= 10 and &counter1= 7 then &var2._Head_Shoulder_7 =1;
if &counter= 11 and &counter1= 7 then &var2._Pantene_7 =1;
if &counter= 217 and &counter1= 7 then &var2._Pantene_A_D_7 =1;
if &counter= 30 and &counter1= 7 then &var2._Sunsilk_7 =1;
if &counter= 252 and &counter1= 7 then &var2._Sunsilk_A_D_7 =1;
if &counter= 18 and &counter1= 7 then &var2._Ultra_Doux_7 =1;
if &counter= 19 and &counter1= 7 then &var2._Fiama_7 =1;
if &counter= 24 and &counter1= 7 then &var2._Chik_7 =1;
if &counter= 28 and &counter1= 7 then &var2._Lux_7 =1;
if &counter= 291 and &counter1= 7 then &var2._Vivel_7 =1;
if &counter= 108 and &counter1= 7 then &var2._Dabur_Vatika_A_D_7 =1;
if &counter= 38 and &counter1= 7 then &var2._Others_7 =1;
if &counter= 1 and &counter1= 8 then &var2._Clinic_All_Clear_8 =1;
if &counter= 3 and &counter1= 8 then &var2._Clinic_Plus_8 =1;
if &counter= 4 and &counter1= 8 then &var2._Dove_8 =1;
if &counter= 5 and &counter1= 8 then &var2._Essenza_8 =1;
if &counter= 31 and &counter1= 8 then &var2._Garnier_8 =1;
if &counter= 8 and &counter1= 8 then &var2._Garnier_A_D_8 =1;
if &counter= 10 and &counter1= 8 then &var2._Head_Shoulder_8 =1;
if &counter= 11 and &counter1= 8 then &var2._Pantene_8 =1;
if &counter= 217 and &counter1= 8 then &var2._Pantene_A_D_8 =1;
if &counter= 30 and &counter1= 8 then &var2._Sunsilk_8 =1;
if &counter= 252 and &counter1= 8 then &var2._Sunsilk_A_D_8 =1;
if &counter= 18 and &counter1= 8 then &var2._Ultra_Doux_8 =1;
if &counter= 19 and &counter1= 8 then &var2._Fiama_8 =1;
if &counter= 24 and &counter1= 8 then &var2._Chik_8 =1;
if &counter= 28 and &counter1= 8 then &var2._Lux_8 =1;
if &counter= 291 and &counter1= 8 then &var2._Vivel_8 =1;
if &counter= 108 and &counter1= 8 then &var2._Dabur_Vatika_A_D_8 =1;
if &counter= 38 and &counter1= 8 then &var2._Others_8 =1;
if &counter= 1 and &counter1= 9 then &var2._Clinic_All_Clear_9 =1;
if &counter= 3 and &counter1= 9 then &var2._Clinic_Plus_9 =1;
if &counter= 4 and &counter1= 9 then &var2._Dove_9 =1;
if &counter= 5 and &counter1= 9 then &var2._Essenza_9 =1;
if &counter= 31 and &counter1= 9 then &var2._Garnier_9 =1;
if &counter= 8 and &counter1= 9 then &var2._Garnier_A_D_9 =1;
if &counter= 10 and &counter1= 9 then &var2._Head_Shoulder_9 =1;
if &counter= 11 and &counter1= 9 then &var2._Pantene_9 =1;
if &counter= 217 and &counter1= 9 then &var2._Pantene_A_D_9 =1;
if &counter= 30 and &counter1= 9 then &var2._Sunsilk_9 =1;
if &counter= 252 and &counter1= 9 then &var2._Sunsilk_A_D_9 =1;
if &counter= 18 and &counter1= 9 then &var2._Ultra_Doux_9 =1;
if &counter= 19 and &counter1= 9 then &var2._Fiama_9 =1;
if &counter= 24 and &counter1= 9 then &var2._Chik_9 =1;
if &counter= 28 and &counter1= 9 then &var2._Lux_9 =1;
if &counter= 291 and &counter1= 9 then &var2._Vivel_9 =1;
if &counter= 108 and &counter1= 9 then &var2._Dabur_Vatika_A_D_9 =1;
if &counter= 38 and &counter1= 9 then &var2._Others_9 =1;
if &counter= 1 and &counter1= 10 then &var2._Clinic_All_Clear_10 =1;
if &counter= 3 and &counter1= 10 then &var2._Clinic_Plus_10 =1;
if &counter= 4 and &counter1= 10 then &var2._Dove_10 =1;
if &counter= 5 and &counter1= 10 then &var2._Essenza_10 =1;
if &counter= 31 and &counter1= 10 then &var2._Garnier_10 =1;
if &counter= 8 and &counter1= 10 then &var2._Garnier_A_D_10 =1;
if &counter= 10 and &counter1= 10 then &var2._Head_Shoulder_10 =1;
if &counter= 11 and &counter1= 10 then &var2._Pantene_10 =1;
if &counter= 217 and &counter1= 10 then &var2._Pantene_A_D_10 =1;
if &counter= 30 and &counter1= 10 then &var2._Sunsilk_10 =1;
if &counter= 252 and &counter1= 10 then &var2._Sunsilk_A_D_10 =1;
if &counter= 18 and &counter1= 10 then &var2._Ultra_Doux_10 =1;
if &counter= 19 and &counter1= 10 then &var2._Fiama_10 =1;
if &counter= 24 and &counter1= 10 then &var2._Chik_10 =1;
if &counter= 28 and &counter1= 10 then &var2._Lux_10 =1;
if &counter= 291 and &counter1= 10 then &var2._Vivel_10 =1;
if &counter= 108 and &counter1= 10 then &var2._Dabur_Vatika_A_D_10 =1;
if &counter= 38 and &counter1= 10 then &var2._Others_10 =1;
if &counter= 1 and &counter1= 11 then &var2._Clinic_All_Clear_11 =1;
if &counter= 3 and &counter1= 11 then &var2._Clinic_Plus_11 =1;
if &counter= 4 and &counter1= 11 then &var2._Dove_11 =1;
if &counter= 5 and &counter1= 11 then &var2._Essenza_11 =1;
if &counter= 31 and &counter1= 11 then &var2._Garnier_11 =1;
if &counter= 8 and &counter1= 11 then &var2._Garnier_A_D_11 =1;
if &counter= 10 and &counter1= 11 then &var2._Head_Shoulder_11 =1;
if &counter= 11 and &counter1= 11 then &var2._Pantene_11 =1;
if &counter= 217 and &counter1= 11 then &var2._Pantene_A_D_11 =1;
if &counter= 30 and &counter1= 11 then &var2._Sunsilk_11 =1;
if &counter= 252 and &counter1= 11 then &var2._Sunsilk_A_D_11 =1;
if &counter= 18 and &counter1= 11 then &var2._Ultra_Doux_11 =1;
if &counter= 19 and &counter1= 11 then &var2._Fiama_11 =1;
if &counter= 24 and &counter1= 11 then &var2._Chik_11 =1;
if &counter= 28 and &counter1= 11 then &var2._Lux_11 =1;
if &counter= 291 and &counter1= 11 then &var2._Vivel_11 =1;
if &counter= 108 and &counter1= 11 then &var2._Dabur_Vatika_A_D_11 =1;
if &counter= 38 and &counter1= 11 then &var2._Others_11 =1;
if &counter= 1 and &counter1= 12 then &var2._Clinic_All_Clear_12 =1;
if &counter= 3 and &counter1= 12 then &var2._Clinic_Plus_12 =1;
if &counter= 4 and &counter1= 12 then &var2._Dove_12 =1;
if &counter= 5 and &counter1= 12 then &var2._Essenza_12 =1;
if &counter= 31 and &counter1= 12 then &var2._Garnier_12 =1;
if &counter= 8 and &counter1= 12 then &var2._Garnier_A_D_12 =1;
if &counter= 10 and &counter1= 12 then &var2._Head_Shoulder_12 =1;
if &counter= 11 and &counter1= 12 then &var2._Pantene_12 =1;
if &counter= 217 and &counter1= 12 then &var2._Pantene_A_D_12 =1;
if &counter= 30 and &counter1= 12 then &var2._Sunsilk_12 =1;
if &counter= 252 and &counter1= 12 then &var2._Sunsilk_A_D_12 =1;
if &counter= 18 and &counter1= 12 then &var2._Ultra_Doux_12 =1;
if &counter= 19 and &counter1= 12 then &var2._Fiama_12 =1;
if &counter= 24 and &counter1= 12 then &var2._Chik_12 =1;
if &counter= 28 and &counter1= 12 then &var2._Lux_12 =1;
if &counter= 291 and &counter1= 12 then &var2._Vivel_12 =1;
if &counter= 108 and &counter1= 12 then &var2._Dabur_Vatika_A_D_12 =1;
if &counter= 38 and &counter1= 12 then &var2._Others_12 =1;

%end;
%end;
run;
%mend;
%trans (M16B_, Q16B, M16B);

%macro trans (var1, var2, var3);
data v1.Selectvars_rawdata_11;
set v1.Selectvars_rawdata_11;
%do i=1 %to 14;
%do j=1 %to 20;
%let counter=&var1.&i;
%let counter1=&var3._&i._&j;
if &counter= 1 and &counter1= 1 then &var2._Clinic_All_Clear_1 =1;
if &counter= 3 and &counter1= 1 then &var2._Clinic_Plus_1 =1;
if &counter= 4 and &counter1= 1 then &var2._Dove_1 =1;
if &counter= 5 and &counter1= 1 then &var2._Essenza_1 =1;
if &counter= 31 and &counter1= 1 then &var2._Garnier_1 =1;
if &counter= 8 and &counter1= 1 then &var2._Garnier_A_D_1 =1;
if &counter= 10 and &counter1= 1 then &var2._Head_Shoulder_1 =1;
if &counter= 11 and &counter1= 1 then &var2._Pantene_1 =1;
if &counter= 217 and &counter1= 1 then &var2._Pantene_A_D_1 =1;
if &counter= 30 and &counter1= 1 then &var2._Sunsilk_1 =1;
if &counter= 252 and &counter1= 1 then &var2._Sunsilk_A_D_1 =1;
if &counter= 18 and &counter1= 1 then &var2._Ultra_Doux_1 =1;
if &counter= 19 and &counter1= 1 then &var2._Fiama_1 =1;
if &counter= 24 and &counter1= 1 then &var2._Chik_1 =1;
if &counter= 28 and &counter1= 1 then &var2._Lux_1 =1;
if &counter= 291 and &counter1= 1 then &var2._Vivel_1 =1;
if &counter= 108 and &counter1= 1 then &var2._Dabur_Vatika_A_D_1 =1;
if &counter= 38 and &counter1= 1 then &var2._Others_1 =1;
if &counter= 1 and &counter1= 2 then &var2._Clinic_All_Clear_2 =1;
if &counter= 3 and &counter1= 2 then &var2._Clinic_Plus_2 =1;
if &counter= 4 and &counter1= 2 then &var2._Dove_2 =1;
if &counter= 5 and &counter1= 2 then &var2._Essenza_2 =1;
if &counter= 31 and &counter1= 2 then &var2._Garnier_2 =1;
if &counter= 8 and &counter1= 2 then &var2._Garnier_A_D_2 =1;
if &counter= 10 and &counter1= 2 then &var2._Head_Shoulder_2 =1;
if &counter= 11 and &counter1= 2 then &var2._Pantene_2 =1;
if &counter= 217 and &counter1= 2 then &var2._Pantene_A_D_2 =1;
if &counter= 30 and &counter1= 2 then &var2._Sunsilk_2 =1;
if &counter= 252 and &counter1= 2 then &var2._Sunsilk_A_D_2 =1;
if &counter= 18 and &counter1= 2 then &var2._Ultra_Doux_2 =1;
if &counter= 19 and &counter1= 2 then &var2._Fiama_2 =1;
if &counter= 24 and &counter1= 2 then &var2._Chik_2 =1;
if &counter= 28 and &counter1= 2 then &var2._Lux_2 =1;
if &counter= 291 and &counter1= 2 then &var2._Vivel_2 =1;
if &counter= 108 and &counter1= 2 then &var2._Dabur_Vatika_A_D_2 =1;
if &counter= 38 and &counter1= 2 then &var2._Others_2 =1;
if &counter= 1 and &counter1= 3 then &var2._Clinic_All_Clear_3 =1;
if &counter= 3 and &counter1= 3 then &var2._Clinic_Plus_3 =1;
if &counter= 4 and &counter1= 3 then &var2._Dove_3 =1;
if &counter= 5 and &counter1= 3 then &var2._Essenza_3 =1;
if &counter= 31 and &counter1= 3 then &var2._Garnier_3 =1;
if &counter= 8 and &counter1= 3 then &var2._Garnier_A_D_3 =1;
if &counter= 10 and &counter1= 3 then &var2._Head_Shoulder_3 =1;
if &counter= 11 and &counter1= 3 then &var2._Pantene_3 =1;
if &counter= 217 and &counter1= 3 then &var2._Pantene_A_D_3 =1;
if &counter= 30 and &counter1= 3 then &var2._Sunsilk_3 =1;
if &counter= 252 and &counter1= 3 then &var2._Sunsilk_A_D_3 =1;
if &counter= 18 and &counter1= 3 then &var2._Ultra_Doux_3 =1;
if &counter= 19 and &counter1= 3 then &var2._Fiama_3 =1;
if &counter= 24 and &counter1= 3 then &var2._Chik_3 =1;
if &counter= 28 and &counter1= 3 then &var2._Lux_3 =1;
if &counter= 291 and &counter1= 3 then &var2._Vivel_3 =1;
if &counter= 108 and &counter1= 3 then &var2._Dabur_Vatika_A_D_3 =1;
if &counter= 38 and &counter1= 3 then &var2._Others_3 =1;
if &counter= 1 and &counter1= 4 then &var2._Clinic_All_Clear_4 =1;
if &counter= 3 and &counter1= 4 then &var2._Clinic_Plus_4 =1;
if &counter= 4 and &counter1= 4 then &var2._Dove_4 =1;
if &counter= 5 and &counter1= 4 then &var2._Essenza_4 =1;
if &counter= 31 and &counter1= 4 then &var2._Garnier_4 =1;
if &counter= 8 and &counter1= 4 then &var2._Garnier_A_D_4 =1;
if &counter= 10 and &counter1= 4 then &var2._Head_Shoulder_4 =1;
if &counter= 11 and &counter1= 4 then &var2._Pantene_4 =1;
if &counter= 217 and &counter1= 4 then &var2._Pantene_A_D_4 =1;
if &counter= 30 and &counter1= 4 then &var2._Sunsilk_4 =1;
if &counter= 252 and &counter1= 4 then &var2._Sunsilk_A_D_4 =1;
if &counter= 18 and &counter1= 4 then &var2._Ultra_Doux_4 =1;
if &counter= 19 and &counter1= 4 then &var2._Fiama_4 =1;
if &counter= 24 and &counter1= 4 then &var2._Chik_4 =1;
if &counter= 28 and &counter1= 4 then &var2._Lux_4 =1;
if &counter= 291 and &counter1= 4 then &var2._Vivel_4 =1;
if &counter= 108 and &counter1= 4 then &var2._Dabur_Vatika_A_D_4 =1;
if &counter= 38 and &counter1= 4 then &var2._Others_4 =1;
if &counter= 1 and &counter1= 5 then &var2._Clinic_All_Clear_5 =1;
if &counter= 3 and &counter1= 5 then &var2._Clinic_Plus_5 =1;
if &counter= 4 and &counter1= 5 then &var2._Dove_5 =1;
if &counter= 5 and &counter1= 5 then &var2._Essenza_5 =1;
if &counter= 31 and &counter1= 5 then &var2._Garnier_5 =1;
if &counter= 8 and &counter1= 5 then &var2._Garnier_A_D_5 =1;
if &counter= 10 and &counter1= 5 then &var2._Head_Shoulder_5 =1;
if &counter= 11 and &counter1= 5 then &var2._Pantene_5 =1;
if &counter= 217 and &counter1= 5 then &var2._Pantene_A_D_5 =1;
if &counter= 30 and &counter1= 5 then &var2._Sunsilk_5 =1;
if &counter= 252 and &counter1= 5 then &var2._Sunsilk_A_D_5 =1;
if &counter= 18 and &counter1= 5 then &var2._Ultra_Doux_5 =1;
if &counter= 19 and &counter1= 5 then &var2._Fiama_5 =1;
if &counter= 24 and &counter1= 5 then &var2._Chik_5 =1;
if &counter= 28 and &counter1= 5 then &var2._Lux_5 =1;
if &counter= 291 and &counter1= 5 then &var2._Vivel_5 =1;
if &counter= 108 and &counter1= 5 then &var2._Dabur_Vatika_A_D_5 =1;
if &counter= 38 and &counter1= 5 then &var2._Others_5 =1;
if &counter= 1 and &counter1= 6 then &var2._Clinic_All_Clear_6 =1;
if &counter= 3 and &counter1= 6 then &var2._Clinic_Plus_6 =1;
if &counter= 4 and &counter1= 6 then &var2._Dove_6 =1;
if &counter= 5 and &counter1= 6 then &var2._Essenza_6 =1;
if &counter= 31 and &counter1= 6 then &var2._Garnier_6 =1;
if &counter= 8 and &counter1= 6 then &var2._Garnier_A_D_6 =1;
if &counter= 10 and &counter1= 6 then &var2._Head_Shoulder_6 =1;
if &counter= 11 and &counter1= 6 then &var2._Pantene_6 =1;
if &counter= 217 and &counter1= 6 then &var2._Pantene_A_D_6 =1;
if &counter= 30 and &counter1= 6 then &var2._Sunsilk_6 =1;
if &counter= 252 and &counter1= 6 then &var2._Sunsilk_A_D_6 =1;
if &counter= 18 and &counter1= 6 then &var2._Ultra_Doux_6 =1;
if &counter= 19 and &counter1= 6 then &var2._Fiama_6 =1;
if &counter= 24 and &counter1= 6 then &var2._Chik_6 =1;
if &counter= 28 and &counter1= 6 then &var2._Lux_6 =1;
if &counter= 291 and &counter1= 6 then &var2._Vivel_6 =1;
if &counter= 108 and &counter1= 6 then &var2._Dabur_Vatika_A_D_6 =1;
if &counter= 38 and &counter1= 6 then &var2._Others_6 =1;
if &counter= 1 and &counter1= 7 then &var2._Clinic_All_Clear_7 =1;
if &counter= 3 and &counter1= 7 then &var2._Clinic_Plus_7 =1;
if &counter= 4 and &counter1= 7 then &var2._Dove_7 =1;
if &counter= 5 and &counter1= 7 then &var2._Essenza_7 =1;
if &counter= 31 and &counter1= 7 then &var2._Garnier_7 =1;
if &counter= 8 and &counter1= 7 then &var2._Garnier_A_D_7 =1;
if &counter= 10 and &counter1= 7 then &var2._Head_Shoulder_7 =1;
if &counter= 11 and &counter1= 7 then &var2._Pantene_7 =1;
if &counter= 217 and &counter1= 7 then &var2._Pantene_A_D_7 =1;
if &counter= 30 and &counter1= 7 then &var2._Sunsilk_7 =1;
if &counter= 252 and &counter1= 7 then &var2._Sunsilk_A_D_7 =1;
if &counter= 18 and &counter1= 7 then &var2._Ultra_Doux_7 =1;
if &counter= 19 and &counter1= 7 then &var2._Fiama_7 =1;
if &counter= 24 and &counter1= 7 then &var2._Chik_7 =1;
if &counter= 28 and &counter1= 7 then &var2._Lux_7 =1;
if &counter= 291 and &counter1= 7 then &var2._Vivel_7 =1;
if &counter= 108 and &counter1= 7 then &var2._Dabur_Vatika_A_D_7 =1;
if &counter= 38 and &counter1= 7 then &var2._Others_7 =1;
if &counter= 1 and &counter1= 8 then &var2._Clinic_All_Clear_8 =1;
if &counter= 3 and &counter1= 8 then &var2._Clinic_Plus_8 =1;
if &counter= 4 and &counter1= 8 then &var2._Dove_8 =1;
if &counter= 5 and &counter1= 8 then &var2._Essenza_8 =1;
if &counter= 31 and &counter1= 8 then &var2._Garnier_8 =1;
if &counter= 8 and &counter1= 8 then &var2._Garnier_A_D_8 =1;
if &counter= 10 and &counter1= 8 then &var2._Head_Shoulder_8 =1;
if &counter= 11 and &counter1= 8 then &var2._Pantene_8 =1;
if &counter= 217 and &counter1= 8 then &var2._Pantene_A_D_8 =1;
if &counter= 30 and &counter1= 8 then &var2._Sunsilk_8 =1;
if &counter= 252 and &counter1= 8 then &var2._Sunsilk_A_D_8 =1;
if &counter= 18 and &counter1= 8 then &var2._Ultra_Doux_8 =1;
if &counter= 19 and &counter1= 8 then &var2._Fiama_8 =1;
if &counter= 24 and &counter1= 8 then &var2._Chik_8 =1;
if &counter= 28 and &counter1= 8 then &var2._Lux_8 =1;
if &counter= 291 and &counter1= 8 then &var2._Vivel_8 =1;
if &counter= 108 and &counter1= 8 then &var2._Dabur_Vatika_A_D_8 =1;
if &counter= 38 and &counter1= 8 then &var2._Others_8 =1;
if &counter= 1 and &counter1= 9 then &var2._Clinic_All_Clear_9 =1;
if &counter= 3 and &counter1= 9 then &var2._Clinic_Plus_9 =1;
if &counter= 4 and &counter1= 9 then &var2._Dove_9 =1;
if &counter= 5 and &counter1= 9 then &var2._Essenza_9 =1;
if &counter= 31 and &counter1= 9 then &var2._Garnier_9 =1;
if &counter= 8 and &counter1= 9 then &var2._Garnier_A_D_9 =1;
if &counter= 10 and &counter1= 9 then &var2._Head_Shoulder_9 =1;
if &counter= 11 and &counter1= 9 then &var2._Pantene_9 =1;
if &counter= 217 and &counter1= 9 then &var2._Pantene_A_D_9 =1;
if &counter= 30 and &counter1= 9 then &var2._Sunsilk_9 =1;
if &counter= 252 and &counter1= 9 then &var2._Sunsilk_A_D_9 =1;
if &counter= 18 and &counter1= 9 then &var2._Ultra_Doux_9 =1;
if &counter= 19 and &counter1= 9 then &var2._Fiama_9 =1;
if &counter= 24 and &counter1= 9 then &var2._Chik_9 =1;
if &counter= 28 and &counter1= 9 then &var2._Lux_9 =1;
if &counter= 291 and &counter1= 9 then &var2._Vivel_9 =1;
if &counter= 108 and &counter1= 9 then &var2._Dabur_Vatika_A_D_9 =1;
if &counter= 38 and &counter1= 9 then &var2._Others_9 =1;
if &counter= 1 and &counter1= 10 then &var2._Clinic_All_Clear_10 =1;
if &counter= 3 and &counter1= 10 then &var2._Clinic_Plus_10 =1;
if &counter= 4 and &counter1= 10 then &var2._Dove_10 =1;
if &counter= 5 and &counter1= 10 then &var2._Essenza_10 =1;
if &counter= 31 and &counter1= 10 then &var2._Garnier_10 =1;
if &counter= 8 and &counter1= 10 then &var2._Garnier_A_D_10 =1;
if &counter= 10 and &counter1= 10 then &var2._Head_Shoulder_10 =1;
if &counter= 11 and &counter1= 10 then &var2._Pantene_10 =1;
if &counter= 217 and &counter1= 10 then &var2._Pantene_A_D_10 =1;
if &counter= 30 and &counter1= 10 then &var2._Sunsilk_10 =1;
if &counter= 252 and &counter1= 10 then &var2._Sunsilk_A_D_10 =1;
if &counter= 18 and &counter1= 10 then &var2._Ultra_Doux_10 =1;
if &counter= 19 and &counter1= 10 then &var2._Fiama_10 =1;
if &counter= 24 and &counter1= 10 then &var2._Chik_10 =1;
if &counter= 28 and &counter1= 10 then &var2._Lux_10 =1;
if &counter= 291 and &counter1= 10 then &var2._Vivel_10 =1;
if &counter= 108 and &counter1= 10 then &var2._Dabur_Vatika_A_D_10 =1;
if &counter= 38 and &counter1= 10 then &var2._Others_10 =1;
if &counter= 1 and &counter1= 11 then &var2._Clinic_All_Clear_11 =1;
if &counter= 3 and &counter1= 11 then &var2._Clinic_Plus_11 =1;
if &counter= 4 and &counter1= 11 then &var2._Dove_11 =1;
if &counter= 5 and &counter1= 11 then &var2._Essenza_11 =1;
if &counter= 31 and &counter1= 11 then &var2._Garnier_11 =1;
if &counter= 8 and &counter1= 11 then &var2._Garnier_A_D_11 =1;
if &counter= 10 and &counter1= 11 then &var2._Head_Shoulder_11 =1;
if &counter= 11 and &counter1= 11 then &var2._Pantene_11 =1;
if &counter= 217 and &counter1= 11 then &var2._Pantene_A_D_11 =1;
if &counter= 30 and &counter1= 11 then &var2._Sunsilk_11 =1;
if &counter= 252 and &counter1= 11 then &var2._Sunsilk_A_D_11 =1;
if &counter= 18 and &counter1= 11 then &var2._Ultra_Doux_11 =1;
if &counter= 19 and &counter1= 11 then &var2._Fiama_11 =1;
if &counter= 24 and &counter1= 11 then &var2._Chik_11 =1;
if &counter= 28 and &counter1= 11 then &var2._Lux_11 =1;
if &counter= 291 and &counter1= 11 then &var2._Vivel_11 =1;
if &counter= 108 and &counter1= 11 then &var2._Dabur_Vatika_A_D_11 =1;
if &counter= 38 and &counter1= 11 then &var2._Others_11 =1;
if &counter= 1 and &counter1= 12 then &var2._Clinic_All_Clear_12 =1;
if &counter= 3 and &counter1= 12 then &var2._Clinic_Plus_12 =1;
if &counter= 4 and &counter1= 12 then &var2._Dove_12 =1;
if &counter= 5 and &counter1= 12 then &var2._Essenza_12 =1;
if &counter= 31 and &counter1= 12 then &var2._Garnier_12 =1;
if &counter= 8 and &counter1= 12 then &var2._Garnier_A_D_12 =1;
if &counter= 10 and &counter1= 12 then &var2._Head_Shoulder_12 =1;
if &counter= 11 and &counter1= 12 then &var2._Pantene_12 =1;
if &counter= 217 and &counter1= 12 then &var2._Pantene_A_D_12 =1;
if &counter= 30 and &counter1= 12 then &var2._Sunsilk_12 =1;
if &counter= 252 and &counter1= 12 then &var2._Sunsilk_A_D_12 =1;
if &counter= 18 and &counter1= 12 then &var2._Ultra_Doux_12 =1;
if &counter= 19 and &counter1= 12 then &var2._Fiama_12 =1;
if &counter= 24 and &counter1= 12 then &var2._Chik_12 =1;
if &counter= 28 and &counter1= 12 then &var2._Lux_12 =1;
if &counter= 291 and &counter1= 12 then &var2._Vivel_12 =1;
if &counter= 108 and &counter1= 12 then &var2._Dabur_Vatika_A_D_12 =1;
if &counter= 38 and &counter1= 12 then &var2._Others_12 =1;

%end;
%end;
run;
%mend;
%trans (New_M16B_, Q16B, New_M16B);
ods html file="E:\Projects\ITC\Apr 21\freq_remaining.xls";

proc freq data=v1.Selectvars_rawdata_11;
tables
SHAMPU_AD1
SHAMPU_AD2
SHAMPO_AD3
M21A_1
M21A_2
M21A_3
M21A_4
M21B
M22_1
M22_2
M23_1
M23_2
M23_3
M23_4
M23_5
M23_6
M23_7
M23_8
M23_9
M23_10
M23_PC_1
M23_PC_2
M23_PC_3
M23_PC_4
M23_PC_5
M23_PC_6
M23_PC_7
M23_PC_8
M23_PC_9
M23_PC_10
M23A_1
M23A_2
M23A_3
M23A_4
M23A_5
M23A_6
M23A_7
M23A_8
M23A_9
M23A_10
M23A_PC_1
M23A_PC_2
M23A_PC_3
M23A_PC_4
M23A_PC_5
M23A_PC_6
M23A_PC_7
M23A_PC_8
M23A_PC_9
M23A_PC_10
Q30A_D_1
Q30A_D_2
Q30A_D_3
Q30A_D_4
Q30_1
Q30_2
Q30_3
Q30_4
Q30_5
Q31_1
Q31_2
Q31_3
Q31_4
Q31_5
WEIGHT
M24_1
M24_2_1
M24_2_2
M24_2_3
M24_2_4
M24_2_5
M24_2_6
M24_2_7
M24_2_8
M24_2_9
M24_2_10
M25_ITC_1
M25_ITC_2
M25_ITC_3
M25_ITC_4
M25_ITC_5
M25_HUL_1
M25_HUL_2
M25_HUL_3
M25_HUL_4
M25_HUL_5
M25_NONE_1
M25_NONE_2
M25_NONE_3
M25_NONE_4
M25_NONE_5
TAG1_2_3_1
TAG1_2_3_2
TAG1_2_3_3

;
run;
ods html close;
/*Q25*/
data v1.Selectvars_rawdata_11;
set v1.Selectvars_rawdata_11;
array abc(*) M25_ITC_1--M25_ITC_5;
array def(*) M25_HUL_1--M25_HUL_5;
do i= 1 to 5;
if abc(i)=1 then ITC_int_std=1;
if abc(i)=2 then ITC_premium=1;
if abc(i)=3 then ITC_trust=1;
if abc(i)=4 then ITC_relevant=1;
if abc(i)=5 then ITC_quality=1;
if def(i)=1 then HUL_int_std=1;
if def(i)=2 then HUL_premium=1;
if def(i)=3 then HUL_trust=1;
if def(i)=4 then HUL_relevant=1;
if def(i)=5 then HUL_quality=1;
end;
drop i ;
run;

/*Other recruitment survey vars*/
ods html file="E:\Projects\ITC\Apr 21\freq_others.xls";

proc freq data=v1.Selectvars_rawdata_11;
tables
Q3E
Q5A_1
Q5A_2
Q5A_3
Q5A_4
Q5A_5
Q5C_01_1
Q5C_02_1
Q5C_03_1
Q5C_04_1
Q5C_05_1
Q5C_06_1
Q5C_07_1
Q5C_08_1
Q5C_09_1
Q5C_10_1
Q5C_11_1
Q5C_12_1
Q5C_13_1
Q5C_14_1
Q5C_15_1
Q5C_01_2
Q5C_02_2
Q5C_03_2
Q5C_04_2
Q5C_05_2
Q5C_06_2
Q5C_07_2
Q5C_08_2
Q5C_09_2
Q5C_10_2
Q5C_11_2
Q5C_12_2
Q5C_13_2
Q5C_14_2
Q5C_15_2
Q8A
Q8B
Q10
Q10_SHAMPU
;
run;
ods html close;

/*screener test*/

data v1.Selectvars_rawdata_11;
set v1.Selectvars_rawdata_11;
if Q3E>=4 or Q3E=0 then delete;
run;
/*9 observation deleted*/
data v1.Selectvars_rawdata_11;
set v1.Selectvars_rawdata_11;
if Q8B=1 then delete;
run;
/*2 observation deleted*/

data Q10;
set v1.Selectvars_rawdata_11;
keep
Q10
Q10_SHAMPU;
run;
data v1.Selectvars_rawdata_11;
set v1.Selectvars_rawdata_11;
drop Q10_SHAMPU;
run;
data v1.Selectvars_rawdata_11;
set v1.Selectvars_rawdata_11;
rename
Q5C_01_1 = Q5C_1_1
Q5C_02_1 = Q5C_1_2
Q5C_03_1 = Q5C_1_3
Q5C_04_1 = Q5C_1_4
Q5C_05_1 = Q5C_1_5
Q5C_06_1 = Q5C_1_6
Q5C_07_1 = Q5C_1_7
Q5C_08_1 = Q5C_1_8
Q5C_09_1 = Q5C_1_9
Q5C_10_1 = Q5C_1_10
Q5C_11_1 = Q5C_1_11
Q5C_12_1 = Q5C_1_12
Q5C_13_1 = Q5C_1_13
Q5C_14_1 = Q5C_1_14
Q5C_15_1 = Q5C_1_15
Q5C_01_2 = Q5C_2_1
Q5C_02_2 = Q5C_2_2
Q5C_03_2 = Q5C_2_3
Q5C_04_2 = Q5C_2_4
Q5C_05_2 = Q5C_2_5
Q5C_06_2 = Q5C_2_6
Q5C_07_2 = Q5C_2_7
Q5C_08_2 = Q5C_2_8
Q5C_09_2 = Q5C_2_9
Q5C_10_2 = Q5C_2_10
Q5C_11_2 = Q5C_2_11
Q5C_12_2 = Q5C_2_12
Q5C_13_2 = Q5C_2_13
Q5C_14_2 = Q5C_2_14
Q5C_15_2 = Q5C_2_15
;run;

%macro q1 (var);
data v1.Selectvars_rawdata_11;
set v1.Selectvars_rawdata_11;
%do i=1 %to 15;
%let counter=&var._&i;
if &counter =1 then &counter =1;
if &counter =2 then &counter =1;
if &counter =3 then &counter =3;
if &counter =4 then &counter =4;
if &counter =5 then &counter =5;
if &counter =6 then &counter =31;
if &counter =7 then &counter =31;
if &counter =8 then &counter =8;
if &counter =9 then &counter =31;
if &counter =10 then &counter =10;
if &counter =11 then &counter =11;
if &counter =12 then &counter =11;
if &counter =13 then &counter =11;
if &counter =14 then &counter =11;
if &counter =15 then &counter =11;
if &counter =16 then &counter =30;
if &counter =17 then &counter =30;
if &counter =18 then &counter =18;
if &counter =19 then &counter =19;
if &counter =20 then &counter =19;
if &counter =21 then &counter =19;
if &counter =22 then &counter =19;
if &counter =23 then &counter =19;
if &counter =24 then &counter =24;
if &counter =25 then &counter =24;
if &counter =26 then &counter =24;
if &counter =27 then &counter =24;
if &counter =28 then &counter =28;
if &counter =29 then &counter =18;
if &counter =30 then &counter =30;
if &counter =31 then &counter =31;
if &counter =32 then &counter =38;
if &counter =33 then &counter =38;
if &counter =34 then &counter =38;
if &counter =35 then &counter =38;
if &counter =36 then &counter =38;
if &counter =37 then &counter =38;
if &counter =38 then &counter =38;
if &counter =39 then &counter =38;
if &counter =40 then &counter =38;
if &counter =41 then &counter =38;
if &counter =42 then &counter =38;
if &counter =43 then &counter =38;
if &counter =44 then &counter =38;
if &counter =45 then &counter =38;
if &counter =46 then &counter =38;
if &counter =47 then &counter =38;
if &counter =48 then &counter =38;
if &counter =49 then &counter =38;
if &counter =50 then &counter =38;
if &counter =51 then &counter =38;
if &counter =52 then &counter =38;
if &counter =53 then &counter =38;
if &counter =54 then &counter =38;
if &counter =55 then &counter =38;
if &counter =56 then &counter =38;
if &counter =57 then &counter =38;
if &counter =58 then &counter =38;
if &counter =59 then &counter =38;
if &counter =60 then &counter =38;
if &counter =61 then &counter =38;
if &counter =62 then &counter =38;
if &counter =63 then &counter =38;
if &counter =64 then &counter =24;
if &counter =65 then &counter =24;
if &counter =66 then &counter =38;
if &counter =67 then &counter =38;
if &counter =68 then &counter =24;
if &counter =69 then &counter =24;
if &counter =70 then &counter =24;
if &counter =71 then &counter =24;
if &counter =72 then &counter =24;
if &counter =73 then &counter =24;
if &counter =74 then &counter =24;
if &counter =75 then &counter =38;
if &counter =76 then &counter =38;
if &counter =77 then &counter =1;
if &counter =78 then &counter =1;
if &counter =79 then &counter =1;
if &counter =80 then &counter =1;
if &counter =81 then &counter =38;
if &counter =82 then &counter =1;
if &counter =83 then &counter =1;
if &counter =84 then &counter =1;
if &counter =85 then &counter =1;
if &counter =86 then &counter =1;
if &counter =87 then &counter =1;
if &counter =88 then &counter =38;
if &counter =89 then &counter =1;
if &counter =90 then &counter =1;
if &counter =91 then &counter =3;
if &counter =92 then &counter =38;
if &counter =93 then &counter =3;
if &counter =94 then &counter =3;
if &counter =95 then &counter =3;
if &counter =96 then &counter =3;
if &counter =97 then &counter =3;
if &counter =98 then &counter =3;
if &counter =99 then &counter =3;
if &counter =100 then &counter =3;
if &counter =101 then &counter =3;
if &counter =102 then &counter =3;
if &counter =103 then &counter =3;
if &counter =104 then &counter =38;
if &counter =105 then &counter =38;
if &counter =106 then &counter =38;
if &counter =107 then &counter =38;
if &counter =108 then &counter =108;
if &counter =109 then &counter =38;
if &counter =110 then &counter =38;
if &counter =111 then &counter =38;
if &counter =112 then &counter =38;
if &counter =113 then &counter =38;
if &counter =114 then &counter =38;
if &counter =115 then &counter =38;
if &counter =116 then &counter =38;
if &counter =117 then &counter =38;
if &counter =118 then &counter =38;
if &counter =119 then &counter =19;
if &counter =120 then &counter =31;
if &counter =121 then &counter =38;
if &counter =122 then &counter =38;
if &counter =123 then &counter =38;
if &counter =124 then &counter =38;
if &counter =125 then &counter =38;
if &counter =126 then &counter =38;
if &counter =127 then &counter =38;
if &counter =128 then &counter =38;
if &counter =129 then &counter =38;
if &counter =130 then &counter =38;
if &counter =131 then &counter =38;
if &counter =132 then &counter =38;
if &counter =133 then &counter =38;
if &counter =134 then &counter =10;
if &counter =135 then &counter =10;
if &counter =136 then &counter =10;
if &counter =137 then &counter =10;
if &counter =138 then &counter =10;
if &counter =139 then &counter =10;
if &counter =140 then &counter =10;
if &counter =141 then &counter =10;
if &counter =142 then &counter =10;
if &counter =143 then &counter =10;
if &counter =144 then &counter =10;
if &counter =145 then &counter =10;
if &counter =146 then &counter =10;
if &counter =147 then &counter =10;
if &counter =148 then &counter =10;
if &counter =149 then &counter =10;
if &counter =150 then &counter =38;
if &counter =151 then &counter =38;
if &counter =152 then &counter =38;
if &counter =153 then &counter =38;
if &counter =154 then &counter =38;
if &counter =155 then &counter =38;
if &counter =156 then &counter =38;
if &counter =157 then &counter =38;
if &counter =158 then &counter =38;
if &counter =159 then &counter =38;
if &counter =160 then &counter =38;
if &counter =161 then &counter =38;
if &counter =162 then &counter =38;
if &counter =163 then &counter =38;
if &counter =164 then &counter =38;
if &counter =165 then &counter =38;
if &counter =166 then &counter =38;
if &counter =167 then &counter =38;
if &counter =168 then &counter =38;
if &counter =169 then &counter =38;
if &counter =170 then &counter =28;
if &counter =171 then &counter =28;
if &counter =172 then &counter =28;
if &counter =173 then &counter =38;
if &counter =174 then &counter =38;
if &counter =175 then &counter =38;
if &counter =176 then &counter =38;
if &counter =177 then &counter =38;
if &counter =178 then &counter =38;
if &counter =179 then &counter =38;
if &counter =180 then &counter =38;
if &counter =181 then &counter =38;
if &counter =182 then &counter =38;
if &counter =183 then &counter =38;
if &counter =184 then &counter =38;
if &counter =185 then &counter =38;
if &counter =186 then &counter =38;
if &counter =187 then &counter =4;
if &counter =188 then &counter =10;
if &counter =189 then &counter =30;
if &counter =190 then &counter =38;
if &counter =191 then &counter =38;
if &counter =192 then &counter =38;
if &counter =193 then &counter =38;
if &counter =194 then &counter =38;
if &counter =195 then &counter =38;
if &counter =196 then &counter =38;
if &counter =197 then &counter =38;
if &counter =198 then &counter =38;
if &counter =199 then &counter =38;
if &counter =200 then &counter =38;
if &counter =201 then &counter =38;
if &counter =202 then &counter =38;
if &counter =203 then &counter =38;
if &counter =204 then &counter =38;
if &counter =205 then &counter =38;
if &counter =206 then &counter =38;
if &counter =207 then &counter =38;
if &counter =208 then &counter =38;
if &counter =209 then &counter =38;
if &counter =210 then &counter =38;
if &counter =211 then &counter =38;
if &counter =212 then &counter =38;
if &counter =213 then &counter =38;
if &counter =214 then &counter =38;
if &counter =215 then &counter =217;
if &counter =216 then &counter =11;
if &counter =217 then &counter =217;
if &counter =218 then &counter =11;
if &counter =219 then &counter =11;
if &counter =220 then &counter =11;
if &counter =221 then &counter =24;
if &counter =222 then &counter =11;
if &counter =223 then &counter =11;
if &counter =224 then &counter =11;
if &counter =225 then &counter =11;
if &counter =226 then &counter =11;
if &counter =227 then &counter =11;
if &counter =228 then &counter =11;
if &counter =229 then &counter =11;
if &counter =230 then &counter =11;
if &counter =231 then &counter =38;
if &counter =232 then &counter =38;
if &counter =233 then &counter =38;
if &counter =234 then &counter =38;
if &counter =235 then &counter =38;
if &counter =236 then &counter =38;
if &counter =237 then &counter =38;
if &counter =238 then &counter =38;
if &counter =239 then &counter =38;
if &counter =240 then &counter =38;
if &counter =241 then &counter =38;
if &counter =242 then &counter =38;
if &counter =243 then &counter =38;
if &counter =244 then &counter =38;
if &counter =245 then &counter =38;
if &counter =246 then &counter =38;
if &counter =247 then &counter =38;
if &counter =248 then &counter =38;
if &counter =249 then &counter =38;
if &counter =250 then &counter =38;
if &counter =251 then &counter =38;
if &counter =252 then &counter =252;
if &counter =253 then &counter =30;
if &counter =254 then &counter =30;
if &counter =255 then &counter =30;
if &counter =256 then &counter =30;
if &counter =257 then &counter =30;
if &counter =258 then &counter =30;
if &counter =259 then &counter =30;
if &counter =260 then &counter =30;
if &counter =261 then &counter =30;
if &counter =262 then &counter =30;
if &counter =263 then &counter =30;
if &counter =264 then &counter =30;
if &counter =265 then &counter =252;
if &counter =266 then &counter =30;
if &counter =267 then &counter =30;
if &counter =268 then &counter =30;
if &counter =269 then &counter =30;
if &counter =270 then &counter =30;
if &counter =271 then &counter =38;
if &counter =272 then &counter =38;
if &counter =273 then &counter =38;
if &counter =274 then &counter =18;
if &counter =275 then &counter =18;
if &counter =276 then &counter =18;
if &counter =277 then &counter =18;
if &counter =278 then &counter =18;
if &counter =279 then &counter =38;
if &counter =997 then &counter =38;
if &counter =998 then &counter =38;
if &counter =999 then &counter =38;
if &counter =280 then &counter =28;
if &counter =281 then &counter =30;
if &counter =282 then &counter =4;
if &counter =283 then &counter =31;
if &counter =284 then &counter =28;
if &counter =285 then &counter =11;
if &counter =286 then &counter =38;
if &counter =287 then &counter =19;
if &counter =288 then &counter =19;
if &counter =289 then &counter =4;
if &counter =290 then &counter =30;
if &counter =291 then &counter =291;
if &counter =292 then &counter =291;
if &counter =293 then &counter =291;
if &counter =294 then &counter =291;
if &counter =295 then &counter =38;
if &counter =296 then &counter =3;
if &counter =297 then &counter =1;
if &counter =298 then &counter =30;
if &counter =299 then &counter =24;
if &counter =300 then &counter =38;
if &counter =301 then &counter =4;
if &counter =302 then &counter =4;
if &counter =303 then &counter =4;
if &counter =304 then &counter =11;
if &counter =305 then &counter =10;
if &counter =306 then &counter =28;
if &counter =307 then &counter =38;
if &counter =308 then &counter =28;
if &counter =309 then &counter =4;
if &counter =310 then &counter =3;
if &counter =311 then &counter =4;
if &counter =312 then &counter =38;
if &counter =313 then &counter =38;
if &counter =314 then &counter =3;
if &counter =315 then &counter =28;
if &counter =316 then &counter =38;
if &counter =317 then &counter =38;
if &counter =318 then &counter =38;
if &counter =319 then &counter =3;
if &counter =320 then &counter =1;
if &counter =321 then &counter =38;
if &counter =322 then &counter =291;
if &counter =323 then &counter =4;
if &counter =324 then &counter =38;
if &counter =325 then &counter =38;
if &counter =326 then &counter =38;
if &counter =327 then &counter =38;
if &counter =328 then &counter =4;
if &counter =329 then &counter =38;
if &counter =330 then &counter =38;
if &counter =331 then &counter =3;
if &counter =332 then &counter =31;
if &counter =333 then &counter =4;
if &counter =334 then &counter =11;
if &counter =335 then &counter =31;
if &counter =336 then &counter =38;
if &counter =337 then &counter =30;
if &counter =338 then &counter =38;
if &counter =339 then &counter =38;
if &counter =340 then &counter =38;
if &counter =341 then &counter =38;
if &counter =342 then &counter =30;
if &counter =343 then &counter =38;
if &counter =344 then &counter =24;
if &counter =345 then &counter =30;
if &counter =346 then &counter =38;
if &counter =347 then &counter =11;
if &counter =348 then &counter =38;
if &counter =349 then &counter =31;
if &counter =350 then &counter =10;
if &counter =351 then &counter =38;
if &counter =352 then &counter =8;
if &counter =353 then &counter =1;
if &counter =354 then &counter =38;
if &counter =355 then &counter =19;
if &counter =356 then &counter =3;
if &counter =357 then &counter =38;
if &counter =358 then &counter =38;
if &counter =359 then &counter =11;
if &counter =360 then &counter =38;
if &counter =361 then &counter =38;
if &counter =362 then &counter =38;
if &counter =363 then &counter =38;


%end;
run;
%mend;
%q1 (Q5C_1);
%q1 (Q5C_2);

/**/
/*data v1.Selectvars_rawdata_11;*/
/*set v1.Selectvars_rawdata_11;*/
/**/
/*if Q8A =1 then Q8A =1;*/
/*if Q8A =2 then Q8A =1;*/
/*if Q8A =3 then Q8A =3;*/
/*if Q8A =4 then Q8A =4;*/
/*if Q8A =5 then Q8A =5;*/
/*if Q8A =6 then Q8A =31;*/
/*if Q8A =7 then Q8A =31;*/
/*if Q8A =8 then Q8A =8;*/
/*if Q8A =9 then Q8A =31;*/
/*if Q8A =10 then Q8A =10;*/
/*if Q8A =11 then Q8A =11;*/
/*if Q8A =12 then Q8A =11;*/
/*if Q8A =13 then Q8A =11;*/
/*if Q8A =14 then Q8A =11;*/
/*if Q8A =15 then Q8A =11;*/
/*if Q8A =16 then Q8A =30;*/
/*if Q8A =17 then Q8A =30;*/
/*if Q8A =18 then Q8A =18;*/
/*if Q8A =19 then Q8A =19;*/
/*if Q8A =20 then Q8A =19;*/
/*if Q8A =21 then Q8A =19;*/
/*if Q8A =22 then Q8A =19;*/
/*if Q8A =23 then Q8A =19;*/
/*if Q8A =24 then Q8A =24;*/
/*if Q8A =25 then Q8A =24;*/
/*if Q8A =26 then Q8A =24;*/
/*if Q8A =27 then Q8A =24;*/
/*if Q8A =28 then Q8A =28;*/
/*if Q8A =29 then Q8A =18;*/
/*if Q8A =30 then Q8A =30;*/
/*if Q8A =31 then Q8A =31;*/
/*if Q8A =32 then Q8A =38;*/
/*if Q8A =33 then Q8A =38;*/
/*if Q8A =34 then Q8A =38;*/
/*if Q8A =35 then Q8A =38;*/
/*if Q8A =36 then Q8A =38;*/
/*if Q8A =37 then Q8A =38;*/
/*if Q8A =38 then Q8A =38;*/
/*if Q8A =39 then Q8A =38;*/
/*if Q8A =40 then Q8A =38;*/
/*if Q8A =41 then Q8A =38;*/
/*if Q8A =42 then Q8A =38;*/
/*if Q8A =43 then Q8A =38;*/
/*if Q8A =44 then Q8A =38;*/
/*if Q8A =45 then Q8A =38;*/
/*if Q8A =46 then Q8A =38;*/
/*if Q8A =47 then Q8A =38;*/
/*if Q8A =48 then Q8A =38;*/
/*if Q8A =49 then Q8A =38;*/
/*if Q8A =50 then Q8A =38;*/
/*if Q8A =51 then Q8A =38;*/
/*if Q8A =52 then Q8A =38;*/
/*if Q8A =53 then Q8A =38;*/
/*if Q8A =54 then Q8A =38;*/
/*if Q8A =55 then Q8A =38;*/
/*if Q8A =56 then Q8A =38;*/
/*if Q8A =57 then Q8A =38;*/
/*if Q8A =58 then Q8A =38;*/
/*if Q8A =59 then Q8A =38;*/
/*if Q8A =60 then Q8A =38;*/
/*if Q8A =61 then Q8A =38;*/
/*if Q8A =62 then Q8A =38;*/
/*if Q8A =63 then Q8A =38;*/
/*if Q8A =64 then Q8A =24;*/
/*if Q8A =65 then Q8A =24;*/
/*if Q8A =66 then Q8A =38;*/
/*if Q8A =67 then Q8A =38;*/
/*if Q8A =68 then Q8A =24;*/
/*if Q8A =69 then Q8A =24;*/
/*if Q8A =70 then Q8A =24;*/
/*if Q8A =71 then Q8A =24;*/
/*if Q8A =72 then Q8A =24;*/
/*if Q8A =73 then Q8A =24;*/
/*if Q8A =74 then Q8A =24;*/
/*if Q8A =75 then Q8A =38;*/
/*if Q8A =76 then Q8A =38;*/
/*if Q8A =77 then Q8A =1;*/
/*if Q8A =78 then Q8A =1;*/
/*if Q8A =79 then Q8A =1;*/
/*if Q8A =80 then Q8A =1;*/
/*if Q8A =81 then Q8A =38;*/
/*if Q8A =82 then Q8A =1;*/
/*if Q8A =83 then Q8A =1;*/
/*if Q8A =84 then Q8A =1;*/
/*if Q8A =85 then Q8A =1;*/
/*if Q8A =86 then Q8A =1;*/
/*if Q8A =87 then Q8A =1;*/
/*if Q8A =88 then Q8A =38;*/
/*if Q8A =89 then Q8A =1;*/
/*if Q8A =90 then Q8A =1;*/
/*if Q8A =91 then Q8A =3;*/
/*if Q8A =92 then Q8A =38;*/
/*if Q8A =93 then Q8A =3;*/
/*if Q8A =94 then Q8A =3;*/
/*if Q8A =95 then Q8A =3;*/
/*if Q8A =96 then Q8A =3;*/
/*if Q8A =97 then Q8A =3;*/
/*if Q8A =98 then Q8A =3;*/
/*if Q8A =99 then Q8A =3;*/
/*if Q8A =100 then Q8A =3;*/
/*if Q8A =101 then Q8A =3;*/
/*if Q8A =102 then Q8A =3;*/
/*if Q8A =103 then Q8A =3;*/
/*if Q8A =104 then Q8A =38;*/
/*if Q8A =105 then Q8A =38;*/
/*if Q8A =106 then Q8A =38;*/
/*if Q8A =107 then Q8A =38;*/
/*if Q8A =108 then Q8A =108;*/
/*if Q8A =109 then Q8A =38;*/
/*if Q8A =110 then Q8A =38;*/
/*if Q8A =111 then Q8A =38;*/
/*if Q8A =112 then Q8A =38;*/
/*if Q8A =113 then Q8A =38;*/
/*if Q8A =114 then Q8A =38;*/
/*if Q8A =115 then Q8A =38;*/
/*if Q8A =116 then Q8A =38;*/
/*if Q8A =117 then Q8A =38;*/
/*if Q8A =118 then Q8A =38;*/
/*if Q8A =119 then Q8A =19;*/
/*if Q8A =120 then Q8A =31;*/
/*if Q8A =121 then Q8A =38;*/
/*if Q8A =122 then Q8A =38;*/
/*if Q8A =123 then Q8A =38;*/
/*if Q8A =124 then Q8A =38;*/
/*if Q8A =125 then Q8A =38;*/
/*if Q8A =126 then Q8A =38;*/
/*if Q8A =127 then Q8A =38;*/
/*if Q8A =128 then Q8A =38;*/
/*if Q8A =129 then Q8A =38;*/
/*if Q8A =130 then Q8A =38;*/
/*if Q8A =131 then Q8A =38;*/
/*if Q8A =132 then Q8A =38;*/
/*if Q8A =133 then Q8A =38;*/
/*if Q8A =134 then Q8A =10;*/
/*if Q8A =135 then Q8A =10;*/
/*if Q8A =136 then Q8A =10;*/
/*if Q8A =137 then Q8A =10;*/
/*if Q8A =138 then Q8A =10;*/
/*if Q8A =139 then Q8A =10;*/
/*if Q8A =140 then Q8A =10;*/
/*if Q8A =141 then Q8A =10;*/
/*if Q8A =142 then Q8A =10;*/
/*if Q8A =143 then Q8A =10;*/
/*if Q8A =144 then Q8A =10;*/
/*if Q8A =145 then Q8A =10;*/
/*if Q8A =146 then Q8A =10;*/
/*if Q8A =147 then Q8A =10;*/
/*if Q8A =148 then Q8A =10;*/
/*if Q8A =149 then Q8A =10;*/
/*if Q8A =150 then Q8A =38;*/
/*if Q8A =151 then Q8A =38;*/
/*if Q8A =152 then Q8A =38;*/
/*if Q8A =153 then Q8A =38;*/
/*if Q8A =154 then Q8A =38;*/
/*if Q8A =155 then Q8A =38;*/
/*if Q8A =156 then Q8A =38;*/
/*if Q8A =157 then Q8A =38;*/
/*if Q8A =158 then Q8A =38;*/
/*if Q8A =159 then Q8A =38;*/
/*if Q8A =160 then Q8A =38;*/
/*if Q8A =161 then Q8A =38;*/
/*if Q8A =162 then Q8A =38;*/
/*if Q8A =163 then Q8A =38;*/
/*if Q8A =164 then Q8A =38;*/
/*if Q8A =165 then Q8A =38;*/
/*if Q8A =166 then Q8A =38;*/
/*if Q8A =167 then Q8A =38;*/
/*if Q8A =168 then Q8A =38;*/
/*if Q8A =169 then Q8A =38;*/
/*if Q8A =170 then Q8A =28;*/
/*if Q8A =171 then Q8A =28;*/
/*if Q8A =172 then Q8A =28;*/
/*if Q8A =173 then Q8A =38;*/
/*if Q8A =174 then Q8A =38;*/
/*if Q8A =175 then Q8A =38;*/
/*if Q8A =176 then Q8A =38;*/
/*if Q8A =177 then Q8A =38;*/
/*if Q8A =178 then Q8A =38;*/
/*if Q8A =179 then Q8A =38;*/
/*if Q8A =180 then Q8A =38;*/
/*if Q8A =181 then Q8A =38;*/
/*if Q8A =182 then Q8A =38;*/
/*if Q8A =183 then Q8A =38;*/
/*if Q8A =184 then Q8A =38;*/
/*if Q8A =185 then Q8A =38;*/
/*if Q8A =186 then Q8A =38;*/
/*if Q8A =187 then Q8A =4;*/
/*if Q8A =188 then Q8A =10;*/
/*if Q8A =189 then Q8A =30;*/
/*if Q8A =190 then Q8A =38;*/
/*if Q8A =191 then Q8A =38;*/
/*if Q8A =192 then Q8A =38;*/
/*if Q8A =193 then Q8A =38;*/
/*if Q8A =194 then Q8A =38;*/
/*if Q8A =195 then Q8A =38;*/
/*if Q8A =196 then Q8A =38;*/
/*if Q8A =197 then Q8A =38;*/
/*if Q8A =198 then Q8A =38;*/
/*if Q8A =199 then Q8A =38;*/
/*if Q8A =200 then Q8A =38;*/
/*if Q8A =201 then Q8A =38;*/
/*if Q8A =202 then Q8A =38;*/
/*if Q8A =203 then Q8A =38;*/
/*if Q8A =204 then Q8A =38;*/
/*if Q8A =205 then Q8A =38;*/
/*if Q8A =206 then Q8A =38;*/
/*if Q8A =207 then Q8A =38;*/
/*if Q8A =208 then Q8A =38;*/
/*if Q8A =209 then Q8A =38;*/
/*if Q8A =210 then Q8A =38;*/
/*if Q8A =211 then Q8A =38;*/
/*if Q8A =212 then Q8A =38;*/
/*if Q8A =213 then Q8A =38;*/
/*if Q8A =214 then Q8A =38;*/
/*if Q8A =215 then Q8A =217;*/
/*if Q8A =216 then Q8A =11;*/
/*if Q8A =217 then Q8A =217;*/
/*if Q8A =218 then Q8A =11;*/
/*if Q8A =219 then Q8A =11;*/
/*if Q8A =220 then Q8A =11;*/
/*if Q8A =221 then Q8A =24;*/
/*if Q8A =222 then Q8A =11;*/
/*if Q8A =223 then Q8A =11;*/
/*if Q8A =224 then Q8A =11;*/
/*if Q8A =225 then Q8A =11;*/
/*if Q8A =226 then Q8A =11;*/
/*if Q8A =227 then Q8A =11;*/
/*if Q8A =228 then Q8A =11;*/
/*if Q8A =229 then Q8A =11;*/
/*if Q8A =230 then Q8A =11;*/
/*if Q8A =231 then Q8A =38;*/
/*if Q8A =232 then Q8A =38;*/
/*if Q8A =233 then Q8A =38;*/
/*if Q8A =234 then Q8A =38;*/
/*if Q8A =235 then Q8A =38;*/
/*if Q8A =236 then Q8A =38;*/
/*if Q8A =237 then Q8A =38;*/
/*if Q8A =238 then Q8A =38;*/
/*if Q8A =239 then Q8A =38;*/
/*if Q8A =240 then Q8A =38;*/
/*if Q8A =241 then Q8A =38;*/
/*if Q8A =242 then Q8A =38;*/
/*if Q8A =243 then Q8A =38;*/
/*if Q8A =244 then Q8A =38;*/
/*if Q8A =245 then Q8A =38;*/
/*if Q8A =246 then Q8A =38;*/
/*if Q8A =247 then Q8A =38;*/
/*if Q8A =248 then Q8A =38;*/
/*if Q8A =249 then Q8A =38;*/
/*if Q8A =250 then Q8A =38;*/
/*if Q8A =251 then Q8A =38;*/
/*if Q8A =252 then Q8A =252;*/
/*if Q8A =253 then Q8A =30;*/
/*if Q8A =254 then Q8A =30;*/
/*if Q8A =255 then Q8A =30;*/
/*if Q8A =256 then Q8A =30;*/
/*if Q8A =257 then Q8A =30;*/
/*if Q8A =258 then Q8A =30;*/
/*if Q8A =259 then Q8A =30;*/
/*if Q8A =260 then Q8A =30;*/
/*if Q8A =261 then Q8A =30;*/
/*if Q8A =262 then Q8A =30;*/
/*if Q8A =263 then Q8A =30;*/
/*if Q8A =264 then Q8A =30;*/
/*if Q8A =265 then Q8A =252;*/
/*if Q8A =266 then Q8A =30;*/
/*if Q8A =267 then Q8A =30;*/
/*if Q8A =268 then Q8A =30;*/
/*if Q8A =269 then Q8A =30;*/
/*if Q8A =270 then Q8A =30;*/
/*if Q8A =271 then Q8A =38;*/
/*if Q8A =272 then Q8A =38;*/
/*if Q8A =273 then Q8A =38;*/
/*if Q8A =274 then Q8A =18;*/
/*if Q8A =275 then Q8A =18;*/
/*if Q8A =276 then Q8A =18;*/
/*if Q8A =277 then Q8A =18;*/
/*if Q8A =278 then Q8A =18;*/
/*if Q8A =279 then Q8A =38;*/
/*if Q8A =997 then Q8A =38;*/
/*if Q8A =998 then Q8A =38;*/
/*if Q8A =999 then Q8A =38;*/
/*if Q8A =280 then Q8A =28;*/
/*if Q8A =281 then Q8A =30;*/
/*if Q8A =282 then Q8A =4;*/
/*if Q8A =283 then Q8A =31;*/
/*if Q8A =284 then Q8A =28;*/
/*if Q8A =285 then Q8A =11;*/
/*if Q8A =286 then Q8A =38;*/
/*if Q8A =287 then Q8A =19;*/
/*if Q8A =288 then Q8A =19;*/
/*if Q8A =289 then Q8A =4;*/
/*if Q8A =290 then Q8A =30;*/
/*if Q8A =291 then Q8A =291;*/
/*if Q8A =292 then Q8A =291;*/
/*if Q8A =293 then Q8A =291;*/
/*if Q8A =294 then Q8A =291;*/
/*if Q8A =295 then Q8A =38;*/
/*if Q8A =296 then Q8A =3;*/
/*if Q8A =297 then Q8A =1;*/
/*if Q8A =298 then Q8A =30;*/
/*if Q8A =299 then Q8A =24;*/
/*if Q8A =300 then Q8A =38;*/
/*if Q8A =301 then Q8A =4;*/
/*if Q8A =302 then Q8A =4;*/
/*if Q8A =303 then Q8A =4;*/
/*if Q8A =304 then Q8A =11;*/
/*if Q8A =305 then Q8A =10;*/
/*if Q8A =306 then Q8A =28;*/
/*if Q8A =307 then Q8A =38;*/
/*if Q8A =308 then Q8A =28;*/
/*if Q8A =309 then Q8A =4;*/
/*if Q8A =310 then Q8A =3;*/
/*if Q8A =311 then Q8A =4;*/
/*if Q8A =312 then Q8A =38;*/
/*if Q8A =313 then Q8A =38;*/
/*if Q8A =314 then Q8A =3;*/
/*if Q8A =315 then Q8A =28;*/
/*if Q8A =316 then Q8A =38;*/
/*if Q8A =317 then Q8A =38;*/
/*if Q8A =318 then Q8A =38;*/
/*if Q8A =319 then Q8A =3;*/
/*if Q8A =320 then Q8A =1;*/
/*if Q8A =321 then Q8A =38;*/
/*if Q8A =322 then Q8A =291;*/
/*if Q8A =323 then Q8A =4;*/
/*if Q8A =324 then Q8A =38;*/
/*if Q8A =325 then Q8A =38;*/
/*if Q8A =326 then Q8A =38;*/
/*if Q8A =327 then Q8A =38;*/
/*if Q8A =328 then Q8A =4;*/
/*if Q8A =329 then Q8A =38;*/
/*if Q8A =330 then Q8A =38;*/
/*if Q8A =331 then Q8A =3;*/
/*if Q8A =332 then Q8A =31;*/
/*if Q8A =333 then Q8A =4;*/
/*if Q8A =334 then Q8A =11;*/
/*if Q8A =335 then Q8A =31;*/
/*if Q8A =336 then Q8A =38;*/
/*if Q8A =337 then Q8A =30;*/
/*if Q8A =338 then Q8A =38;*/
/*if Q8A =339 then Q8A =38;*/
/*if Q8A =340 then Q8A =38;*/
/*if Q8A =341 then Q8A =38;*/
/*if Q8A =342 then Q8A =30;*/
/*if Q8A =343 then Q8A =38;*/
/*if Q8A =344 then Q8A =24;*/
/*if Q8A =345 then Q8A =30;*/
/*if Q8A =346 then Q8A =38;*/
/*if Q8A =347 then Q8A =11;*/
/*if Q8A =348 then Q8A =38;*/
/*if Q8A =349 then Q8A =31;*/
/*if Q8A =350 then Q8A =10;*/
/*if Q8A =351 then Q8A =38;*/
/*if Q8A =352 then Q8A =8;*/
/*if Q8A =353 then Q8A =1;*/
/*if Q8A =354 then Q8A =38;*/
/*if Q8A =355 then Q8A =19;*/
/*if Q8A =356 then Q8A =3;*/
/*if Q8A =357 then Q8A =38;*/
/*if Q8A =358 then Q8A =38;*/
/*if Q8A =359 then Q8A =11;*/
/*if Q8A =360 then Q8A =38;*/
/*if Q8A =361 then Q8A =38;*/
/*if Q8A =362 then Q8A =38;*/
/*if Q8A =363 then Q8A =38;*/
/**/
/*run;*/

data v1.Selectvars_rawdata_11;
set v1.Selectvars_rawdata_11;
array aaa(*) Q5C_1_1-- Q5C_1_15;
do i=2 to 15;
if aaa(i)= 1 then Q5C_Spon_Clinic_All_Clear = 1 ;
if aaa(i)= 3 then Q5C_Spon_Clinic_Plus = 1 ;
if aaa(i)= 4 then Q5C_Spon_Dove = 1 ;
if aaa(i)= 5 then Q5C_Spon_Essenza = 1 ;
if aaa(i)= 31 then Q5C_Spon_Garnier = 1 ;
if aaa(i)= 8 then Q5C_Spon_Garnier_A_D = 1 ;
if aaa(i)= 10 then Q5C_Spon_Head_Shoulder = 1 ;
if aaa(i)= 11 then Q5C_Spon_Pantene = 1 ;
if aaa(i)= 217 then Q5C_Spon_Pantene_A_D = 1 ;
if aaa(i)= 30 then Q5C_Spon_Sunsilk = 1 ;
if aaa(i)= 252 then Q5C_Spon_Sunsilk_A_D = 1 ;
if aaa(i)= 18 then Q5C_Spon_Ultra_Doux = 1 ;
if aaa(i)= 19 then Q5C_Spon_Fiama = 1 ;
if aaa(i)= 24 then Q5C_Spon_Chik = 1 ;
if aaa(i)= 28 then Q5C_Spon_Lux = 1 ;
if aaa(i)= 291 then Q5C_Spon_Vivel = 1 ;
if aaa(i)= 108 then Q5C_Spon_Dabur_Vatika_A_D = 1 ;
if aaa(i)= 38 then Q5C_Spon_Others = 1 ;
end;
run;
data v1.Selectvars_rawdata_11;
set v1.Selectvars_rawdata_11;
array aaa(*) Q5C_2_1-- Q5C_2_15;
do i=2 to 15;
if aaa(i)= 1 then Q5C_Spon_Clinic_All_Clear = 1 ;
if aaa(i)= 3 then Q5C_Spon_Clinic_Plus = 1 ;
if aaa(i)= 4 then Q5C_Spon_Dove = 1 ;
if aaa(i)= 5 then Q5C_Spon_Essenza = 1 ;
if aaa(i)= 31 then Q5C_Spon_Garnier = 1 ;
if aaa(i)= 8 then Q5C_Spon_Garnier_A_D = 1 ;
if aaa(i)= 10 then Q5C_Spon_Head_Shoulder = 1 ;
if aaa(i)= 11 then Q5C_Spon_Pantene = 1 ;
if aaa(i)= 217 then Q5C_Spon_Pantene_A_D = 1 ;
if aaa(i)= 30 then Q5C_Spon_Sunsilk = 1 ;
if aaa(i)= 252 then Q5C_Spon_Sunsilk_A_D = 1 ;
if aaa(i)= 18 then Q5C_Spon_Ultra_Doux = 1 ;
if aaa(i)= 19 then Q5C_Spon_Fiama = 1 ;
if aaa(i)= 24 then Q5C_Spon_Chik = 1 ;
if aaa(i)= 28 then Q5C_Spon_Lux = 1 ;
if aaa(i)= 291 then Q5C_Spon_Vivel = 1 ;
if aaa(i)= 108 then Q5C_Spon_Dabur_Vatika_A_D = 1 ;
if aaa(i)= 38 then Q5C_Spon_Others = 1 ;
end;
run;
/*data v1.Selectvars_rawdata_11;*/
/*set v1.Selectvars_rawdata_11;*/
/*if Q8A= 1 then Q8A_Clinic_All_Clear =1;*/
/*if Q8A= 3 then Q8A_Clinic_Plus =1;*/
/*if Q8A= 4 then Q8A_Dove =1;*/
/*if Q8A= 5 then Q8A_Essenza =1;*/
/*if Q8A= 31 then Q8A_Garnier =1;*/
/*if Q8A= 8 then Q8A_Garnier_A_D =1;*/
/*if Q8A= 10 then Q8A_Head_Shoulder =1;*/
/*if Q8A= 11 then Q8A_Pantene =1;*/
/*if Q8A= 217 then Q8A_Pantene_A_D =1;*/
/*if Q8A= 30 then Q8A_Sunsilk =1;*/
/*if Q8A= 252 then Q8A_Sunsilk_A_D =1;*/
/*if Q8A= 18 then Q8A_Ultra_Doux =1;*/
/*if Q8A= 19 then Q8A_Fiama =1;*/
/*if Q8A= 24 then Q8A_Chik =1;*/
/*if Q8A= 28 then Q8A_Lux =1;*/
/*if Q8A= 291 then Q8A_Vivel =1;*/
/*if Q8A= 108 then Q8A_Dabur_Vatika_A_D =1;*/
/*if Q8A= 38 then Q8A_Others =1;*/
/*run;*/

proc contents data=v1.Selectvars_rawdata_11;
ods output variables;
run;
proc export data=v1.Selectvars_rawdata_11 outfile="E:\Projects\ITC\Apr 21\select_vars_11.csv";
run;
data test_q5c; 
set v1.Selectvars_rawdata_11;
keep 
Q5C_1_2
Q5C_1_3
Q5C_1_4
Q5C_1_5
Q5C_1_6
Q5C_1_7
Q5C_1_8
Q5C_1_9
Q5C_1_10
Q5C_1_11
Q5C_1_12
Q5C_1_13
Q5C_1_14
Q5C_1_15
Q5C_2_2
Q5C_2_3
Q5C_2_4
Q5C_2_5
Q5C_2_6
Q5C_2_7
Q5C_2_8
Q5C_2_9
Q5C_2_10
Q5C_2_11
Q5C_2_12
Q5C_2_13
Q5C_2_14
Q5C_2_15
Q5C_Spon_Dove
Q5C_Spon_Fiama
Q5C_Spon_Pantene
Q5C_Spon_Garnier;
run;
data v1.Selectvars_rawdata_12;
set v1.Selectvars_rawdata_11;
drop
M16A_1
M16A_2
M16A_3
M16A_4
M16A_5
M16A_6
M16A_7
M16A_8
M16A_9
M16A_10
M16A_11
M16A_12
M16A_13
M16A_14
M16A_15
M16B_1
M16B_2
M16B_3
M16B_4
M16B_5
M16B_6
M16B_7
M16B_8
M16B_9
M16B_10
M16B_11
M16B_12
M16B_13
M16B_14
M16B_15
M16B_16
M16B_17
M16B_18
M16B_19
M16B_20
M16B_21
M16B_22
M16B_23
M16B_24
M16B_25
M16B_26
M16B_27
M16B_28
M16B_29
M16B_30
New_M16B_1
New_M16B_2
New_M16B_3
New_M16B_4
New_M16B_5
New_M16B_6
New_M16B_7
New_M16B_8
New_M16B_9
New_M16B_10
New_M16B_11
New_M16B_12
New_M16B_13
New_M16B_14
M17A_B_1
M17A_B_2
M17A_B_3
M17A_B_4
M17A_B_5
M17A_B_6
M17A_B_7
M17A_B_8
M17A_B_9
M17A_B_10
M17A_B_11
M17A_B_12
M17A_B_13
M17A_B_14
M17A_B_15
M17A_1
M17A_2
M17A_3
M17A_4
M17A_5
M17A_6
M17A_7
M17A_8
M17A_9
M17A_10
M17A_11
M17A_12
M17A_13
M17A_14
M17A_15
M17_B_1_1
M17_B_1_2
M17_B_1_3
M17_B_1_4
M17_B_1_5
M17_B_1_6
M17_B_1_7
M17_B_1_8
M17_B_2_1
M17_B_2_2
M17_B_2_3
M17_B_2_4
M17_B_2_5
M17_B_2_6
M17_B_2_7
M17_B_2_8
M17_B_3_1
M17_B_3_2
M17_B_3_3
M17_B_3_4
M17_B_3_5
M17_B_3_6
M17_B_3_7
M17_B_3_8
M17_B_4_1
M17_B_4_2
M17_B_4_3
M17_B_4_4
M17_B_4_5
M17_B_4_6
M17_B_4_7
M17_B_4_8
M17_B_5_1
M17_B_5_2
M17_B_5_3
M17_B_5_4
M17_B_5_5
M17_B_5_6
M17_B_5_7
M17_B_5_8
M17_B_6_1
M17_B_6_2
M17_B_6_3
M17_B_6_4
M17_B_6_5
M17_B_6_6
M17_B_6_7
M17_B_6_8
M17_B_7_1
M17_B_7_2
M17_B_7_3
M17_B_7_4
M17_B_7_5
M17_B_7_6
M17_B_7_7
M17_B_7_8
M17_B_8_1
M17_B_8_2
M17_B_8_3
M17_B_8_4
M17_B_8_5
M17_B_8_6
M17_B_8_7
M17_B_8_8
M17_B_9_1
M17_B_9_2
M17_B_9_3
M17_B_9_4
M17_B_9_5
M17_B_9_6
M17_B_9_7
M17_B_9_8
M17_B_10_1
M17_B_10_2
M17_B_10_3
M17_B_10_4
M17_B_10_5
M17_B_10_6
M17_B_10_7
M17_B_10_8
M17_B_11_1
M17_B_11_2
M17_B_11_3
M17_B_11_4
M17_B_11_5
M17_B_11_6
M17_B_11_7
M17_B_11_8
M17_B_12_1
M17_B_12_2
M17_B_12_3
M17_B_12_4
M17_B_12_5
M17_B_12_6
M17_B_12_7
M17_B_12_8
M17_B_13_1
M17_B_13_2
M17_B_13_3
M17_B_13_4
M17_B_13_5
M17_B_13_6
M17_B_13_7
M17_B_13_8
M17_B_14_1
M17_B_14_2
M17_B_14_3
M17_B_14_4
M17_B_14_5
M17_B_14_6
M17_B_14_7
M17_B_14_8
M17_B_15_1
M17_B_15_2
M17_B_15_3
M17_B_15_4
M17_B_15_5
M17_B_15_6
M17_B_15_7
M17_B_15_8
M14_1
M14_2
M14_3
M14_4
M14_5
M14_6
M14_7
M14_8
M14_9
M14_10
M14_11
M14_12
M14_13
M14_14
M14_15
M14_16
M14_17
M14_18
M14_19
M14_20
M14_1_1
M14_2_1
M14_3_1
M14_4_1
M14_5_1
M14_6_1
M14_7_1
M14_8_1
M14_9_1
M14_10_1
M14_11_1
M14_12_1
M14_13_1
M14_14_1
M14_15_1
M14_16_1
M14_17_1
M14_18_1
M14_19_1
M14_20_1
BLANK1
Q1B
Q2A
Q2B
EDU
OCC
SEC
Q3C
Q3D
Q3E
Q4A_1
Q4A_2
Q4B_1
Q4B_2
BLANK01
Q5B_01_1
Q5B_02_1
Q5B_03_1
Q5B_04_1
Q5B_05_1
Q5B_06_1
Q5B_07_1
Q5B_08_1
Q5B_09_1
Q5B_10_1
Q5B_11_1
Q5B_12_1
Q5B_13_1
Q5B_14_1
Q5B_15_1
Q5C_1_2
Q5C_1_3
Q5C_1_4
Q5C_1_5
Q5C_1_6
Q5C_1_7
Q5C_1_8
Q5C_1_9
Q5C_1_10
Q5C_1_11
Q5C_1_12
Q5C_1_13
Q5C_1_14
Q5C_1_15
Q5B_01_2
Q5B_02_2
Q5B_03_2
Q5B_04_2
Q5B_05_2
Q5B_06_2
Q5B_07_2
Q5B_08_2
Q5B_09_2
Q5B_10_2
Q5B_11_2
Q5B_12_2
Q5B_13_2
Q5B_14_2
Q5B_15_2
Q5C_2_2
Q5C_2_3
Q5C_2_4
Q5C_2_5
Q5C_2_6
Q5C_2_7
Q5C_2_8
Q5C_2_9
Q5C_2_10
Q5C_2_11
Q5C_2_12
Q5C_2_13
Q5C_2_14
Q5C_2_15
Q6
Q7
Q8A
Q8B
Q9
AGE_
GEN_
SEC_
BLANK02
Q9_SOAP
Q5A_1
Q5A_2
Q5A_3
Q5A_4
Q5A_5
ACC_
BCC_
SCR_
SECTION
BLANK03
BLANK2
M1_HEARD_1
M1_HEARD_2
M1_HEARD_3
M1_HEARD_4
M1_HEARD_5
M1_HEARD_6
M1_HEARD_7
M1_HEARD_8
M1_HEARD_9
M1_HEARD_10
M1_HEARD_11
M1_HEARD_12
M1_HEARD_13
M1_HEARD_14
M1_HEARD_15
M1_HEARD_16
M1_HEARD_17
M1_HEARD_18
M1_HEARD_19
M1_HEARD_20
M1_HEARD_21
M1_HEARD_22
M1_HEARD_23
M1_HEARD_24
M1_HEARD_25
M1_HEARD_26
M1_HEARD_27
M1_HEARD_28
M1_HEARD_29
M1_HEARD_30
M1_USED_1
M1_USED_2
M1_USED_3
M1_USED_4
M1_USED_5
M1_USED_6
M1_USED_7
M1_USED_8
M1_USED_9
M1_USED_10
M1_USED_11
M1_USED_12
M1_USED_13
M1_USED_14
M1_USED_15
M1_USED_16
M1_USED_17
M1_USED_18
M1_USED_19
M1_USED_20
M1_USED_21
M1_USED_22
M1_USED_23
M1_USED_24
M1_USED_25
M1_USED_26
M1_USED_27
M1_USED_28
M1_USED_29
M1_USED_30
M1_MOST
M2_HEARD_1
M2_HEARD_2
M2_HEARD_3
M2_HEARD_4
M2_HEARD_5
M2_HEARD_6
M2_HEARD_7
M2_HEARD_8
M2_HEARD_9
M2_HEARD_10
M2_HEARD_11
M2_HEARD_12
M2_HEARD_13
M2_HEARD_14
M2_HEARD_15
M2_HEARD_16
M2_HEARD_17
M2_HEARD_18
M2_HEARD_19
M2_HEARD_20
M2_HEARD_21
M2_HEARD_22
M2_HEARD_23
M2_HEARD_24
M2_HEARD_25
M2_HEARD_26
M2_HEARD_27
M2_HEARD_28
M2_HEARD_29
M2_HEARD_30
M2_USED_1
M2_USED_2
M2_USED_3
M2_USED_4
M2_USED_5
M2_USED_6
M2_USED_7
M2_USED_8
M2_USED_9
M2_USED_10
M2_USED_11
M2_USED_12
M2_USED_13
M2_USED_14
M2_USED_15
M2_USED_16
M2_USED_17
M2_USED_18
M2_USED_19
M2_USED_20
M2_USED_21
M2_USED_22
M2_USED_23
M2_USED_24
M2_USED_25
M2_USED_26
M2_USED_27
M2_USED_28
M2_USED_29
M2_USED_30
Q2_MOST
M3_a1
M3_a2
M3_a3
M3_a4
M3_a5
M3_a6
M3_a7
M3_a8
M3_a9
M3_a10
M3_a11
M3_a12
M3_a13
M3_a14
M3_a15
M3_a16
M3_a17
M3_a18
M3_a19
M3_a20
M3_b1
M3_b2
M3_b3
M3_b4
M3_b5
M3_b6
M3_b7
M3_b8
M3_b9
M3_b10
M3_b11
M3_b12
M3_b13
M3_b14
M3_b15
M3_b16
M3_b17
M3_b18
M3_b19
M3_b20
M6A_B_01
M6A_B_01A
M6A_B_01_1
M6A_B_01_2
M6A_B_01_3
M6A_B_01_4
M6A_B_01_5
M6A_B_01_6
M6A_B_01_7
M6A_B_01_8
M6A_B_02
M6A_B_02A
M6A_B_02_1
M6A_B_02_2
M6A_B_02_3
M6A_B_02_4
M6A_B_02_5
M6A_B_02_6
M6A_B_02_7
M6A_B_02_8
M6A_B_03
M6A_B_03A
M6A_B_03_1
M6A_B_03_2
M6A_B_03_3
M6A_B_03_4
M6A_B_03_5
M6A_B_03_6
M6A_B_03_7
M6A_B_03_8
M6A_B_04
M6A_B_04A
M6A_B_04_1
M6A_B_04_2
M6A_B_04_3
M6A_B_04_4
M6A_B_04_5
M6A_B_04_6
M6A_B_04_7
M6A_B_04_8
M6A_B_05
M6A_B_05A
M6A_B_05_1
M6A_B_05_2
M6A_B_05_3
M6A_B_05_4
M6A_B_05_5
M6A_B_05_6
M6A_B_05_7
M6A_B_05_8
M6A_B_06
M6A_B_06A
M6A_B_06_1
M6A_B_06_2
M6A_B_06_3
M6A_B_06_4
M6A_B_06_5
M6A_B_06_6
M6A_B_06_7
M6A_B_06_8
M6A_B_07
M6A_B_07A
M6A_B_07_1
M6A_B_07_2
M6A_B_07_3
M6A_B_07_4
M6A_B_07_5
M6A_B_07_6
M6A_B_07_7
M6A_B_07_8
M6A_B_08
M6A_B_08A
M6A_B_08_1
M6A_B_08_2
M6A_B_08_3
M6A_B_08_4
M6A_B_08_5
M6A_B_08_6
M6A_B_08_7
M6A_B_08_8
M6A_B_09
M6A_B_09A
M6A_B_09_1
M6A_B_09_2
M6A_B_09_3
M6A_B_09_4
M6A_B_09_5
M6A_B_09_6
M6A_B_09_7
M6A_B_09_8
M6A_B_10
M6A_B_10A
M6A_B_10_1
M6A_B_10_2
M6A_B_10_3
M6A_B_10_4
M6A_B_10_5
M6A_B_10_6
M6A_B_10_7
M6A_B_10_8
M6A_B_11
M6A_B_11A
M6A_B_11_1
M6A_B_11_2
M6A_B_11_3
M6A_B_11_4
M6A_B_11_5
M6A_B_11_6
M6A_B_11_7
M6A_B_11_8
M6A_B_12
M6A_B_12A
M6A_B_12_1
M6A_B_12_2
M6A_B_12_3
M6A_B_12_4
M6A_B_12_5
M6A_B_12_6
M6A_B_12_7
M6A_B_12_8
M6A_B_13
M6A_B_13A
M6A_B_13_1
M6A_B_13_2
M6A_B_13_3
M6A_B_13_4
M6A_B_13_5
M6A_B_13_6
M6A_B_13_7
M6A_B_13_8
M6A_B_14
M6A_B_14A
M6A_B_14_1
M6A_B_14_2
M6A_B_14_3
M6A_B_14_4
M6A_B_14_5
M6A_B_14_6
M6A_B_14_7
M6A_B_14_8
M6A_B_15
M6A_B_15A
M6A_B_15_1
M6A_B_15_2
M6A_B_15_3
M6A_B_15_4
M6A_B_15_5
M6A_B_15_6
M6A_B_15_7
M6A_B_15_8
M6B1_2_01
M6B1_2_01_1
M6B1_2_01_2
M6B1_2_01_3
M6B1_2_01_4
M6B1_2_01_5
M6B1_2_01_6
M6B1_2_01_7
M6B1_2_02
M6B1_2_02_1
M6B1_2_02_2
M6B1_2_02_3
M6B1_2_02_4
M6B1_2_02_5
M6B1_2_02_6
M6B1_2_02_7
M6B1_2_03
M6B1_2_03_1
M6B1_2_03_2
M6B1_2_03_3
M6B1_2_03_4
M6B1_2_03_5
M6B1_2_03_6
M6B1_2_03_7
SOAP_AD1
SOAP_AD2
M6C1
M6C2
M6C3
M6C4
M6C5
M6C6
M6C7
M6C8
M6C9
M6C10
M6D1
M6D2
M6D3
M6D4
M6D5
M6D6
M6D7
M6D8
M6D9
M6D10
M6E1
M6E2
M6E3
M6E4
M6E5
M6E6
M6E7
M6E8
M6E9
M6E10
M6F1
M6F2
M6F3
M6F4
M6F5
M6F6
M6F7
M6F8
M6F9
M6F10
M15_01
M15_01_1
M15_01_2
M15_01_3
M15_01_4
M15_01_5
M15_01_6
M15_01_7
M15_01_8
M15_01_9
M15_01_10
M15_02
M15_02_1
M15_02_2
M15_02_3
M15_02_4
M15_02_5
M15_02_6
M15_02_7
M15_02_8
M15_02_9
M15_02_10
M15_03
M15_03_1
M15_03_2
M15_03_3
M15_03_4
M15_03_5
M15_03_6
M15_03_7
M15_03_8
M15_03_9
M15_03_10
M15_04
M15_04_1
M15_04_2
M15_04_3
M15_04_4
M15_04_5
M15_04_6
M15_04_7
M15_04_8
M15_04_9
M15_04_10
M15_05
M15_05_1
M15_05_2
M15_05_3
M15_05_4
M15_05_5
M15_05_6
M15_05_7
M15_05_8
M15_05_9
M15_05_10
M15_06
M15_06_1
M15_06_2
M15_06_3
M15_06_4
M15_06_5
M15_06_6
M15_06_7
M15_06_8
M15_06_9
M15_06_10
M15_07
M15_07_1
M15_07_2
M15_07_3
M15_07_4
M15_07_5
M15_07_6
M15_07_7
M15_07_8
M15_07_9
M15_07_10
M15_08
M15_08_1
M15_08_2
M15_08_3
M15_08_4
M15_08_5
M15_08_6
M15_08_7
M15_08_8
M15_08_9
M15_08_10
M15_09
M15_09_1
M15_09_2
M15_09_3
M15_09_4
M15_09_5
M15_09_6
M15_09_7
M15_09_8
M15_09_9
M15_09_10
M15_10
M15_10_1
M15_10_2
M15_10_3
M15_10_4
M15_10_5
M15_10_6
M15_10_7
M15_10_8
M15_10_9
M15_10_10
M15_11
M15_11_1
M15_11_2
M15_11_3
M15_11_4
M15_11_5
M15_11_6
M15_11_7
M15_11_8
M15_11_9
M15_11_10
M15_12
M15_12_1
M15_12_2
M15_12_3
M15_12_4
M15_12_5
M15_12_6
M15_12_7
M15_12_8
M15_12_9
M15_12_10
M15_13
M15_13_1
M15_13_2
M15_13_3
M15_13_4
M15_13_5
M15_13_6
M15_13_7
M15_13_8
M15_13_9
M15_13_10
M15_14
M15_14_1
M15_14_2
M15_14_3
M15_14_4
M15_14_5
M15_14_6
M15_14_7
M15_14_8
M15_14_9
M15_14_10
M15_15
M15_15_1
M15_15_2
M15_15_3
M15_15_4
M15_15_5
M15_15_6
M15_15_7
M15_15_8
M15_15_9
M15_15_10
M16A_1_1
M16A_1_2
M16A_1_3
M16A_1_4
M16A_1_5
M16A_1_6
M16A_1_7
M16A_1_8
M16A_1_9
M16A_1_10
M16A_1_11
M16A_1_12
M16A_1_13
M16A_2_1
M16A_2_2
M16A_2_3
M16A_2_4
M16A_2_5
M16A_2_6
M16A_2_7
M16A_2_8
M16A_2_9
M16A_2_10
M16A_2_11
M16A_2_12
M16A_2_13
M16A_3_1
M16A_3_2
M16A_3_3
M16A_3_4
M16A_3_5
M16A_3_6
M16A_3_7
M16A_3_8
M16A_3_9
M16A_3_10
M16A_3_11
M16A_3_12
M16A_3_13
M16A_4_1
M16A_4_2
M16A_4_3
M16A_4_4
M16A_4_5
M16A_4_6
M16A_4_7
M16A_4_8
M16A_4_9
M16A_4_10
M16A_4_11
M16A_4_12
M16A_4_13
M16A_5_1
M16A_5_2
M16A_5_3
M16A_5_4
M16A_5_5
M16A_5_6
M16A_5_7
M16A_5_8
M16A_5_9
M16A_5_10
M16A_5_11
M16A_5_12
M16A_5_13
M16A_6_1
M16A_6_2
M16A_6_3
M16A_6_4
M16A_6_5
M16A_6_6
M16A_6_7
M16A_6_8
M16A_6_9
M16A_6_10
M16A_6_11
M16A_6_12
M16A_6_13
M16A_7_1
M16A_7_2
M16A_7_3
M16A_7_4
M16A_7_5
M16A_7_6
M16A_7_7
M16A_7_8
M16A_7_9
M16A_7_10
M16A_7_11
M16A_7_12
M16A_7_13
M16A_8_1
M16A_8_2
M16A_8_3
M16A_8_4
M16A_8_5
M16A_8_6
M16A_8_7
M16A_8_8
M16A_8_9
M16A_8_10
M16A_8_11
M16A_8_12
M16A_8_13
M16A_9_1
M16A_9_2
M16A_9_3
M16A_9_4
M16A_9_5
M16A_9_6
M16A_9_7
M16A_9_8
M16A_9_9
M16A_9_10
M16A_9_11
M16A_9_12
M16A_9_13
M16A_10_1
M16A_10_2
M16A_10_3
M16A_10_4
M16A_10_5
M16A_10_6
M16A_10_7
M16A_10_8
M16A_10_9
M16A_10_10
M16A_10_11
M16A_10_12
M16A_10_13
M16A_11_1
M16A_11_2
M16A_11_3
M16A_11_4
M16A_11_5
M16A_11_6
M16A_11_7
M16A_11_8
M16A_11_9
M16A_11_10
M16A_11_11
M16A_11_12
M16A_11_13
M16A_12_1
M16A_12_2
M16A_12_3
M16A_12_4
M16A_12_5
M16A_12_6
M16A_12_7
M16A_12_8
M16A_12_9
M16A_12_10
M16A_12_11
M16A_12_12
M16A_12_13
M16A_13_1
M16A_13_2
M16A_13_3
M16A_13_4
M16A_13_5
M16A_13_6
M16A_13_7
M16A_13_8
M16A_13_9
M16A_13_10
M16A_13_11
M16A_13_12
M16A_13_13
M16A_14_1
M16A_14_2
M16A_14_3
M16A_14_4
M16A_14_5
M16A_14_6
M16A_14_7
M16A_14_8
M16A_14_9
M16A_14_10
M16A_14_11
M16A_14_12
M16A_14_13
M16A_15_1
M16A_15_2
M16A_15_3
M16A_15_4
M16A_15_5
M16A_15_6
M16A_15_7
M16A_15_8
M16A_15_9
M16A_15_10
M16A_15_11
M16A_15_12
M16A_15_13
M16B_1_1
M16B_1_2
M16B_1_3
M16B_1_4
M16B_1_5
M16B_1_6
M16B_1_7
M16B_1_8
M16B_1_9
M16B_1_10
M16B_1_11
M16B_1_12
M16B_2_1
M16B_2_2
M16B_2_3
M16B_2_4
M16B_2_5
M16B_2_6
M16B_2_7
M16B_2_8
M16B_2_9
M16B_2_10
M16B_2_11
M16B_2_12
M16B_3_1
M16B_3_2
M16B_3_3
M16B_3_4
M16B_3_5
M16B_3_6
M16B_3_7
M16B_3_8
M16B_3_9
M16B_3_10
M16B_3_11
M16B_3_12
M16B_4_1
M16B_4_2
M16B_4_3
M16B_4_4
M16B_4_5
M16B_4_6
M16B_4_7
M16B_4_8
M16B_4_9
M16B_4_10
M16B_4_11
M16B_4_12
M16B_5_1
M16B_5_2
M16B_5_3
M16B_5_4
M16B_5_5
M16B_5_6
M16B_5_7
M16B_5_8
M16B_5_9
M16B_5_10
M16B_5_11
M16B_5_12
M16B_6_1
M16B_6_2
M16B_6_3
M16B_6_4
M16B_6_5
M16B_6_6
M16B_6_7
M16B_6_8
M16B_6_9
M16B_6_10
M16B_6_11
M16B_6_12
M16B_7_1
M16B_7_2
M16B_7_3
M16B_7_4
M16B_7_5
M16B_7_6
M16B_7_7
M16B_7_8
M16B_7_9
M16B_7_10
M16B_7_11
M16B_7_12
M16B_8_1
M16B_8_2
M16B_8_3
M16B_8_4
M16B_8_5
M16B_8_6
M16B_8_7
M16B_8_8
M16B_8_9
M16B_8_10
M16B_8_11
M16B_8_12
M16B_9_1
M16B_9_2
M16B_9_3
M16B_9_4
M16B_9_5
M16B_9_6
M16B_9_7
M16B_9_8
M16B_9_9
M16B_9_10
M16B_9_11
M16B_9_12
M16B_10_1
M16B_10_2
M16B_10_3
M16B_10_4
M16B_10_5
M16B_10_6
M16B_10_7
M16B_10_8
M16B_10_9
M16B_10_10
M16B_10_11
M16B_10_12
M16B_11_1
M16B_11_2
M16B_11_3
M16B_11_4
M16B_11_5
M16B_11_6
M16B_11_7
M16B_11_8
M16B_11_9
M16B_11_10
M16B_11_11
M16B_11_12
M16B_12_1
M16B_12_2
M16B_12_3
M16B_12_4
M16B_12_5
M16B_12_6
M16B_12_7
M16B_12_8
M16B_12_9
M16B_12_10
M16B_12_11
M16B_12_12
M16B_13_1
M16B_13_2
M16B_13_3
M16B_13_4
M16B_13_5
M16B_13_6
M16B_13_7
M16B_13_8
M16B_13_9
M16B_13_10
M16B_13_11
M16B_13_12
M16B_14_1
M16B_14_2
M16B_14_3
M16B_14_4
M16B_14_5
M16B_14_6
M16B_14_7
M16B_14_8
M16B_14_9
M16B_14_10
M16B_14_11
M16B_14_12
M16B_15_1
M16B_15_2
M16B_15_3
M16B_15_4
M16B_15_5
M16B_15_6
M16B_15_7
M16B_15_8
M16B_15_9
M16B_15_10
M16B_15_11
M16B_15_12
M16B_16_1
M16B_16_2
M16B_16_3
M16B_16_4
M16B_16_5
M16B_16_6
M16B_16_7
M16B_16_8
M16B_16_9
M16B_16_10
M16B_16_11
M16B_16_12
M16B_17_1
M16B_17_2
M16B_17_3
M16B_17_4
M16B_17_5
M16B_17_6
M16B_17_7
M16B_17_8
M16B_17_9
M16B_17_10
M16B_17_11
M16B_17_12
M16B_18_1
M16B_18_2
M16B_18_3
M16B_18_4
M16B_18_5
M16B_18_6
M16B_18_7
M16B_18_8
M16B_18_9
M16B_18_10
M16B_18_11
M16B_18_12
M16B_19_1
M16B_19_2
M16B_19_3
M16B_19_4
M16B_19_5
M16B_19_6
M16B_19_7
M16B_19_8
M16B_19_9
M16B_19_10
M16B_19_11
M16B_19_12
M16B_20_1
M16B_20_2
M16B_20_3
M16B_20_4
M16B_20_5
M16B_20_6
M16B_20_7
M16B_20_8
M16B_20_9
M16B_20_10
M16B_20_11
M16B_20_12
SHAMPU_AD1
SHAMPU_AD2
M17C_1
M17C_2
M17C_3
M17C_4
M17C_5
M17C_6
M17C_7
M17C_8
M17C_9
M17C_10
M17D_1
M17D_2
M17D_3
M17D_4
M17D_5
M17D_6
M17D_7
M17D_8
M17D_9
M17D_10
M17E_1
M17E_2
M17E_3
M17E_4
M17E_5
M17E_6
M17E_7
M17E_8
M17E_9
M17E_10
M17F_1
M17F_2
M17F_3
M17F_4
M17F_5
M17F_6
M17F_7
M17F_8
M17F_9
M17F_10
M18A_B_01
M18A_B_01a
M18A_B_01b
M18A_B_02
M18A_B_02a
M18A_B_02b
M18A_B_03
M18A_B_03a
M18A_B_03b
M18A_B_04
M18A_B_04a
M18A_B_04b
M18A_B_05
M18A_B_05a
M18A_B_05b
M18A_B_06
M18A_B_06a
M18A_B_06b
M18A_B_07
M18A_B_07a
M18A_B_07b
M18A_B_08
M18A_B_08a
M18A_B_08b
M18A_B_09
M18A_B_09a
M18A_B_09b
M18A_B_10
M18A_B_10a
M18A_B_10b
M19A_B_01
M19A_B_01a
M19A_B_01b
M19A_B_02
M19A_B_02a
M19A_B_02b
M19A_B_03
M19A_B_03a
M19A_B_03b
M19A_B_04
M19A_B_04a
M19A_B_04b
M19A_B_05
M19A_B_05a
M19A_B_05b
M19A_B_06
M19A_B_06a
M19A_B_06b
M19A_B_07
M19A_B_07a
M19A_B_07b
M19A_B_08
M19A_B_08a
M19A_B_08b
M19A_B_09
M19A_B_09a
M19A_B_09b
M19A_B_10
M19A_B_10a
M19A_B_10b
M19C
M19D
ADS_1
ADS_2
ADS_3
M20A_B_AD1_1
M20A_B_AD1_2
M20A_B_AD1_3
M20A_B_AD1_4
M20A_B_AD1_5
M20A_B_AD1_6
M20A_B_AD1_7
M20A_B_AD1_8
M20A_B_AD1_9
M20A_B_AD1_10
M20A_B_AD2_1
M20A_B_AD2_2
M20A_B_AD2_3
M20A_B_AD2_4
M20A_B_AD2_5
M20A_B_AD2_6
M20A_B_AD2_7
M20A_B_AD2_8
M20A_B_AD2_9
M20A_B_AD2_10
M20A_B_AD3_1
M20A_B_AD3_2
M20A_B_AD3_3
M20A_B_AD3_4
M20A_B_AD3_5
M20A_B_AD3_6
M20A_B_AD3_7
M20A_B_AD3_8
M20A_B_AD3_9
M20A_B_AD3_10
M21A_1
M21A_2
M21A_3
M21A_4
M21B
M22_1
M22_2
M23_1
M23_2
M23_3
M23_4
M23_5
M23_6
M23_7
M23_8
M23_9
M23_10
M23_PC_1
M23_PC_2
M23_PC_3
M23_PC_4
M23_PC_5
M23_PC_6
M23_PC_7
M23_PC_8
M23_PC_9
M23_PC_10
M23A_1
M23A_2
M23A_3
M23A_4
M23A_5
M23A_6
M23A_7
M23A_8
M23A_9
M23A_10
M23A_PC_1
M23A_PC_2
M23A_PC_3
M23A_PC_4
M23A_PC_5
M23A_PC_6
M23A_PC_7
M23A_PC_8
M23A_PC_9
M23A_PC_10
M16B_21_1
M16B_21_2
M16B_21_3
M16B_21_4
M16B_21_5
M16B_21_6
M16B_21_7
M16B_21_8
M16B_21_9
M16B_21_10
M16B_21_11
M16B_21_12
M16B_22_1
M16B_22_2
M16B_22_3
M16B_22_4
M16B_22_5
M16B_22_6
M16B_22_7
M16B_22_8
M16B_22_9
M16B_22_10
M16B_22_11
M16B_22_12
M16B_23_1
M16B_23_2
M16B_23_3
M16B_23_4
M16B_23_5
M16B_23_6
M16B_23_7
M16B_23_8
M16B_23_9
M16B_23_10
M16B_23_11
M16B_23_12
M16B_24_1
M16B_24_2
M16B_24_3
M16B_24_4
M16B_24_5
M16B_24_6
M16B_24_7
M16B_24_8
M16B_24_9
M16B_24_10
M16B_24_11
M16B_24_12
M16B_25_1
M16B_25_2
M16B_25_3
M16B_25_4
M16B_25_5
M16B_25_6
M16B_25_7
M16B_25_8
M16B_25_9
M16B_25_10
M16B_25_11
M16B_25_12
M16B_26_1
M16B_26_2
M16B_26_3
M16B_26_4
M16B_26_5
M16B_26_6
M16B_26_7
M16B_26_8
M16B_26_9
M16B_26_10
M16B_26_11
M16B_26_12
M16B_27_1
M16B_27_2
M16B_27_3
M16B_27_4
M16B_27_5
M16B_27_6
M16B_27_7
M16B_27_8
M16B_27_9
M16B_27_10
M16B_27_11
M16B_27_12
M16B_28_1
M16B_28_2
M16B_28_3
M16B_28_4
M16B_28_5
M16B_28_6
M16B_28_7
M16B_28_8
M16B_28_9
M16B_28_10
M16B_28_11
M16B_28_12
M16B_29_1
M16B_29_2
M16B_29_3
M16B_29_4
M16B_29_5
M16B_29_6
M16B_29_7
M16B_29_8
M16B_29_9
M16B_29_10
M16B_29_11
M16B_29_12
M16B_30_1
M16B_30_2
M16B_30_3
M16B_30_4
M16B_30_5
M16B_30_6
M16B_30_7
M16B_30_8
M16B_30_9
M16B_30_10
M16B_30_11
M16B_30_12
TVCHN_01_1
TVCHN_01_2
TVCHN_01_3
TVCHN_01_4
TVCHN_01_5
TVCHN_02_1
TVCHN_02_2
TVCHN_02_3
TVCHN_02_4
TVCHN_02_5
TVCHN_03_1
TVCHN_03_2
TVCHN_03_3
TVCHN_03_4
TVCHN_03_5
TVCHN_04_1
TVCHN_04_2
TVCHN_04_3
TVCHN_04_4
TVCHN_04_5
TVCHN_05_1
TVCHN_05_2
TVCHN_05_3
TVCHN_05_4
TVCHN_05_5
TVCHN_06_1
TVCHN_06_2
TVCHN_06_3
TVCHN_06_4
TVCHN_06_5
TV_PROG_1
TV_PROG_2
TV_PROG_3
TV_PROG_4
TV_PROG_5
TV_PROG_6
TV_PROG_7
TV_PROG_8
TV_PROG_9
TV_PROG_10
TV_PROG_11
TV_PROG_12
TV_PROG_13
TV_PROG_14
TV_PROG_15
TV_PROG_16
TV_PROG_17
TV_PROG_18
TV_PROG_19
TV_PROG_20
TV_PROG_21
TV_PROG_22
TV_PROG_23
TV_PROG_24
TV_PROG_25
TV_PROG_26
TV_PROG_27
TV_PROG_28
TV_PROG_29
TV_PROG_30
Q26D_01_02_1
Q26D_01_02_2
Q26D_01_02_3
Q26D_01_02_4
Q26D_03_1
Q26D_03_2
Q26D_04_05_1
Q26D_04_05_2
Q26D_04_05_3
Q26D_04_05_4
Q27AB_1
Q27AB_1a
Q27AB_2
Q27AB_2a
Q27AB_3
Q27AB_3a
Q27AB_4
Q27AB_4a
Q27AB_5
Q27AB_5a
Q27C_1
Q27C_2
Q27C_3
Q27C_4
Q27C_5
Q28_1
Q28_2
Q28_3
Q28_4
Q28_5
Q29_1
Q29_2
Q29_3
Q29_4
Q29_5
Q30_1
Q30_2
Q30_3
Q30_4
Q30_5
Q31_1
Q31_2
Q31_3
Q31_4
Q31_5
WEIGHT
M24_1
M24_2_1
M24_2_2
M24_2_3
M24_2_4
M24_2_5
M24_2_6
M24_2_7
M24_2_8
M24_2_9
M24_2_10
M25_ITC_1
M25_ITC_2
M25_ITC_3
M25_ITC_4
M25_ITC_5
M25_HUL_1
M25_HUL_2
M25_HUL_3
M25_HUL_4
M25_HUL_5
M25_NONE_1
M25_NONE_2
M25_NONE_3
M25_NONE_4
M25_NONE_5
TAG1_2_3_1
TAG1_2_3_2
TAG1_2_3_3
M2HEARD_1
M2HEARD_2
M2HEARD_3
M2HEARD_4
M2HEARD_5
M2HEARD_6
M2HEARD_7
M2HEARD_8
M2HEARD_9
M2HEARD_10
M1_QD
M1_QD_1
M1_QD_2
M1_QD_3
M1_QD_4
M2_QD
M2_QD_1
M2_QD_2
M2_QD_3
Q30A_D_1
Q30A_D_2
Q30A_D_3
Q30A_D_4
M6G_1
M6G_2
M6G_3
M6G_4
M6G_5
M6G_6
M6G_7
M6G_8
M6G_9
M6G_10
M6H_1
M6H_2
M6H_3
M6H_4
M6H_5
M6H_6
M6H_7
M6H_8
M6H_9
M6H_10
M17G_1
M17G_2
M17G_3
M17G_4
M17G_5
M17G_6
M17G_7
M17G_8
M17G_9
M17G_10
M17H_1
M17H_2
M17H_3
M17H_4
M17H_5
M17H_6
M17H_7
M17H_8
M17H_9
M17H_10
New_M1_HEARD_1
New_M1_HEARD_2
New_M1_HEARD_3
New_M1_HEARD_4
New_M1_HEARD_5
New_M1_HEARD_6
New_M1_HEARD_7
New_M1_HEARD_8
New_M1_HEARD_9
New_M1_HEARD_10
New_M1_HEARD_11
New_M1_HEARD_12
New_M1_HEARD_13
New_M1_HEARD_14
New_M1_HEARD_15
New_M1_HEARD_16
New_M1_HEARD_17
New_M1_HEARD_18
New_M1_HEARD_19
New_M1_HEARD_20
New_M1_HEARD_21
New_M1_HEARD_22
New_M1_HEARD_23
New_M1_HEARD_24
New_M1_HEARD_25
New_M1_HEARD_26
New_M1_HEARD_27
New_M1_HEARD_28
New_M1_HEARD_29
New_M1_HEARD_30
New_M1_HEARD_31
New_M1_HEARD_32
New_M1_HEARD_33
New_M1_HEARD_34
New_M1_HEARD_35
New_M1_HEARD_36
New_M1_HEARD_37
New_M1_HEARD_38
New_M1_HEARD_39
New_M1_HEARD_40
SOAP_AD3
SHAMPO_AD3
New_M16B_1_1
New_M16B_1_2
New_M16B_1_3
New_M16B_1_4
New_M16B_1_5
New_M16B_1_6
New_M16B_1_7
New_M16B_1_8
New_M16B_1_9
New_M16B_1_10
New_M16B_1_11
New_M16B_1_12
New_M16B_1_13
New_M16B_1_14
New_M16B_1_15
New_M16B_1_16
New_M16B_1_17
New_M16B_1_18
New_M16B_1_19
New_M16B_1_20
New_M16B_2_1
New_M16B_2_2
New_M16B_2_3
New_M16B_2_4
New_M16B_2_5
New_M16B_2_6
New_M16B_2_7
New_M16B_2_8
New_M16B_2_9
New_M16B_2_10
New_M16B_2_11
New_M16B_2_12
New_M16B_2_13
New_M16B_2_14
New_M16B_2_15
New_M16B_2_16
New_M16B_2_17
New_M16B_2_18
New_M16B_2_19
New_M16B_2_20
New_M16B_3_1
New_M16B_3_2
New_M16B_3_3
New_M16B_3_4
New_M16B_3_5
New_M16B_3_6
New_M16B_3_7
New_M16B_3_8
New_M16B_3_9
New_M16B_3_10
New_M16B_3_11
New_M16B_3_12
New_M16B_3_13
New_M16B_3_14
New_M16B_3_15
New_M16B_3_16
New_M16B_3_17
New_M16B_3_18
New_M16B_3_19
New_M16B_3_20
New_M16B_4_1
New_M16B_4_2
New_M16B_4_3
New_M16B_4_4
New_M16B_4_5
New_M16B_4_6
New_M16B_4_7
New_M16B_4_8
New_M16B_4_9
New_M16B_4_10
New_M16B_4_11
New_M16B_4_12
New_M16B_4_13
New_M16B_4_14
New_M16B_4_15
New_M16B_4_16
New_M16B_4_17
New_M16B_4_18
New_M16B_4_19
New_M16B_4_20
New_M16B_5_1
New_M16B_5_2
New_M16B_5_3
New_M16B_5_4
New_M16B_5_5
New_M16B_5_6
New_M16B_5_7
New_M16B_5_8
New_M16B_5_9
New_M16B_5_10
New_M16B_5_11
New_M16B_5_12
New_M16B_5_13
New_M16B_5_14
New_M16B_5_15
New_M16B_5_16
New_M16B_5_17
New_M16B_5_18
New_M16B_5_19
New_M16B_5_20
New_M16B_6_1
New_M16B_6_2
New_M16B_6_3
New_M16B_6_4
New_M16B_6_5
New_M16B_6_6
New_M16B_6_7
New_M16B_6_8
New_M16B_6_9
New_M16B_6_10
New_M16B_6_11
New_M16B_6_12
New_M16B_6_13
New_M16B_6_14
New_M16B_6_15
New_M16B_6_16
New_M16B_6_17
New_M16B_6_18
New_M16B_6_19
New_M16B_6_20
New_M16B_7_1
New_M16B_7_2
New_M16B_7_3
New_M16B_7_4
New_M16B_7_5
New_M16B_7_6
New_M16B_7_7
New_M16B_7_8
New_M16B_7_9
New_M16B_7_10
New_M16B_7_11
New_M16B_7_12
New_M16B_7_13
New_M16B_7_14
New_M16B_7_15
New_M16B_7_16
New_M16B_7_17
New_M16B_7_18
New_M16B_7_19
New_M16B_7_20
New_M16B_8_1
New_M16B_8_2
New_M16B_8_3
New_M16B_8_4
New_M16B_8_5
New_M16B_8_6
New_M16B_8_7
New_M16B_8_8
New_M16B_8_9
New_M16B_8_10
New_M16B_8_11
New_M16B_8_12
New_M16B_8_13
New_M16B_8_14
New_M16B_8_15
New_M16B_8_16
New_M16B_8_17
New_M16B_8_18
New_M16B_8_19
New_M16B_8_20
New_M16B_9_1
New_M16B_9_2
New_M16B_9_3
New_M16B_9_4
New_M16B_9_5
New_M16B_9_6
New_M16B_9_7
New_M16B_9_8
New_M16B_9_9
New_M16B_9_10
New_M16B_9_11
New_M16B_9_12
New_M16B_9_13
New_M16B_9_14
New_M16B_9_15
New_M16B_9_16
New_M16B_9_17
New_M16B_9_18
New_M16B_9_19
New_M16B_9_20
New_M16B_10_1
New_M16B_10_2
New_M16B_10_3
New_M16B_10_4
New_M16B_10_5
New_M16B_10_6
New_M16B_10_7
New_M16B_10_8
New_M16B_10_9
New_M16B_10_10
New_M16B_10_11
New_M16B_10_12
New_M16B_10_13
New_M16B_10_14
New_M16B_10_15
New_M16B_10_16
New_M16B_10_17
New_M16B_10_18
New_M16B_10_19
New_M16B_10_20
New_M16B_11_1
New_M16B_11_2
New_M16B_11_3
New_M16B_11_4
New_M16B_11_5
New_M16B_11_6
New_M16B_11_7
New_M16B_11_8
New_M16B_11_9
New_M16B_11_10
New_M16B_11_11
New_M16B_11_12
New_M16B_11_13
New_M16B_11_14
New_M16B_11_15
New_M16B_11_16
New_M16B_11_17
New_M16B_11_18
New_M16B_11_19
New_M16B_11_20
New_M16B_12_1
New_M16B_12_2
New_M16B_12_3
New_M16B_12_4
New_M16B_12_5
New_M16B_12_6
New_M16B_12_7
New_M16B_12_8
New_M16B_12_9
New_M16B_12_10
New_M16B_12_11
New_M16B_12_12
New_M16B_12_13
New_M16B_12_14
New_M16B_12_15
New_M16B_12_16
New_M16B_12_17
New_M16B_12_18
New_M16B_12_19
New_M16B_12_20
New_M16B_13_1
New_M16B_13_2
New_M16B_13_3
New_M16B_13_4
New_M16B_13_5
New_M16B_13_6
New_M16B_13_7
New_M16B_13_8
New_M16B_13_9
New_M16B_13_10
New_M16B_13_11
New_M16B_13_12
New_M16B_13_13
New_M16B_13_14
New_M16B_13_15
New_M16B_13_16
New_M16B_13_17
New_M16B_13_18
New_M16B_13_19
New_M16B_13_20
New_M16B_14_1
New_M16B_14_2
New_M16B_14_3
New_M16B_14_4
New_M16B_14_5
New_M16B_14_6
New_M16B_14_7
New_M16B_14_8
New_M16B_14_9
New_M16B_14_10
New_M16B_14_11
New_M16B_14_12
New_M16B_14_13
New_M16B_14_14
New_M16B_14_15
New_M16B_14_16
New_M16B_14_17
New_M16B_14_18
New_M16B_14_19
New_M16B_14_20
M18A_B_11
Q5C_Sunsilk
Q5C_Sunsilk_A_D
Q5C_Ultra_Doux
Q5C_Vivel
Q5C_Chik
Q5C_Clinic_All_Clear
Q5C_Clinic_Plus
Q5C_Dabur_Vatika_A_D
Q5C_Dove
Q5C_Essenza
Q5C_Fiama
Q5C_Garnier
Q5C_Garnier_A_D
Q5C_Head_Shoulder
Q5C_Lux
Q5C_Others
Q5C_Pantene
Q5C_Pantene_A_D
i
SRL
R_B
DAY	DATE	ACC	BCC	SCR	SEGMENT
DAY_	DATE_
Q8A_Chik
Q8A_Clinic_All_Clear
Q8A_Clinic_Plus
Q8A_Dabur_Vatika_A_D
Q8A_Dove
Q8A_Essenza
Q8A_Fiama
Q8A_Garnier
Q8A_Garnier_A_D
Q8A_Head_Shoulder
Q8A_Lux
Q8A_Others
Q8A_Pantene
Q8A_Pantene_A_D
Q8A_Sunsilk
Q8A_Sunsilk_A_D
Q8A_Ultra_Doux
Q8A_Vivel
Q10

;run;

proc contents data=v1.Selectvars_rawdata_12;
ods output variables;
run;
proc export data=v1.Selectvars_rawdata_12 outfile="E:\Projects\ITC\Apr 21\select_vars_12.csv";
run;

data v1.Selectvars_rawdata_13;
set v1.Selectvars_rawdata_12;
if Q5C_1_1= 1 then Q5C_TOM_Clinic_All_Clear =1;
if Q5C_1_1= 3 then Q5C_TOM_Clinic_Plus =1;
if Q5C_1_1= 4 then Q5C_TOM_Dove =1;
if Q5C_1_1= 5 then Q5C_TOM_Essenza =1;
if Q5C_1_1= 31 then Q5C_TOM_Garnier =1;
if Q5C_1_1= 8 then Q5C_TOM_Garnier_A_D =1;
if Q5C_1_1= 10 then Q5C_TOM_Head_Shoulder =1;
if Q5C_1_1= 11 then Q5C_TOM_Pantene =1;
if Q5C_1_1= 217 then Q5C_TOM_Pantene_A_D =1;
if Q5C_1_1= 30 then Q5C_TOM_Sunsilk =1;
if Q5C_1_1= 252 then Q5C_TOM_Sunsilk_A_D =1;
if Q5C_1_1= 18 then Q5C_TOM_Ultra_Doux =1;
if Q5C_1_1= 19 then Q5C_TOM_Fiama =1;
if Q5C_1_1= 24 then Q5C_TOM_Chik =1;
if Q5C_1_1= 28 then Q5C_TOM_Lux =1;
if Q5C_1_1= 291 then Q5C_TOM_Vivel =1;
if Q5C_1_1= 108 then Q5C_TOM_Dabur_Vatika_A_D =1;
if Q5C_1_1= 38 then Q5C_TOM_Others =1;
if Q5C_2_1= 1 then Q5C_TOM_Clinic_All_Clear =1;
if Q5C_2_1= 3 then Q5C_TOM_Clinic_Plus =1;
if Q5C_2_1= 4 then Q5C_TOM_Dove =1;
if Q5C_2_1= 5 then Q5C_TOM_Essenza =1;
if Q5C_2_1= 31 then Q5C_TOM_Garnier =1;
if Q5C_2_1= 8 then Q5C_TOM_Garnier_A_D =1;
if Q5C_2_1= 10 then Q5C_TOM_Head_Shoulder =1;
if Q5C_2_1= 11 then Q5C_TOM_Pantene =1;
if Q5C_2_1= 217 then Q5C_TOM_Pantene_A_D =1;
if Q5C_2_1= 30 then Q5C_TOM_Sunsilk =1;
if Q5C_2_1= 252 then Q5C_TOM_Sunsilk_A_D =1;
if Q5C_2_1= 18 then Q5C_TOM_Ultra_Doux =1;
if Q5C_2_1= 19 then Q5C_TOM_Fiama =1;
if Q5C_2_1= 24 then Q5C_TOM_Chik =1;
if Q5C_2_1= 28 then Q5C_TOM_Lux =1;
if Q5C_2_1= 291 then Q5C_TOM_Vivel =1;
if Q5C_2_1= 108 then Q5C_TOM_Dabur_Vatika_A_D =1;
if Q5C_2_1= 38 then Q5C_TOM_Others =1;
drop Q5C_2_1 Q5C_1_1;
run;
data shamp_recoding; 
set v1.Selectvars_rawdata_13;
if Q14_Clinic_All_Clear in (1 2 3) then Q14_Clinic_All_Clear_TB=1;
if Q14_Clinic_Plus in (1 2 3) then Q14_Clinic_Plus_TB=1;
if Q14_Dove in (1 2 3) then Q14_Dove_TB=1;
if Q14_Essenza in (1 2 3) then Q14_Essenza_TB=1;
if Q14_Garnier in (1 2 3) then Q14_Garnier_TB=1;
if Q14_Head_Shoulder in (1 2 3) then Q14_Head_Shoulder_TB=1;
if Q14_Pantene in (1 2 3) then Q14_Pantene_TB=1;
if Q14_Sunsilk in (1 2 3) then Q14_Sunsilk_TB=1;
if Q14_Ultra_Doux in (1 2 3) then Q14_Ultra_Doux_TB=1;
if Q14_Fiama in (1 2 3) then Q14_Fiama_TB=1;
if Q14_Chik in (1 2 3) then Q14_Chik_TB=1;
if Q14_Lux in (1 2 3) then Q14_Lux_TB=1;
if Q14_Vivel in (1 2 3) then Q14_Vivel_TB=1;
run;

proc freq data=shamp_recoding;
tables Q14_Fiama Q14_Fiama_TB;
run;

data shamp_recoding; 
set shamp_recoding;
array def(*) Q17_A_Clinic_All_Clear--Q17_A_Others;
do i= 1 to dim(def);
if def(i)=2 then def(i)=0;
end;
drop i;
run;

data check; 
set shamp_recoding;
keep Q16B_Fiama
Q16B_Fiama_1
Q16B_Fiama_2
Q16B_Fiama_3
Q16B_Fiama_4
Q16B_Fiama_5
Q16B_Fiama_6
Q16B_Fiama_7
Q16B_Fiama_8
Q16B_Fiama_9
Q16B_Fiama_10
Q16B_Fiama_11
Q16B_Fiama_12;
run;

proc freq data=shamp_recoding;
tables Q16B_Fiama
Q16B_Fiama_1
Q16B_Fiama_2
Q16B_Fiama_3
Q16B_Fiama_4
Q16B_Fiama_5
Q16B_Fiama_6
Q16B_Fiama_7
Q16B_Fiama_8
Q16B_Fiama_9
Q16B_Fiama_10
Q16B_Fiama_11
Q16B_Fiama_12;
run;
proc freq data=tmp1.Selectvars_rawdata_11;
tables Q5C_1_1
Q5C_1_2
Q5C_1_3
Q5C_1_4
Q5C_1_5
Q5C_1_6
Q5C_1_7
Q5C_1_8
Q5C_1_9
Q5C_1_10
Q5C_1_11
Q5C_1_12
Q5C_1_13
Q5C_1_14
Q5C_1_15
Q5C_2_1
Q5C_2_2
Q5C_2_3
Q5C_2_4
Q5C_2_5
Q5C_2_6
Q5C_2_7
Q5C_2_8
Q5C_2_9
Q5C_2_10
Q5C_2_11
Q5C_2_12
Q5C_2_13
Q5C_2_14
Q5C_2_15;
run;
data shamp_recoding1;
set shamp_recoding;
array abc(*) M17B1_1--M17B1_5;
array def(*) M17B2_1--M17B2_5;
do i= 1 to dim(abc);
if abc(i)=1 then Q17b1_Fiama_1=1;
if abc(i)=2 then Q17b1_Fiama_2=1;
if abc(i)=3 then Q17b1_Fiama_3=1;
if abc(i)=4 then Q17b1_Fiama_4=1;
if abc(i)=5 then Q17b1_Fiama_5=1;
if abc(i)=6 then Q17b1_Fiama_6=1;
if abc(i)=7 then Q17b1_Fiama_7=1;
end;
drop i;
do i= 1 to dim(def);
if def(i)=1 then Q17b1_vivel_1=1;
if def(i)=2 then Q17b1_vivel_2=1;
if def(i)=3 then Q17b1_vivel_3=1;
if def(i)=4 then Q17b1_vivel_4=1;
if def(i)=5 then Q17b1_vivel_5=1;
if def(i)=6 then Q17b1_vivel_6=1;
if def(i)=7 then Q17b1_vivel_7=1;
end;
drop i;
run;


proc contents data=shamp_recoding1;
ods output variables;
run;
proc freq data=shamp_recoding1;
tables Q17b1_Fiama_1--Q17b1_vivel_7;
run;
/*shampoos roll-up*/
data v1.shampoos_final_selectvars;
set shamp_recoding1;
keep CEN
WK_Yrwk
WK_Yryr
Q2_HEARD_Clinic_All_Clear
Q2_HEARD_Clinic_Plus
Q2_HEARD_Dove
Q2_HEARD_Essenza
Q2_HEARD_Garnier
Q2_HEARD_Garnier_A_D
Q2_HEARD_Head_Shoulder
Q2_HEARD_Pantene
Q2_HEARD_Pantene_A_D
Q2_HEARD_Sunsilk
Q2_HEARD_Sunsilk_A_D
Q2_HEARD_Ultra_Doux
Q2_HEARD_Fiama
Q2_HEARD_Chik
Q2_HEARD_Lux
Q2_HEARD_Vivel
Q2_HEARD_Dabur_Vatika_A_D
Q2_USED_Clinic_All_Clear
Q2_USED_Clinic_Plus
Q2_USED_Dove
Q2_USED_Essenza
Q2_USED_Garnier
Q2_USED_Garnier_A_D
Q2_USED_Head_Shoulder
Q2_USED_Pantene
Q2_USED_Pantene_A_D
Q2_USED_Sunsilk
Q2_USED_Sunsilk_A_D
Q2_USED_Ultra_Doux
Q2_USED_Fiama
Q2_USED_Chik
Q2_USED_Lux
Q2_USED_Vivel
Q2_USED_Dabur_Vatika_A_D
Q2_MOST_Clinic_All_Clear
Q2_MOST_Clinic_Plus
Q2_MOST_Dove
Q2_MOST_Essenza
Q2_MOST_Garnier
Q2_MOST_Garnier_A_D
Q2_MOST_Head_Shoulder
Q2_MOST_Pantene
Q2_MOST_Pantene_A_D
Q2_MOST_Sunsilk
Q2_MOST_Sunsilk_A_D
Q2_MOST_Ultra_Doux
Q2_MOST_Fiama
Q2_MOST_Chik
Q2_MOST_Lux
Q2_MOST_Vivel
Q2_MOST_Dabur_Vatika_A_D
Q14_Clinic_All_Clear_TB
Q14_Clinic_Plus_TB
Q14_Dove_TB
Q14_Essenza_TB
Q14_Garnier_TB
Q14_Head_Shoulder_TB
Q14_Pantene_TB
Q14_Sunsilk_TB
Q14_Ultra_Doux_TB
Q14_Fiama_TB
Q14_Chik_TB
Q14_Lux_TB
Q14_Vivel_TB
Q17_A_Clinic_All_Clear
Q17_A_Clinic_Plus
Q17_A_Dove
Q17_A_Essenza
Q17_A_Garnier
Q17_A_Garnier_A_D
Q17_A_Head_Shoulder
Q17_A_Pantene
Q17_A_Pantene_A_D
Q17_A_Sunsilk
Q17_A_Sunsilk_A_D
Q17_A_Ultra_Doux
Q17_A_Fiama
Q17_A_Chik
Q17_A_Lux
Q17_A_Vivel
Q17_A_Dabur_Vatika_A_D
Q17b_Clinic_All_Clear_1
Q17b_Clinic_Plus_1
Q17b_Dove_1
Q17b_Essenza_1
Q17b_Garnier_1
Q17b_Garnier_A_D_1
Q17b_Head_Shoulder_1
Q17b_Pantene_1
Q17b_Pantene_A_D_1
Q17b_Sunsilk_1
Q17b_Sunsilk_A_D_1
Q17b_Ultra_Doux_1
Q17b_Fiama_1
Q17b_Chik_1
Q17b_Lux_1
Q17b_Vivel_1
Q17b_Dabur_Vatika_A_D_1
Q17b_Clinic_All_Clear_2
Q17b_Clinic_Plus_2
Q17b_Dove_2
Q17b_Essenza_2
Q17b_Garnier_2
Q17b_Garnier_A_D_2
Q17b_Head_Shoulder_2
Q17b_Pantene_2
Q17b_Pantene_A_D_2
Q17b_Sunsilk_2
Q17b_Sunsilk_A_D_2
Q17b_Ultra_Doux_2
Q17b_Fiama_2
Q17b_Chik_2
Q17b_Lux_2
Q17b_Vivel_2
Q17b_Dabur_Vatika_A_D_2
Q17b_Clinic_All_Clear_3
Q17b_Clinic_Plus_3
Q17b_Dove_3
Q17b_Essenza_3
Q17b_Garnier_3
Q17b_Garnier_A_D_3
Q17b_Head_Shoulder_3
Q17b_Pantene_3
Q17b_Pantene_A_D_3
Q17b_Sunsilk_3
Q17b_Sunsilk_A_D_3
Q17b_Ultra_Doux_3
Q17b_Fiama_3
Q17b_Chik_3
Q17b_Lux_3
Q17b_Vivel_3
Q17b_Dabur_Vatika_A_D_3
Q17b_Clinic_All_Clear_4
Q17b_Clinic_Plus_4
Q17b_Dove_4
Q17b_Essenza_4
Q17b_Garnier_4
Q17b_Garnier_A_D_4
Q17b_Head_Shoulder_4
Q17b_Pantene_4
Q17b_Pantene_A_D_4
Q17b_Sunsilk_4
Q17b_Sunsilk_A_D_4
Q17b_Ultra_Doux_4
Q17b_Fiama_4
Q17b_Chik_4
Q17b_Lux_4
Q17b_Vivel_4
Q17b_Dabur_Vatika_A_D_4
Q17b_Clinic_All_Clear_5
Q17b_Clinic_Plus_5
Q17b_Dove_5
Q17b_Essenza_5
Q17b_Garnier_5
Q17b_Garnier_A_D_5
Q17b_Head_Shoulder_5
Q17b_Pantene_5
Q17b_Pantene_A_D_5
Q17b_Sunsilk_5
Q17b_Sunsilk_A_D_5
Q17b_Ultra_Doux_5
Q17b_Fiama_5
Q17b_Chik_5
Q17b_Lux_5
Q17b_Vivel_5
Q17b_Dabur_Vatika_A_D_5
Q17b_Clinic_All_Clear_6
Q17b_Clinic_Plus_6
Q17b_Dove_6
Q17b_Essenza_6
Q17b_Garnier_6
Q17b_Garnier_A_D_6
Q17b_Head_Shoulder_6
Q17b_Pantene_6
Q17b_Pantene_A_D_6
Q17b_Sunsilk_6
Q17b_Sunsilk_A_D_6
Q17b_Ultra_Doux_6
Q17b_Fiama_6
Q17b_Chik_6
Q17b_Lux_6
Q17b_Vivel_6
Q17b_Dabur_Vatika_A_D_6
Q17b_Clinic_All_Clear_7
Q17b_Clinic_Plus_7
Q17b_Dove_7
Q17b_Essenza_7
Q17b_Garnier_7
Q17b_Garnier_A_D_7
Q17b_Head_Shoulder_7
Q17b_Pantene_7
Q17b_Pantene_A_D_7
Q17b_Sunsilk_7
Q17b_Sunsilk_A_D_7
Q17b_Ultra_Doux_7
Q17b_Fiama_7
Q17b_Chik_7
Q17b_Lux_7
Q17b_Vivel_7
Q17b_Dabur_Vatika_A_D_7
Q17b_Clinic_All_Clear_8
Q17b_Clinic_Plus_8
Q17b_Dove_8
Q17b_Essenza_8
Q17b_Garnier_8
Q17b_Garnier_A_D_8
Q17b_Head_Shoulder_8
Q17b_Pantene_8
Q17b_Pantene_A_D_8
Q17b_Sunsilk_8
Q17b_Sunsilk_A_D_8
Q17b_Ultra_Doux_8
Q17b_Fiama_8
Q17b_Chik_8
Q17b_Lux_8
Q17b_Vivel_8
Q17b_Dabur_Vatika_A_D_8
Q16A_Clinic_All_Clear_1
Q16A_Clinic_Plus_1
Q16A_Dove_1
Q16A_Essenza_1
Q16A_Garnier_1
Q16A_Garnier_A_D_1
Q16A_Head_Shoulder_1
Q16A_Pantene_1
Q16A_Pantene_A_D_1
Q16A_Sunsilk_1
Q16A_Sunsilk_A_D_1
Q16A_Ultra_Doux_1
Q16A_Fiama_1
Q16A_Chik_1
Q16A_Lux_1
Q16A_Vivel_1
Q16A_Dabur_Vatika_A_D_1
Q16A_Others_1
Q16A_Clinic_All_Clear_2
Q16A_Clinic_Plus_2
Q16A_Dove_2
Q16A_Essenza_2
Q16A_Garnier_2
Q16A_Garnier_A_D_2
Q16A_Head_Shoulder_2
Q16A_Pantene_2
Q16A_Pantene_A_D_2
Q16A_Sunsilk_2
Q16A_Sunsilk_A_D_2
Q16A_Ultra_Doux_2
Q16A_Fiama_2
Q16A_Chik_2
Q16A_Lux_2
Q16A_Vivel_2
Q16A_Dabur_Vatika_A_D_2
Q16A_Others_2
Q16A_Clinic_All_Clear_3
Q16A_Clinic_Plus_3
Q16A_Dove_3
Q16A_Essenza_3
Q16A_Garnier_3
Q16A_Garnier_A_D_3
Q16A_Head_Shoulder_3
Q16A_Pantene_3
Q16A_Pantene_A_D_3
Q16A_Sunsilk_3
Q16A_Sunsilk_A_D_3
Q16A_Ultra_Doux_3
Q16A_Fiama_3
Q16A_Chik_3
Q16A_Lux_3
Q16A_Vivel_3
Q16A_Dabur_Vatika_A_D_3
Q16A_Others_3
Q16A_Clinic_All_Clear_4
Q16A_Clinic_Plus_4
Q16A_Dove_4
Q16A_Essenza_4
Q16A_Garnier_4
Q16A_Garnier_A_D_4
Q16A_Head_Shoulder_4
Q16A_Pantene_4
Q16A_Pantene_A_D_4
Q16A_Sunsilk_4
Q16A_Sunsilk_A_D_4
Q16A_Ultra_Doux_4
Q16A_Fiama_4
Q16A_Chik_4
Q16A_Lux_4
Q16A_Vivel_4
Q16A_Dabur_Vatika_A_D_4
Q16A_Others_4
Q16A_Clinic_All_Clear_5
Q16A_Clinic_Plus_5
Q16A_Dove_5
Q16A_Essenza_5
Q16A_Garnier_5
Q16A_Garnier_A_D_5
Q16A_Head_Shoulder_5
Q16A_Pantene_5
Q16A_Pantene_A_D_5
Q16A_Sunsilk_5
Q16A_Sunsilk_A_D_5
Q16A_Ultra_Doux_5
Q16A_Fiama_5
Q16A_Chik_5
Q16A_Lux_5
Q16A_Vivel_5
Q16A_Dabur_Vatika_A_D_5
Q16A_Others_5
Q16A_Clinic_All_Clear_6
Q16A_Clinic_Plus_6
Q16A_Dove_6
Q16A_Essenza_6
Q16A_Garnier_6
Q16A_Garnier_A_D_6
Q16A_Head_Shoulder_6
Q16A_Pantene_6
Q16A_Pantene_A_D_6
Q16A_Sunsilk_6
Q16A_Sunsilk_A_D_6
Q16A_Ultra_Doux_6
Q16A_Fiama_6
Q16A_Chik_6
Q16A_Lux_6
Q16A_Vivel_6
Q16A_Dabur_Vatika_A_D_6
Q16A_Others_6
Q16A_Clinic_All_Clear_7
Q16A_Clinic_Plus_7
Q16A_Dove_7
Q16A_Essenza_7
Q16A_Garnier_7
Q16A_Garnier_A_D_7
Q16A_Head_Shoulder_7
Q16A_Pantene_7
Q16A_Pantene_A_D_7
Q16A_Sunsilk_7
Q16A_Sunsilk_A_D_7
Q16A_Ultra_Doux_7
Q16A_Fiama_7
Q16A_Chik_7
Q16A_Lux_7
Q16A_Vivel_7
Q16A_Dabur_Vatika_A_D_7
Q16A_Others_7
Q16A_Clinic_All_Clear_8
Q16A_Clinic_Plus_8
Q16A_Dove_8
Q16A_Essenza_8
Q16A_Garnier_8
Q16A_Garnier_A_D_8
Q16A_Head_Shoulder_8
Q16A_Pantene_8
Q16A_Pantene_A_D_8
Q16A_Sunsilk_8
Q16A_Sunsilk_A_D_8
Q16A_Ultra_Doux_8
Q16A_Fiama_8
Q16A_Chik_8
Q16A_Lux_8
Q16A_Vivel_8
Q16A_Dabur_Vatika_A_D_8
Q16A_Others_8
Q16A_Clinic_All_Clear_9
Q16A_Clinic_Plus_9
Q16A_Dove_9
Q16A_Essenza_9
Q16A_Garnier_9
Q16A_Garnier_A_D_9
Q16A_Head_Shoulder_9
Q16A_Pantene_9
Q16A_Pantene_A_D_9
Q16A_Sunsilk_9
Q16A_Sunsilk_A_D_9
Q16A_Ultra_Doux_9
Q16A_Fiama_9
Q16A_Chik_9
Q16A_Lux_9
Q16A_Vivel_9
Q16A_Dabur_Vatika_A_D_9
Q16A_Others_9
Q16A_Clinic_All_Clear_10
Q16A_Clinic_Plus_10
Q16A_Dove_10
Q16A_Essenza_10
Q16A_Garnier_10
Q16A_Garnier_A_D_10
Q16A_Head_Shoulder_10
Q16A_Pantene_10
Q16A_Pantene_A_D_10
Q16A_Sunsilk_10
Q16A_Sunsilk_A_D_10
Q16A_Ultra_Doux_10
Q16A_Fiama_10
Q16A_Chik_10
Q16A_Lux_10
Q16A_Vivel_10
Q16A_Dabur_Vatika_A_D_10
Q16A_Others_10
Q16A_Clinic_All_Clear_11
Q16A_Clinic_Plus_11
Q16A_Dove_11
Q16A_Essenza_11
Q16A_Garnier_11
Q16A_Garnier_A_D_11
Q16A_Head_Shoulder_11
Q16A_Pantene_11
Q16A_Pantene_A_D_11
Q16A_Sunsilk_11
Q16A_Sunsilk_A_D_11
Q16A_Ultra_Doux_11
Q16A_Fiama_11
Q16A_Chik_11
Q16A_Lux_11
Q16A_Vivel_11
Q16A_Dabur_Vatika_A_D_11
Q16A_Others_11
Q16A_Clinic_All_Clear_12
Q16A_Clinic_Plus_12
Q16A_Dove_12
Q16A_Essenza_12
Q16A_Garnier_12
Q16A_Garnier_A_D_12
Q16A_Head_Shoulder_12
Q16A_Pantene_12
Q16A_Pantene_A_D_12
Q16A_Sunsilk_12
Q16A_Sunsilk_A_D_12
Q16A_Ultra_Doux_12
Q16A_Fiama_12
Q16A_Chik_12
Q16A_Lux_12
Q16A_Vivel_12
Q16A_Dabur_Vatika_A_D_12
Q16A_Others_12
Q16A_Clinic_All_Clear_13
Q16A_Clinic_Plus_13
Q16A_Dove_13
Q16A_Essenza_13
Q16A_Garnier_13
Q16A_Garnier_A_D_13
Q16A_Head_Shoulder_13
Q16A_Pantene_13
Q16A_Pantene_A_D_13
Q16A_Sunsilk_13
Q16A_Sunsilk_A_D_13
Q16A_Ultra_Doux_13
Q16A_Fiama_13
Q16A_Chik_13
Q16A_Lux_13
Q16A_Vivel_13
Q16A_Dabur_Vatika_A_D_13
Q16A_Others_13
Q16A_Clinic_All_Clear_14
Q16A_Clinic_Plus_14
Q16A_Dove_14
Q16A_Essenza_14
Q16A_Garnier_14
Q16A_Garnier_A_D_14
Q16A_Head_Shoulder_14
Q16A_Pantene_14
Q16A_Pantene_A_D_14
Q16A_Sunsilk_14
Q16A_Sunsilk_A_D_14
Q16A_Ultra_Doux_14
Q16A_Fiama_14
Q16A_Chik_14
Q16A_Lux_14
Q16A_Vivel_14
Q16A_Dabur_Vatika_A_D_14
Q16A_Others_14
Q16A_Clinic_All_Clear_15
Q16A_Clinic_Plus_15
Q16A_Dove_15
Q16A_Essenza_15
Q16A_Garnier_15
Q16A_Garnier_A_D_15
Q16A_Head_Shoulder_15
Q16A_Pantene_15
Q16A_Pantene_A_D_15
Q16A_Sunsilk_15
Q16A_Sunsilk_A_D_15
Q16A_Ultra_Doux_15
Q16A_Fiama_15
Q16A_Chik_15
Q16A_Lux_15
Q16A_Vivel_15
Q16A_Dabur_Vatika_A_D_15
Q16A_Others_15
Q16A_Clinic_All_Clear_16
Q16A_Clinic_Plus_16
Q16A_Dove_16
Q16A_Essenza_16
Q16A_Garnier_16
Q16A_Garnier_A_D_16
Q16A_Head_Shoulder_16
Q16A_Pantene_16
Q16A_Pantene_A_D_16
Q16A_Sunsilk_16
Q16A_Sunsilk_A_D_16
Q16A_Ultra_Doux_16
Q16A_Fiama_16
Q16A_Chik_16
Q16A_Lux_16
Q16A_Vivel_16
Q16A_Dabur_Vatika_A_D_16
Q16A_Others_16

Q16B_Clinic_All_Clear_1
Q16B_Clinic_Plus_1
Q16B_Dove_1
Q16B_Essenza_1
Q16B_Garnier_1
Q16B_Garnier_A_D_1
Q16B_Head_Shoulder_1
Q16B_Pantene_1
Q16B_Pantene_A_D_1
Q16B_Sunsilk_1
Q16B_Sunsilk_A_D_1
Q16B_Ultra_Doux_1
Q16B_Fiama_1
Q16B_Chik_1
Q16B_Lux_1
Q16B_Vivel_1
Q16B_Dabur_Vatika_A_D_1
Q16B_Others_1
Q16B_Clinic_All_Clear_2
Q16B_Clinic_Plus_2
Q16B_Dove_2
Q16B_Essenza_2
Q16B_Garnier_2
Q16B_Garnier_A_D_2
Q16B_Head_Shoulder_2
Q16B_Pantene_2
Q16B_Pantene_A_D_2
Q16B_Sunsilk_2
Q16B_Sunsilk_A_D_2
Q16B_Ultra_Doux_2
Q16B_Fiama_2
Q16B_Chik_2
Q16B_Lux_2
Q16B_Vivel_2
Q16B_Dabur_Vatika_A_D_2
Q16B_Others_2
Q16B_Clinic_All_Clear_3
Q16B_Clinic_Plus_3
Q16B_Dove_3
Q16B_Essenza_3
Q16B_Garnier_3
Q16B_Garnier_A_D_3
Q16B_Head_Shoulder_3
Q16B_Pantene_3
Q16B_Pantene_A_D_3
Q16B_Sunsilk_3
Q16B_Sunsilk_A_D_3
Q16B_Ultra_Doux_3
Q16B_Fiama_3
Q16B_Chik_3
Q16B_Lux_3
Q16B_Vivel_3
Q16B_Dabur_Vatika_A_D_3
Q16B_Others_3
Q16B_Clinic_All_Clear_4
Q16B_Clinic_Plus_4
Q16B_Dove_4
Q16B_Essenza_4
Q16B_Garnier_4
Q16B_Garnier_A_D_4
Q16B_Head_Shoulder_4
Q16B_Pantene_4
Q16B_Pantene_A_D_4
Q16B_Sunsilk_4
Q16B_Sunsilk_A_D_4
Q16B_Ultra_Doux_4
Q16B_Fiama_4
Q16B_Chik_4
Q16B_Lux_4
Q16B_Vivel_4
Q16B_Dabur_Vatika_A_D_4
Q16B_Others_4
Q16B_Clinic_All_Clear_5
Q16B_Clinic_Plus_5
Q16B_Dove_5
Q16B_Essenza_5
Q16B_Garnier_5
Q16B_Garnier_A_D_5
Q16B_Head_Shoulder_5
Q16B_Pantene_5
Q16B_Pantene_A_D_5
Q16B_Sunsilk_5
Q16B_Sunsilk_A_D_5
Q16B_Ultra_Doux_5
Q16B_Fiama_5
Q16B_Chik_5
Q16B_Lux_5
Q16B_Vivel_5
Q16B_Dabur_Vatika_A_D_5
Q16B_Others_5
Q16B_Clinic_All_Clear_6
Q16B_Clinic_Plus_6
Q16B_Dove_6
Q16B_Essenza_6
Q16B_Garnier_6
Q16B_Garnier_A_D_6
Q16B_Head_Shoulder_6
Q16B_Pantene_6
Q16B_Pantene_A_D_6
Q16B_Sunsilk_6
Q16B_Sunsilk_A_D_6
Q16B_Ultra_Doux_6
Q16B_Fiama_6
Q16B_Chik_6
Q16B_Lux_6
Q16B_Vivel_6
Q16B_Dabur_Vatika_A_D_6
Q16B_Others_6
Q16B_Clinic_All_Clear_7
Q16B_Clinic_Plus_7
Q16B_Dove_7
Q16B_Essenza_7
Q16B_Garnier_7
Q16B_Garnier_A_D_7
Q16B_Head_Shoulder_7
Q16B_Pantene_7
Q16B_Pantene_A_D_7
Q16B_Sunsilk_7
Q16B_Sunsilk_A_D_7
Q16B_Ultra_Doux_7
Q16B_Fiama_7
Q16B_Chik_7
Q16B_Lux_7
Q16B_Vivel_7
Q16B_Dabur_Vatika_A_D_7
Q16B_Others_7
Q16B_Clinic_All_Clear_8
Q16B_Clinic_Plus_8
Q16B_Dove_8
Q16B_Essenza_8
Q16B_Garnier_8
Q16B_Garnier_A_D_8
Q16B_Head_Shoulder_8
Q16B_Pantene_8
Q16B_Pantene_A_D_8
Q16B_Sunsilk_8
Q16B_Sunsilk_A_D_8
Q16B_Ultra_Doux_8
Q16B_Fiama_8
Q16B_Chik_8
Q16B_Lux_8
Q16B_Vivel_8
Q16B_Dabur_Vatika_A_D_8
Q16B_Others_8
Q16B_Clinic_All_Clear_9
Q16B_Clinic_Plus_9
Q16B_Dove_9
Q16B_Essenza_9
Q16B_Garnier_9
Q16B_Garnier_A_D_9
Q16B_Head_Shoulder_9
Q16B_Pantene_9
Q16B_Pantene_A_D_9
Q16B_Sunsilk_9
Q16B_Sunsilk_A_D_9
Q16B_Ultra_Doux_9
Q16B_Fiama_9
Q16B_Chik_9
Q16B_Lux_9
Q16B_Vivel_9
Q16B_Dabur_Vatika_A_D_9
Q16B_Others_9
Q16B_Clinic_All_Clear_10
Q16B_Clinic_Plus_10
Q16B_Dove_10
Q16B_Essenza_10
Q16B_Garnier_10
Q16B_Garnier_A_D_10
Q16B_Head_Shoulder_10
Q16B_Pantene_10
Q16B_Pantene_A_D_10
Q16B_Sunsilk_10
Q16B_Sunsilk_A_D_10
Q16B_Ultra_Doux_10
Q16B_Fiama_10
Q16B_Chik_10
Q16B_Lux_10
Q16B_Vivel_10
Q16B_Dabur_Vatika_A_D_10
Q16B_Others_10
Q16B_Clinic_All_Clear_11
Q16B_Clinic_Plus_11
Q16B_Dove_11
Q16B_Essenza_11
Q16B_Garnier_11
Q16B_Garnier_A_D_11
Q16B_Head_Shoulder_11
Q16B_Pantene_11
Q16B_Pantene_A_D_11
Q16B_Sunsilk_11
Q16B_Sunsilk_A_D_11
Q16B_Ultra_Doux_11
Q16B_Fiama_11
Q16B_Chik_11
Q16B_Lux_11
Q16B_Vivel_11
Q16B_Dabur_Vatika_A_D_11
Q16B_Others_11
Q16B_Clinic_All_Clear_12
Q16B_Clinic_Plus_12
Q16B_Dove_12
Q16B_Essenza_12
Q16B_Garnier_12
Q16B_Garnier_A_D_12
Q16B_Head_Shoulder_12
Q16B_Pantene_12
Q16B_Pantene_A_D_12
Q16B_Sunsilk_12
Q16B_Sunsilk_A_D_12
Q16B_Ultra_Doux_12
Q16B_Fiama_12
Q16B_Chik_12
Q16B_Lux_12
Q16B_Vivel_12
Q16B_Dabur_Vatika_A_D_12
Q16B_Others_12
ITC_int_std
ITC_premium
ITC_trust
ITC_relevant
ITC_quality
HUL_int_std
HUL_premium
HUL_trust
HUL_relevant
HUL_quality
Q17b1_Fiama_1--Q17b1_vivel_7
Q5C_Spon_Chik
Q5C_Spon_Clinic_All_Clear
Q5C_Spon_Clinic_Plus
Q5C_Spon_Dabur_Vatika_A_D
Q5C_Spon_Dove
Q5C_Spon_Essenza
Q5C_Spon_Fiama
Q5C_Spon_Garnier
Q5C_Spon_Garnier_A_D
Q5C_Spon_Head_Shoulder
Q5C_Spon_Lux
Q5C_Spon_Others
Q5C_Spon_Pantene
Q5C_Spon_Pantene_A_D
Q5C_Spon_Sunsilk
Q5C_Spon_Sunsilk_A_D
Q5C_Spon_Ultra_Doux
Q5C_Spon_Vivel
Q5C_TOM_Chik
Q5C_TOM_Clinic_All_Clear
Q5C_TOM_Clinic_Plus
Q5C_TOM_Dabur_Vatika_A_D
Q5C_TOM_Dove
Q5C_TOM_Essenza
Q5C_TOM_Fiama
Q5C_TOM_Garnier
Q5C_TOM_Garnier_A_D
Q5C_TOM_Head_Shoulder
Q5C_TOM_Lux
Q5C_TOM_Others
Q5C_TOM_Pantene
Q5C_TOM_Pantene_A_D
Q5C_TOM_Sunsilk
Q5C_TOM_Sunsilk_A_D
Q5C_TOM_Ultra_Doux
Q5C_TOM_Vivel

;
flag=1;
run;

proc sort data=v1.shampoos_final_selectvars;
by CEN
WK_Yryr
WK_Yrwk;
run;
data v1.shampoos_final_selectvars;
set v1.shampoos_final_selectvars;
flag=1;
run;
proc means data=v1.shampoos_final_selectvars noprint;
by CEN
WK_Yryr
WK_Yrwk;
var Q2_HEARD_Clinic_All_Clear
Q2_HEARD_Clinic_Plus
Q2_HEARD_Dove
Q2_HEARD_Essenza
Q2_HEARD_Garnier
Q2_HEARD_Garnier_A_D
Q2_HEARD_Head_Shoulder
Q2_HEARD_Pantene
Q2_HEARD_Pantene_A_D
Q2_HEARD_Sunsilk
Q2_HEARD_Sunsilk_A_D
Q2_HEARD_Ultra_Doux
Q2_HEARD_Fiama
Q2_HEARD_Chik
Q2_HEARD_Lux
Q2_HEARD_Vivel
Q2_HEARD_Dabur_Vatika_A_D
Q2_USED_Clinic_All_Clear
Q2_USED_Clinic_Plus
Q2_USED_Dove
Q2_USED_Essenza
Q2_USED_Garnier
Q2_USED_Garnier_A_D
Q2_USED_Head_Shoulder
Q2_USED_Pantene
Q2_USED_Pantene_A_D
Q2_USED_Sunsilk
Q2_USED_Sunsilk_A_D
Q2_USED_Ultra_Doux
Q2_USED_Fiama
Q2_USED_Chik
Q2_USED_Lux
Q2_USED_Vivel
Q2_USED_Dabur_Vatika_A_D
Q2_MOST_Clinic_All_Clear
Q2_MOST_Clinic_Plus
Q2_MOST_Dove
Q2_MOST_Essenza
Q2_MOST_Garnier
Q2_MOST_Garnier_A_D
Q2_MOST_Head_Shoulder
Q2_MOST_Pantene
Q2_MOST_Pantene_A_D
Q2_MOST_Sunsilk
Q2_MOST_Sunsilk_A_D
Q2_MOST_Ultra_Doux
Q2_MOST_Fiama
Q2_MOST_Chik
Q2_MOST_Lux
Q2_MOST_Vivel
Q2_MOST_Dabur_Vatika_A_D
Q14_Clinic_All_Clear_TB
Q14_Clinic_Plus_TB
Q14_Dove_TB
Q14_Essenza_TB
Q14_Garnier_TB
Q14_Head_Shoulder_TB
Q14_Pantene_TB
Q14_Sunsilk_TB
Q14_Ultra_Doux_TB
Q14_Fiama_TB
Q14_Chik_TB
Q14_Lux_TB
Q14_Vivel_TB
Q17_A_Clinic_All_Clear
Q17_A_Clinic_Plus
Q17_A_Dove
Q17_A_Essenza
Q17_A_Garnier
Q17_A_Garnier_A_D
Q17_A_Head_Shoulder
Q17_A_Pantene
Q17_A_Pantene_A_D
Q17_A_Sunsilk
Q17_A_Sunsilk_A_D
Q17_A_Ultra_Doux
Q17_A_Fiama
Q17_A_Chik
Q17_A_Lux
Q17_A_Vivel
Q17_A_Dabur_Vatika_A_D
Q17b_Clinic_All_Clear_1
Q17b_Clinic_Plus_1
Q17b_Dove_1
Q17b_Essenza_1
Q17b_Garnier_1
Q17b_Garnier_A_D_1
Q17b_Head_Shoulder_1
Q17b_Pantene_1
Q17b_Pantene_A_D_1
Q17b_Sunsilk_1
Q17b_Sunsilk_A_D_1
Q17b_Ultra_Doux_1
Q17b_Fiama_1
Q17b_Chik_1
Q17b_Lux_1
Q17b_Vivel_1
Q17b_Dabur_Vatika_A_D_1
Q17b_Clinic_All_Clear_2
Q17b_Clinic_Plus_2
Q17b_Dove_2
Q17b_Essenza_2
Q17b_Garnier_2
Q17b_Garnier_A_D_2
Q17b_Head_Shoulder_2
Q17b_Pantene_2
Q17b_Pantene_A_D_2
Q17b_Sunsilk_2
Q17b_Sunsilk_A_D_2
Q17b_Ultra_Doux_2
Q17b_Fiama_2
Q17b_Chik_2
Q17b_Lux_2
Q17b_Vivel_2
Q17b_Dabur_Vatika_A_D_2
Q17b_Clinic_All_Clear_3
Q17b_Clinic_Plus_3
Q17b_Dove_3
Q17b_Essenza_3
Q17b_Garnier_3
Q17b_Garnier_A_D_3
Q17b_Head_Shoulder_3
Q17b_Pantene_3
Q17b_Pantene_A_D_3
Q17b_Sunsilk_3
Q17b_Sunsilk_A_D_3
Q17b_Ultra_Doux_3
Q17b_Fiama_3
Q17b_Chik_3
Q17b_Lux_3
Q17b_Vivel_3
Q17b_Dabur_Vatika_A_D_3
Q17b_Clinic_All_Clear_4
Q17b_Clinic_Plus_4
Q17b_Dove_4
Q17b_Essenza_4
Q17b_Garnier_4
Q17b_Garnier_A_D_4
Q17b_Head_Shoulder_4
Q17b_Pantene_4
Q17b_Pantene_A_D_4
Q17b_Sunsilk_4
Q17b_Sunsilk_A_D_4
Q17b_Ultra_Doux_4
Q17b_Fiama_4
Q17b_Chik_4
Q17b_Lux_4
Q17b_Vivel_4
Q17b_Dabur_Vatika_A_D_4
Q17b_Clinic_All_Clear_5
Q17b_Clinic_Plus_5
Q17b_Dove_5
Q17b_Essenza_5
Q17b_Garnier_5
Q17b_Garnier_A_D_5
Q17b_Head_Shoulder_5
Q17b_Pantene_5
Q17b_Pantene_A_D_5
Q17b_Sunsilk_5
Q17b_Sunsilk_A_D_5
Q17b_Ultra_Doux_5
Q17b_Fiama_5
Q17b_Chik_5
Q17b_Lux_5
Q17b_Vivel_5
Q17b_Dabur_Vatika_A_D_5
Q17b_Clinic_All_Clear_6
Q17b_Clinic_Plus_6
Q17b_Dove_6
Q17b_Essenza_6
Q17b_Garnier_6
Q17b_Garnier_A_D_6
Q17b_Head_Shoulder_6
Q17b_Pantene_6
Q17b_Pantene_A_D_6
Q17b_Sunsilk_6
Q17b_Sunsilk_A_D_6
Q17b_Ultra_Doux_6
Q17b_Fiama_6
Q17b_Chik_6
Q17b_Lux_6
Q17b_Vivel_6
Q17b_Dabur_Vatika_A_D_6
Q17b_Clinic_All_Clear_7
Q17b_Clinic_Plus_7
Q17b_Dove_7
Q17b_Essenza_7
Q17b_Garnier_7
Q17b_Garnier_A_D_7
Q17b_Head_Shoulder_7
Q17b_Pantene_7
Q17b_Pantene_A_D_7
Q17b_Sunsilk_7
Q17b_Sunsilk_A_D_7
Q17b_Ultra_Doux_7
Q17b_Fiama_7
Q17b_Chik_7
Q17b_Lux_7
Q17b_Vivel_7
Q17b_Dabur_Vatika_A_D_7
Q17b_Clinic_All_Clear_8
Q17b_Clinic_Plus_8
Q17b_Dove_8
Q17b_Essenza_8
Q17b_Garnier_8
Q17b_Garnier_A_D_8
Q17b_Head_Shoulder_8
Q17b_Pantene_8
Q17b_Pantene_A_D_8
Q17b_Sunsilk_8
Q17b_Sunsilk_A_D_8
Q17b_Ultra_Doux_8
Q17b_Fiama_8
Q17b_Chik_8
Q17b_Lux_8
Q17b_Vivel_8
Q17b_Dabur_Vatika_A_D_8
Q16A_Clinic_All_Clear_1
Q16A_Clinic_Plus_1
Q16A_Dove_1
Q16A_Essenza_1
Q16A_Garnier_1
Q16A_Garnier_A_D_1
Q16A_Head_Shoulder_1
Q16A_Pantene_1
Q16A_Pantene_A_D_1
Q16A_Sunsilk_1
Q16A_Sunsilk_A_D_1
Q16A_Ultra_Doux_1
Q16A_Fiama_1
Q16A_Chik_1
Q16A_Lux_1
Q16A_Vivel_1
Q16A_Dabur_Vatika_A_D_1
Q16A_Others_1
Q16A_Clinic_All_Clear_2
Q16A_Clinic_Plus_2
Q16A_Dove_2
Q16A_Essenza_2
Q16A_Garnier_2
Q16A_Garnier_A_D_2
Q16A_Head_Shoulder_2
Q16A_Pantene_2
Q16A_Pantene_A_D_2
Q16A_Sunsilk_2
Q16A_Sunsilk_A_D_2
Q16A_Ultra_Doux_2
Q16A_Fiama_2
Q16A_Chik_2
Q16A_Lux_2
Q16A_Vivel_2
Q16A_Dabur_Vatika_A_D_2
Q16A_Others_2
Q16A_Clinic_All_Clear_3
Q16A_Clinic_Plus_3
Q16A_Dove_3
Q16A_Essenza_3
Q16A_Garnier_3
Q16A_Garnier_A_D_3
Q16A_Head_Shoulder_3
Q16A_Pantene_3
Q16A_Pantene_A_D_3
Q16A_Sunsilk_3
Q16A_Sunsilk_A_D_3
Q16A_Ultra_Doux_3
Q16A_Fiama_3
Q16A_Chik_3
Q16A_Lux_3
Q16A_Vivel_3
Q16A_Dabur_Vatika_A_D_3
Q16A_Others_3
Q16A_Clinic_All_Clear_4
Q16A_Clinic_Plus_4
Q16A_Dove_4
Q16A_Essenza_4
Q16A_Garnier_4
Q16A_Garnier_A_D_4
Q16A_Head_Shoulder_4
Q16A_Pantene_4
Q16A_Pantene_A_D_4
Q16A_Sunsilk_4
Q16A_Sunsilk_A_D_4
Q16A_Ultra_Doux_4
Q16A_Fiama_4
Q16A_Chik_4
Q16A_Lux_4
Q16A_Vivel_4
Q16A_Dabur_Vatika_A_D_4
Q16A_Others_4
Q16A_Clinic_All_Clear_5
Q16A_Clinic_Plus_5
Q16A_Dove_5
Q16A_Essenza_5
Q16A_Garnier_5
Q16A_Garnier_A_D_5
Q16A_Head_Shoulder_5
Q16A_Pantene_5
Q16A_Pantene_A_D_5
Q16A_Sunsilk_5
Q16A_Sunsilk_A_D_5
Q16A_Ultra_Doux_5
Q16A_Fiama_5
Q16A_Chik_5
Q16A_Lux_5
Q16A_Vivel_5
Q16A_Dabur_Vatika_A_D_5
Q16A_Others_5
Q16A_Clinic_All_Clear_6
Q16A_Clinic_Plus_6
Q16A_Dove_6
Q16A_Essenza_6
Q16A_Garnier_6
Q16A_Garnier_A_D_6
Q16A_Head_Shoulder_6
Q16A_Pantene_6
Q16A_Pantene_A_D_6
Q16A_Sunsilk_6
Q16A_Sunsilk_A_D_6
Q16A_Ultra_Doux_6
Q16A_Fiama_6
Q16A_Chik_6
Q16A_Lux_6
Q16A_Vivel_6
Q16A_Dabur_Vatika_A_D_6
Q16A_Others_6
Q16A_Clinic_All_Clear_7
Q16A_Clinic_Plus_7
Q16A_Dove_7
Q16A_Essenza_7
Q16A_Garnier_7
Q16A_Garnier_A_D_7
Q16A_Head_Shoulder_7
Q16A_Pantene_7
Q16A_Pantene_A_D_7
Q16A_Sunsilk_7
Q16A_Sunsilk_A_D_7
Q16A_Ultra_Doux_7
Q16A_Fiama_7
Q16A_Chik_7
Q16A_Lux_7
Q16A_Vivel_7
Q16A_Dabur_Vatika_A_D_7
Q16A_Others_7
Q16A_Clinic_All_Clear_8
Q16A_Clinic_Plus_8
Q16A_Dove_8
Q16A_Essenza_8
Q16A_Garnier_8
Q16A_Garnier_A_D_8
Q16A_Head_Shoulder_8
Q16A_Pantene_8
Q16A_Pantene_A_D_8
Q16A_Sunsilk_8
Q16A_Sunsilk_A_D_8
Q16A_Ultra_Doux_8
Q16A_Fiama_8
Q16A_Chik_8
Q16A_Lux_8
Q16A_Vivel_8
Q16A_Dabur_Vatika_A_D_8
Q16A_Others_8
Q16A_Clinic_All_Clear_9
Q16A_Clinic_Plus_9
Q16A_Dove_9
Q16A_Essenza_9
Q16A_Garnier_9
Q16A_Garnier_A_D_9
Q16A_Head_Shoulder_9
Q16A_Pantene_9
Q16A_Pantene_A_D_9
Q16A_Sunsilk_9
Q16A_Sunsilk_A_D_9
Q16A_Ultra_Doux_9
Q16A_Fiama_9
Q16A_Chik_9
Q16A_Lux_9
Q16A_Vivel_9
Q16A_Dabur_Vatika_A_D_9
Q16A_Others_9
Q16A_Clinic_All_Clear_10
Q16A_Clinic_Plus_10
Q16A_Dove_10
Q16A_Essenza_10
Q16A_Garnier_10
Q16A_Garnier_A_D_10
Q16A_Head_Shoulder_10
Q16A_Pantene_10
Q16A_Pantene_A_D_10
Q16A_Sunsilk_10
Q16A_Sunsilk_A_D_10
Q16A_Ultra_Doux_10
Q16A_Fiama_10
Q16A_Chik_10
Q16A_Lux_10
Q16A_Vivel_10
Q16A_Dabur_Vatika_A_D_10
Q16A_Others_10
Q16A_Clinic_All_Clear_11
Q16A_Clinic_Plus_11
Q16A_Dove_11
Q16A_Essenza_11
Q16A_Garnier_11
Q16A_Garnier_A_D_11
Q16A_Head_Shoulder_11
Q16A_Pantene_11
Q16A_Pantene_A_D_11
Q16A_Sunsilk_11
Q16A_Sunsilk_A_D_11
Q16A_Ultra_Doux_11
Q16A_Fiama_11
Q16A_Chik_11
Q16A_Lux_11
Q16A_Vivel_11
Q16A_Dabur_Vatika_A_D_11
Q16A_Others_11
Q16A_Clinic_All_Clear_12
Q16A_Clinic_Plus_12
Q16A_Dove_12
Q16A_Essenza_12
Q16A_Garnier_12
Q16A_Garnier_A_D_12
Q16A_Head_Shoulder_12
Q16A_Pantene_12
Q16A_Pantene_A_D_12
Q16A_Sunsilk_12
Q16A_Sunsilk_A_D_12
Q16A_Ultra_Doux_12
Q16A_Fiama_12
Q16A_Chik_12
Q16A_Lux_12
Q16A_Vivel_12
Q16A_Dabur_Vatika_A_D_12
Q16A_Others_12
Q16A_Clinic_All_Clear_13
Q16A_Clinic_Plus_13
Q16A_Dove_13
Q16A_Essenza_13
Q16A_Garnier_13
Q16A_Garnier_A_D_13
Q16A_Head_Shoulder_13
Q16A_Pantene_13
Q16A_Pantene_A_D_13
Q16A_Sunsilk_13
Q16A_Sunsilk_A_D_13
Q16A_Ultra_Doux_13
Q16A_Fiama_13
Q16A_Chik_13
Q16A_Lux_13
Q16A_Vivel_13
Q16A_Dabur_Vatika_A_D_13
Q16A_Others_13
Q16A_Clinic_All_Clear_14
Q16A_Clinic_Plus_14
Q16A_Dove_14
Q16A_Essenza_14
Q16A_Garnier_14
Q16A_Garnier_A_D_14
Q16A_Head_Shoulder_14
Q16A_Pantene_14
Q16A_Pantene_A_D_14
Q16A_Sunsilk_14
Q16A_Sunsilk_A_D_14
Q16A_Ultra_Doux_14
Q16A_Fiama_14
Q16A_Chik_14
Q16A_Lux_14
Q16A_Vivel_14
Q16A_Dabur_Vatika_A_D_14
Q16A_Others_14
Q16A_Clinic_All_Clear_15
Q16A_Clinic_Plus_15
Q16A_Dove_15
Q16A_Essenza_15
Q16A_Garnier_15
Q16A_Garnier_A_D_15
Q16A_Head_Shoulder_15
Q16A_Pantene_15
Q16A_Pantene_A_D_15
Q16A_Sunsilk_15
Q16A_Sunsilk_A_D_15
Q16A_Ultra_Doux_15
Q16A_Fiama_15
Q16A_Chik_15
Q16A_Lux_15
Q16A_Vivel_15
Q16A_Dabur_Vatika_A_D_15
Q16A_Others_15
Q16A_Clinic_All_Clear_16
Q16A_Clinic_Plus_16
Q16A_Dove_16
Q16A_Essenza_16
Q16A_Garnier_16
Q16A_Garnier_A_D_16
Q16A_Head_Shoulder_16
Q16A_Pantene_16
Q16A_Pantene_A_D_16
Q16A_Sunsilk_16
Q16A_Sunsilk_A_D_16
Q16A_Ultra_Doux_16
Q16A_Fiama_16
Q16A_Chik_16
Q16A_Lux_16
Q16A_Vivel_16
Q16A_Dabur_Vatika_A_D_16
Q16A_Others_16
Q16A_Ultra_Doux_16
Q16B_Clinic_All_Clear_1
Q16B_Clinic_Plus_1
Q16B_Dove_1
Q16B_Essenza_1
Q16B_Garnier_1
Q16B_Garnier_A_D_1
Q16B_Head_Shoulder_1
Q16B_Pantene_1
Q16B_Pantene_A_D_1
Q16B_Sunsilk_1
Q16B_Sunsilk_A_D_1
Q16B_Ultra_Doux_1
Q16B_Fiama_1
Q16B_Chik_1
Q16B_Lux_1
Q16B_Vivel_1
Q16B_Dabur_Vatika_A_D_1
Q16B_Others_1
Q16B_Clinic_All_Clear_2
Q16B_Clinic_Plus_2
Q16B_Dove_2
Q16B_Essenza_2
Q16B_Garnier_2
Q16B_Garnier_A_D_2
Q16B_Head_Shoulder_2
Q16B_Pantene_2
Q16B_Pantene_A_D_2
Q16B_Sunsilk_2
Q16B_Sunsilk_A_D_2
Q16B_Ultra_Doux_2
Q16B_Fiama_2
Q16B_Chik_2
Q16B_Lux_2
Q16B_Vivel_2
Q16B_Dabur_Vatika_A_D_2
Q16B_Others_2
Q16B_Clinic_All_Clear_3
Q16B_Clinic_Plus_3
Q16B_Dove_3
Q16B_Essenza_3
Q16B_Garnier_3
Q16B_Garnier_A_D_3
Q16B_Head_Shoulder_3
Q16B_Pantene_3
Q16B_Pantene_A_D_3
Q16B_Sunsilk_3
Q16B_Sunsilk_A_D_3
Q16B_Ultra_Doux_3
Q16B_Fiama_3
Q16B_Chik_3
Q16B_Lux_3
Q16B_Vivel_3
Q16B_Dabur_Vatika_A_D_3
Q16B_Others_3
Q16B_Clinic_All_Clear_4
Q16B_Clinic_Plus_4
Q16B_Dove_4
Q16B_Essenza_4
Q16B_Garnier_4
Q16B_Garnier_A_D_4
Q16B_Head_Shoulder_4
Q16B_Pantene_4
Q16B_Pantene_A_D_4
Q16B_Sunsilk_4
Q16B_Sunsilk_A_D_4
Q16B_Ultra_Doux_4
Q16B_Fiama_4
Q16B_Chik_4
Q16B_Lux_4
Q16B_Vivel_4
Q16B_Dabur_Vatika_A_D_4
Q16B_Others_4
Q16B_Clinic_All_Clear_5
Q16B_Clinic_Plus_5
Q16B_Dove_5
Q16B_Essenza_5
Q16B_Garnier_5
Q16B_Garnier_A_D_5
Q16B_Head_Shoulder_5
Q16B_Pantene_5
Q16B_Pantene_A_D_5
Q16B_Sunsilk_5
Q16B_Sunsilk_A_D_5
Q16B_Ultra_Doux_5
Q16B_Fiama_5
Q16B_Chik_5
Q16B_Lux_5
Q16B_Vivel_5
Q16B_Dabur_Vatika_A_D_5
Q16B_Others_5
Q16B_Clinic_All_Clear_6
Q16B_Clinic_Plus_6
Q16B_Dove_6
Q16B_Essenza_6
Q16B_Garnier_6
Q16B_Garnier_A_D_6
Q16B_Head_Shoulder_6
Q16B_Pantene_6
Q16B_Pantene_A_D_6
Q16B_Sunsilk_6
Q16B_Sunsilk_A_D_6
Q16B_Ultra_Doux_6
Q16B_Fiama_6
Q16B_Chik_6
Q16B_Lux_6
Q16B_Vivel_6
Q16B_Dabur_Vatika_A_D_6
Q16B_Others_6
Q16B_Clinic_All_Clear_7
Q16B_Clinic_Plus_7
Q16B_Dove_7
Q16B_Essenza_7
Q16B_Garnier_7
Q16B_Garnier_A_D_7
Q16B_Head_Shoulder_7
Q16B_Pantene_7
Q16B_Pantene_A_D_7
Q16B_Sunsilk_7
Q16B_Sunsilk_A_D_7
Q16B_Ultra_Doux_7
Q16B_Fiama_7
Q16B_Chik_7
Q16B_Lux_7
Q16B_Vivel_7
Q16B_Dabur_Vatika_A_D_7
Q16B_Others_7
Q16B_Clinic_All_Clear_8
Q16B_Clinic_Plus_8
Q16B_Dove_8
Q16B_Essenza_8
Q16B_Garnier_8
Q16B_Garnier_A_D_8
Q16B_Head_Shoulder_8
Q16B_Pantene_8
Q16B_Pantene_A_D_8
Q16B_Sunsilk_8
Q16B_Sunsilk_A_D_8
Q16B_Ultra_Doux_8
Q16B_Fiama_8
Q16B_Chik_8
Q16B_Lux_8
Q16B_Vivel_8
Q16B_Dabur_Vatika_A_D_8
Q16B_Others_8
Q16B_Clinic_All_Clear_9
Q16B_Clinic_Plus_9
Q16B_Dove_9
Q16B_Essenza_9
Q16B_Garnier_9
Q16B_Garnier_A_D_9
Q16B_Head_Shoulder_9
Q16B_Pantene_9
Q16B_Pantene_A_D_9
Q16B_Sunsilk_9
Q16B_Sunsilk_A_D_9
Q16B_Ultra_Doux_9
Q16B_Fiama_9
Q16B_Chik_9
Q16B_Lux_9
Q16B_Vivel_9
Q16B_Dabur_Vatika_A_D_9
Q16B_Others_9
Q16B_Clinic_All_Clear_10
Q16B_Clinic_Plus_10
Q16B_Dove_10
Q16B_Essenza_10
Q16B_Garnier_10
Q16B_Garnier_A_D_10
Q16B_Head_Shoulder_10
Q16B_Pantene_10
Q16B_Pantene_A_D_10
Q16B_Sunsilk_10
Q16B_Sunsilk_A_D_10
Q16B_Ultra_Doux_10
Q16B_Fiama_10
Q16B_Chik_10
Q16B_Lux_10
Q16B_Vivel_10
Q16B_Dabur_Vatika_A_D_10
Q16B_Others_10
Q16B_Clinic_All_Clear_11
Q16B_Clinic_Plus_11
Q16B_Dove_11
Q16B_Essenza_11
Q16B_Garnier_11
Q16B_Garnier_A_D_11
Q16B_Head_Shoulder_11
Q16B_Pantene_11
Q16B_Pantene_A_D_11
Q16B_Sunsilk_11
Q16B_Sunsilk_A_D_11
Q16B_Ultra_Doux_11
Q16B_Fiama_11
Q16B_Chik_11
Q16B_Lux_11
Q16B_Vivel_11
Q16B_Dabur_Vatika_A_D_11
Q16B_Others_11
Q16B_Clinic_All_Clear_12
Q16B_Clinic_Plus_12
Q16B_Dove_12
Q16B_Essenza_12
Q16B_Garnier_12
Q16B_Garnier_A_D_12
Q16B_Head_Shoulder_12
Q16B_Pantene_12
Q16B_Pantene_A_D_12
Q16B_Sunsilk_12
Q16B_Sunsilk_A_D_12
Q16B_Ultra_Doux_12
Q16B_Fiama_12
Q16B_Chik_12
Q16B_Lux_12
Q16B_Vivel_12
Q16B_Dabur_Vatika_A_D_12
Q16B_Others_12
ITC_int_std
ITC_premium
ITC_trust
ITC_relevant
ITC_quality
HUL_int_std
HUL_premium
HUL_trust
HUL_relevant
HUL_quality
Q17b1_vivel_1
Q17b1_vivel_2
Q17b1_vivel_3
Q17b1_vivel_4
Q17b1_vivel_5
Q17b1_vivel_6
Q17b1_vivel_7
Q17b1_Fiama_1
Q17b1_Fiama_2
Q17b1_Fiama_3
Q17b1_Fiama_4
Q17b1_Fiama_5
Q17b1_Fiama_6
Q17b1_Fiama_7
Q5C_Spon_Chik
Q5C_Spon_Clinic_All_Clear
Q5C_Spon_Clinic_Plus
Q5C_Spon_Dabur_Vatika_A_D
Q5C_Spon_Dove
Q5C_Spon_Essenza
Q5C_Spon_Fiama
Q5C_Spon_Garnier
Q5C_Spon_Garnier_A_D
Q5C_Spon_Head_Shoulder
Q5C_Spon_Lux
Q5C_Spon_Others
Q5C_Spon_Pantene
Q5C_Spon_Pantene_A_D
Q5C_Spon_Sunsilk
Q5C_Spon_Sunsilk_A_D
Q5C_Spon_Ultra_Doux
Q5C_Spon_Vivel
Q5C_TOM_Chik
Q5C_TOM_Clinic_All_Clear
Q5C_TOM_Clinic_Plus
Q5C_TOM_Dabur_Vatika_A_D
Q5C_TOM_Dove
Q5C_TOM_Essenza
Q5C_TOM_Fiama
Q5C_TOM_Garnier
Q5C_TOM_Garnier_A_D
Q5C_TOM_Head_Shoulder
Q5C_TOM_Lux
Q5C_TOM_Others
Q5C_TOM_Pantene
Q5C_TOM_Pantene_A_D
Q5C_TOM_Sunsilk
Q5C_TOM_Sunsilk_A_D
Q5C_TOM_Ultra_Doux
Q5C_TOM_Vivel
flag;
output out=v1.Shampoos_rollup1 sum=
Q2_HEARD_Clinic_All_Clear
Q2_HEARD_Clinic_Plus
Q2_HEARD_Dove
Q2_HEARD_Essenza
Q2_HEARD_Garnier
Q2_HEARD_Garnier_A_D
Q2_HEARD_Head_Shoulder
Q2_HEARD_Pantene
Q2_HEARD_Pantene_A_D
Q2_HEARD_Sunsilk
Q2_HEARD_Sunsilk_A_D
Q2_HEARD_Ultra_Doux
Q2_HEARD_Fiama
Q2_HEARD_Chik
Q2_HEARD_Lux
Q2_HEARD_Vivel
Q2_HEARD_Dabur_Vatika_A_D
Q2_USED_Clinic_All_Clear
Q2_USED_Clinic_Plus
Q2_USED_Dove
Q2_USED_Essenza
Q2_USED_Garnier
Q2_USED_Garnier_A_D
Q2_USED_Head_Shoulder
Q2_USED_Pantene
Q2_USED_Pantene_A_D
Q2_USED_Sunsilk
Q2_USED_Sunsilk_A_D
Q2_USED_Ultra_Doux
Q2_USED_Fiama
Q2_USED_Chik
Q2_USED_Lux
Q2_USED_Vivel
Q2_USED_Dabur_Vatika_A_D
Q2_MOST_Clinic_All_Clear
Q2_MOST_Clinic_Plus
Q2_MOST_Dove
Q2_MOST_Essenza
Q2_MOST_Garnier
Q2_MOST_Garnier_A_D
Q2_MOST_Head_Shoulder
Q2_MOST_Pantene
Q2_MOST_Pantene_A_D
Q2_MOST_Sunsilk
Q2_MOST_Sunsilk_A_D
Q2_MOST_Ultra_Doux
Q2_MOST_Fiama
Q2_MOST_Chik
Q2_MOST_Lux
Q2_MOST_Vivel
Q2_MOST_Dabur_Vatika_A_D
Q14_Clinic_All_Clear_TB
Q14_Clinic_Plus_TB
Q14_Dove_TB
Q14_Essenza_TB
Q14_Garnier_TB
Q14_Head_Shoulder_TB
Q14_Pantene_TB
Q14_Sunsilk_TB
Q14_Ultra_Doux_TB
Q14_Fiama_TB
Q14_Chik_TB
Q14_Lux_TB
Q14_Vivel_TB
Q17_A_Clinic_All_Clear
Q17_A_Clinic_Plus
Q17_A_Dove
Q17_A_Essenza
Q17_A_Garnier
Q17_A_Garnier_A_D
Q17_A_Head_Shoulder
Q17_A_Pantene
Q17_A_Pantene_A_D
Q17_A_Sunsilk
Q17_A_Sunsilk_A_D
Q17_A_Ultra_Doux
Q17_A_Fiama
Q17_A_Chik
Q17_A_Lux
Q17_A_Vivel
Q17_A_Dabur_Vatika_A_D
Q17b_Clinic_All_Clear_1
Q17b_Clinic_Plus_1
Q17b_Dove_1
Q17b_Essenza_1
Q17b_Garnier_1
Q17b_Garnier_A_D_1
Q17b_Head_Shoulder_1
Q17b_Pantene_1
Q17b_Pantene_A_D_1
Q17b_Sunsilk_1
Q17b_Sunsilk_A_D_1
Q17b_Ultra_Doux_1
Q17b_Fiama_1
Q17b_Chik_1
Q17b_Lux_1
Q17b_Vivel_1
Q17b_Dabur_Vatika_A_D_1
Q17b_Clinic_All_Clear_2
Q17b_Clinic_Plus_2
Q17b_Dove_2
Q17b_Essenza_2
Q17b_Garnier_2
Q17b_Garnier_A_D_2
Q17b_Head_Shoulder_2
Q17b_Pantene_2
Q17b_Pantene_A_D_2
Q17b_Sunsilk_2
Q17b_Sunsilk_A_D_2
Q17b_Ultra_Doux_2
Q17b_Fiama_2
Q17b_Chik_2
Q17b_Lux_2
Q17b_Vivel_2
Q17b_Dabur_Vatika_A_D_2
Q17b_Clinic_All_Clear_3
Q17b_Clinic_Plus_3
Q17b_Dove_3
Q17b_Essenza_3
Q17b_Garnier_3
Q17b_Garnier_A_D_3
Q17b_Head_Shoulder_3
Q17b_Pantene_3
Q17b_Pantene_A_D_3
Q17b_Sunsilk_3
Q17b_Sunsilk_A_D_3
Q17b_Ultra_Doux_3
Q17b_Fiama_3
Q17b_Chik_3
Q17b_Lux_3
Q17b_Vivel_3
Q17b_Dabur_Vatika_A_D_3
Q17b_Clinic_All_Clear_4
Q17b_Clinic_Plus_4
Q17b_Dove_4
Q17b_Essenza_4
Q17b_Garnier_4
Q17b_Garnier_A_D_4
Q17b_Head_Shoulder_4
Q17b_Pantene_4
Q17b_Pantene_A_D_4
Q17b_Sunsilk_4
Q17b_Sunsilk_A_D_4
Q17b_Ultra_Doux_4
Q17b_Fiama_4
Q17b_Chik_4
Q17b_Lux_4
Q17b_Vivel_4
Q17b_Dabur_Vatika_A_D_4
Q17b_Clinic_All_Clear_5
Q17b_Clinic_Plus_5
Q17b_Dove_5
Q17b_Essenza_5
Q17b_Garnier_5
Q17b_Garnier_A_D_5
Q17b_Head_Shoulder_5
Q17b_Pantene_5
Q17b_Pantene_A_D_5
Q17b_Sunsilk_5
Q17b_Sunsilk_A_D_5
Q17b_Ultra_Doux_5
Q17b_Fiama_5
Q17b_Chik_5
Q17b_Lux_5
Q17b_Vivel_5
Q17b_Dabur_Vatika_A_D_5
Q17b_Clinic_All_Clear_6
Q17b_Clinic_Plus_6
Q17b_Dove_6
Q17b_Essenza_6
Q17b_Garnier_6
Q17b_Garnier_A_D_6
Q17b_Head_Shoulder_6
Q17b_Pantene_6
Q17b_Pantene_A_D_6
Q17b_Sunsilk_6
Q17b_Sunsilk_A_D_6
Q17b_Ultra_Doux_6
Q17b_Fiama_6
Q17b_Chik_6
Q17b_Lux_6
Q17b_Vivel_6
Q17b_Dabur_Vatika_A_D_6
Q17b_Clinic_All_Clear_7
Q17b_Clinic_Plus_7
Q17b_Dove_7
Q17b_Essenza_7
Q17b_Garnier_7
Q17b_Garnier_A_D_7
Q17b_Head_Shoulder_7
Q17b_Pantene_7
Q17b_Pantene_A_D_7
Q17b_Sunsilk_7
Q17b_Sunsilk_A_D_7
Q17b_Ultra_Doux_7
Q17b_Fiama_7
Q17b_Chik_7
Q17b_Lux_7
Q17b_Vivel_7
Q17b_Dabur_Vatika_A_D_7
Q17b_Clinic_All_Clear_8
Q17b_Clinic_Plus_8
Q17b_Dove_8
Q17b_Essenza_8
Q17b_Garnier_8
Q17b_Garnier_A_D_8
Q17b_Head_Shoulder_8
Q17b_Pantene_8
Q17b_Pantene_A_D_8
Q17b_Sunsilk_8
Q17b_Sunsilk_A_D_8
Q17b_Ultra_Doux_8
Q17b_Fiama_8
Q17b_Chik_8
Q17b_Lux_8
Q17b_Vivel_8
Q17b_Dabur_Vatika_A_D_8
Q16A_Clinic_All_Clear_1
Q16A_Clinic_Plus_1
Q16A_Dove_1
Q16A_Essenza_1
Q16A_Garnier_1
Q16A_Garnier_A_D_1
Q16A_Head_Shoulder_1
Q16A_Pantene_1
Q16A_Pantene_A_D_1
Q16A_Sunsilk_1
Q16A_Sunsilk_A_D_1
Q16A_Ultra_Doux_1
Q16A_Fiama_1
Q16A_Chik_1
Q16A_Lux_1
Q16A_Vivel_1
Q16A_Dabur_Vatika_A_D_1
Q16A_Others_1
Q16A_Clinic_All_Clear_2
Q16A_Clinic_Plus_2
Q16A_Dove_2
Q16A_Essenza_2
Q16A_Garnier_2
Q16A_Garnier_A_D_2
Q16A_Head_Shoulder_2
Q16A_Pantene_2
Q16A_Pantene_A_D_2
Q16A_Sunsilk_2
Q16A_Sunsilk_A_D_2
Q16A_Ultra_Doux_2
Q16A_Fiama_2
Q16A_Chik_2
Q16A_Lux_2
Q16A_Vivel_2
Q16A_Dabur_Vatika_A_D_2
Q16A_Others_2
Q16A_Clinic_All_Clear_3
Q16A_Clinic_Plus_3
Q16A_Dove_3
Q16A_Essenza_3
Q16A_Garnier_3
Q16A_Garnier_A_D_3
Q16A_Head_Shoulder_3
Q16A_Pantene_3
Q16A_Pantene_A_D_3
Q16A_Sunsilk_3
Q16A_Sunsilk_A_D_3
Q16A_Ultra_Doux_3
Q16A_Fiama_3
Q16A_Chik_3
Q16A_Lux_3
Q16A_Vivel_3
Q16A_Dabur_Vatika_A_D_3
Q16A_Others_3
Q16A_Clinic_All_Clear_4
Q16A_Clinic_Plus_4
Q16A_Dove_4
Q16A_Essenza_4
Q16A_Garnier_4
Q16A_Garnier_A_D_4
Q16A_Head_Shoulder_4
Q16A_Pantene_4
Q16A_Pantene_A_D_4
Q16A_Sunsilk_4
Q16A_Sunsilk_A_D_4
Q16A_Ultra_Doux_4
Q16A_Fiama_4
Q16A_Chik_4
Q16A_Lux_4
Q16A_Vivel_4
Q16A_Dabur_Vatika_A_D_4
Q16A_Others_4
Q16A_Clinic_All_Clear_5
Q16A_Clinic_Plus_5
Q16A_Dove_5
Q16A_Essenza_5
Q16A_Garnier_5
Q16A_Garnier_A_D_5
Q16A_Head_Shoulder_5
Q16A_Pantene_5
Q16A_Pantene_A_D_5
Q16A_Sunsilk_5
Q16A_Sunsilk_A_D_5
Q16A_Ultra_Doux_5
Q16A_Fiama_5
Q16A_Chik_5
Q16A_Lux_5
Q16A_Vivel_5
Q16A_Dabur_Vatika_A_D_5
Q16A_Others_5
Q16A_Clinic_All_Clear_6
Q16A_Clinic_Plus_6
Q16A_Dove_6
Q16A_Essenza_6
Q16A_Garnier_6
Q16A_Garnier_A_D_6
Q16A_Head_Shoulder_6
Q16A_Pantene_6
Q16A_Pantene_A_D_6
Q16A_Sunsilk_6
Q16A_Sunsilk_A_D_6
Q16A_Ultra_Doux_6
Q16A_Fiama_6
Q16A_Chik_6
Q16A_Lux_6
Q16A_Vivel_6
Q16A_Dabur_Vatika_A_D_6
Q16A_Others_6
Q16A_Clinic_All_Clear_7
Q16A_Clinic_Plus_7
Q16A_Dove_7
Q16A_Essenza_7
Q16A_Garnier_7
Q16A_Garnier_A_D_7
Q16A_Head_Shoulder_7
Q16A_Pantene_7
Q16A_Pantene_A_D_7
Q16A_Sunsilk_7
Q16A_Sunsilk_A_D_7
Q16A_Ultra_Doux_7
Q16A_Fiama_7
Q16A_Chik_7
Q16A_Lux_7
Q16A_Vivel_7
Q16A_Dabur_Vatika_A_D_7
Q16A_Others_7
Q16A_Clinic_All_Clear_8
Q16A_Clinic_Plus_8
Q16A_Dove_8
Q16A_Essenza_8
Q16A_Garnier_8
Q16A_Garnier_A_D_8
Q16A_Head_Shoulder_8
Q16A_Pantene_8
Q16A_Pantene_A_D_8
Q16A_Sunsilk_8
Q16A_Sunsilk_A_D_8
Q16A_Ultra_Doux_8
Q16A_Fiama_8
Q16A_Chik_8
Q16A_Lux_8
Q16A_Vivel_8
Q16A_Dabur_Vatika_A_D_8
Q16A_Others_8
Q16A_Clinic_All_Clear_9
Q16A_Clinic_Plus_9
Q16A_Dove_9
Q16A_Essenza_9
Q16A_Garnier_9
Q16A_Garnier_A_D_9
Q16A_Head_Shoulder_9
Q16A_Pantene_9
Q16A_Pantene_A_D_9
Q16A_Sunsilk_9
Q16A_Sunsilk_A_D_9
Q16A_Ultra_Doux_9
Q16A_Fiama_9
Q16A_Chik_9
Q16A_Lux_9
Q16A_Vivel_9
Q16A_Dabur_Vatika_A_D_9
Q16A_Others_9
Q16A_Clinic_All_Clear_10
Q16A_Clinic_Plus_10
Q16A_Dove_10
Q16A_Essenza_10
Q16A_Garnier_10
Q16A_Garnier_A_D_10
Q16A_Head_Shoulder_10
Q16A_Pantene_10
Q16A_Pantene_A_D_10
Q16A_Sunsilk_10
Q16A_Sunsilk_A_D_10
Q16A_Ultra_Doux_10
Q16A_Fiama_10
Q16A_Chik_10
Q16A_Lux_10
Q16A_Vivel_10
Q16A_Dabur_Vatika_A_D_10
Q16A_Others_10
Q16A_Clinic_All_Clear_11
Q16A_Clinic_Plus_11
Q16A_Dove_11
Q16A_Essenza_11
Q16A_Garnier_11
Q16A_Garnier_A_D_11
Q16A_Head_Shoulder_11
Q16A_Pantene_11
Q16A_Pantene_A_D_11
Q16A_Sunsilk_11
Q16A_Sunsilk_A_D_11
Q16A_Ultra_Doux_11
Q16A_Fiama_11
Q16A_Chik_11
Q16A_Lux_11
Q16A_Vivel_11
Q16A_Dabur_Vatika_A_D_11
Q16A_Others_11
Q16A_Clinic_All_Clear_12
Q16A_Clinic_Plus_12
Q16A_Dove_12
Q16A_Essenza_12
Q16A_Garnier_12
Q16A_Garnier_A_D_12
Q16A_Head_Shoulder_12
Q16A_Pantene_12
Q16A_Pantene_A_D_12
Q16A_Sunsilk_12
Q16A_Sunsilk_A_D_12
Q16A_Ultra_Doux_12
Q16A_Fiama_12
Q16A_Chik_12
Q16A_Lux_12
Q16A_Vivel_12
Q16A_Dabur_Vatika_A_D_12
Q16A_Others_12
Q16A_Clinic_All_Clear_13
Q16A_Clinic_Plus_13
Q16A_Dove_13
Q16A_Essenza_13
Q16A_Garnier_13
Q16A_Garnier_A_D_13
Q16A_Head_Shoulder_13
Q16A_Pantene_13
Q16A_Pantene_A_D_13
Q16A_Sunsilk_13
Q16A_Sunsilk_A_D_13
Q16A_Ultra_Doux_13
Q16A_Fiama_13
Q16A_Chik_13
Q16A_Lux_13
Q16A_Vivel_13
Q16A_Dabur_Vatika_A_D_13
Q16A_Others_13
Q16A_Clinic_All_Clear_14
Q16A_Clinic_Plus_14
Q16A_Dove_14
Q16A_Essenza_14
Q16A_Garnier_14
Q16A_Garnier_A_D_14
Q16A_Head_Shoulder_14
Q16A_Pantene_14
Q16A_Pantene_A_D_14
Q16A_Sunsilk_14
Q16A_Sunsilk_A_D_14
Q16A_Ultra_Doux_14
Q16A_Fiama_14
Q16A_Chik_14
Q16A_Lux_14
Q16A_Vivel_14
Q16A_Dabur_Vatika_A_D_14
Q16A_Others_14
Q16A_Clinic_All_Clear_15
Q16A_Clinic_Plus_15
Q16A_Dove_15
Q16A_Essenza_15
Q16A_Garnier_15
Q16A_Garnier_A_D_15
Q16A_Head_Shoulder_15
Q16A_Pantene_15
Q16A_Pantene_A_D_15
Q16A_Sunsilk_15
Q16A_Sunsilk_A_D_15
Q16A_Ultra_Doux_15
Q16A_Fiama_15
Q16A_Chik_15
Q16A_Lux_15
Q16A_Vivel_15
Q16A_Dabur_Vatika_A_D_15
Q16A_Others_15
Q16A_Dabur_Vatika_A_D_15
Q16A_Others_15
Q16A_Clinic_All_Clear_16
Q16A_Clinic_Plus_16
Q16A_Dove_16
Q16A_Essenza_16
Q16A_Garnier_16
Q16A_Garnier_A_D_16
Q16A_Head_Shoulder_16
Q16A_Pantene_16
Q16A_Pantene_A_D_16
Q16A_Sunsilk_16
Q16A_Sunsilk_A_D_16
Q16A_Ultra_Doux_16
Q16A_Fiama_16
Q16A_Chik_16
Q16A_Lux_16
Q16A_Vivel_16
Q16A_Dabur_Vatika_A_D_16
Q16A_Others_16
Q16A_Ultra_Doux_16
Q16B_Clinic_All_Clear_1
Q16B_Clinic_Plus_1
Q16B_Dove_1
Q16B_Essenza_1
Q16B_Garnier_1
Q16B_Garnier_A_D_1
Q16B_Head_Shoulder_1
Q16B_Pantene_1
Q16B_Pantene_A_D_1
Q16B_Sunsilk_1
Q16B_Sunsilk_A_D_1
Q16B_Ultra_Doux_1
Q16B_Fiama_1
Q16B_Chik_1
Q16B_Lux_1
Q16B_Vivel_1
Q16B_Dabur_Vatika_A_D_1
Q16B_Others_1
Q16B_Clinic_All_Clear_2
Q16B_Clinic_Plus_2
Q16B_Dove_2
Q16B_Essenza_2
Q16B_Garnier_2
Q16B_Garnier_A_D_2
Q16B_Head_Shoulder_2
Q16B_Pantene_2
Q16B_Pantene_A_D_2
Q16B_Sunsilk_2
Q16B_Sunsilk_A_D_2
Q16B_Ultra_Doux_2
Q16B_Fiama_2
Q16B_Chik_2
Q16B_Lux_2
Q16B_Vivel_2
Q16B_Dabur_Vatika_A_D_2
Q16B_Others_2
Q16B_Clinic_All_Clear_3
Q16B_Clinic_Plus_3
Q16B_Dove_3
Q16B_Essenza_3
Q16B_Garnier_3
Q16B_Garnier_A_D_3
Q16B_Head_Shoulder_3
Q16B_Pantene_3
Q16B_Pantene_A_D_3
Q16B_Sunsilk_3
Q16B_Sunsilk_A_D_3
Q16B_Ultra_Doux_3
Q16B_Fiama_3
Q16B_Chik_3
Q16B_Lux_3
Q16B_Vivel_3
Q16B_Dabur_Vatika_A_D_3
Q16B_Others_3
Q16B_Clinic_All_Clear_4
Q16B_Clinic_Plus_4
Q16B_Dove_4
Q16B_Essenza_4
Q16B_Garnier_4
Q16B_Garnier_A_D_4
Q16B_Head_Shoulder_4
Q16B_Pantene_4
Q16B_Pantene_A_D_4
Q16B_Sunsilk_4
Q16B_Sunsilk_A_D_4
Q16B_Ultra_Doux_4
Q16B_Fiama_4
Q16B_Chik_4
Q16B_Lux_4
Q16B_Vivel_4
Q16B_Dabur_Vatika_A_D_4
Q16B_Others_4
Q16B_Clinic_All_Clear_5
Q16B_Clinic_Plus_5
Q16B_Dove_5
Q16B_Essenza_5
Q16B_Garnier_5
Q16B_Garnier_A_D_5
Q16B_Head_Shoulder_5
Q16B_Pantene_5
Q16B_Pantene_A_D_5
Q16B_Sunsilk_5
Q16B_Sunsilk_A_D_5
Q16B_Ultra_Doux_5
Q16B_Fiama_5
Q16B_Chik_5
Q16B_Lux_5
Q16B_Vivel_5
Q16B_Dabur_Vatika_A_D_5
Q16B_Others_5
Q16B_Clinic_All_Clear_6
Q16B_Clinic_Plus_6
Q16B_Dove_6
Q16B_Essenza_6
Q16B_Garnier_6
Q16B_Garnier_A_D_6
Q16B_Head_Shoulder_6
Q16B_Pantene_6
Q16B_Pantene_A_D_6
Q16B_Sunsilk_6
Q16B_Sunsilk_A_D_6
Q16B_Ultra_Doux_6
Q16B_Fiama_6
Q16B_Chik_6
Q16B_Lux_6
Q16B_Vivel_6
Q16B_Dabur_Vatika_A_D_6
Q16B_Others_6
Q16B_Clinic_All_Clear_7
Q16B_Clinic_Plus_7
Q16B_Dove_7
Q16B_Essenza_7
Q16B_Garnier_7
Q16B_Garnier_A_D_7
Q16B_Head_Shoulder_7
Q16B_Pantene_7
Q16B_Pantene_A_D_7
Q16B_Sunsilk_7
Q16B_Sunsilk_A_D_7
Q16B_Ultra_Doux_7
Q16B_Fiama_7
Q16B_Chik_7
Q16B_Lux_7
Q16B_Vivel_7
Q16B_Dabur_Vatika_A_D_7
Q16B_Others_7
Q16B_Clinic_All_Clear_8
Q16B_Clinic_Plus_8
Q16B_Dove_8
Q16B_Essenza_8
Q16B_Garnier_8
Q16B_Garnier_A_D_8
Q16B_Head_Shoulder_8
Q16B_Pantene_8
Q16B_Pantene_A_D_8
Q16B_Sunsilk_8
Q16B_Sunsilk_A_D_8
Q16B_Ultra_Doux_8
Q16B_Fiama_8
Q16B_Chik_8
Q16B_Lux_8
Q16B_Vivel_8
Q16B_Dabur_Vatika_A_D_8
Q16B_Others_8
Q16B_Clinic_All_Clear_9
Q16B_Clinic_Plus_9
Q16B_Dove_9
Q16B_Essenza_9
Q16B_Garnier_9
Q16B_Garnier_A_D_9
Q16B_Head_Shoulder_9
Q16B_Pantene_9
Q16B_Pantene_A_D_9
Q16B_Sunsilk_9
Q16B_Sunsilk_A_D_9
Q16B_Ultra_Doux_9
Q16B_Fiama_9
Q16B_Chik_9
Q16B_Lux_9
Q16B_Vivel_9
Q16B_Dabur_Vatika_A_D_9
Q16B_Others_9
Q16B_Clinic_All_Clear_10
Q16B_Clinic_Plus_10
Q16B_Dove_10
Q16B_Essenza_10
Q16B_Garnier_10
Q16B_Garnier_A_D_10
Q16B_Head_Shoulder_10
Q16B_Pantene_10
Q16B_Pantene_A_D_10
Q16B_Sunsilk_10
Q16B_Sunsilk_A_D_10
Q16B_Ultra_Doux_10
Q16B_Fiama_10
Q16B_Chik_10
Q16B_Lux_10
Q16B_Vivel_10
Q16B_Dabur_Vatika_A_D_10
Q16B_Others_10
Q16B_Clinic_All_Clear_11
Q16B_Clinic_Plus_11
Q16B_Dove_11
Q16B_Essenza_11
Q16B_Garnier_11
Q16B_Garnier_A_D_11
Q16B_Head_Shoulder_11
Q16B_Pantene_11
Q16B_Pantene_A_D_11
Q16B_Sunsilk_11
Q16B_Sunsilk_A_D_11
Q16B_Ultra_Doux_11
Q16B_Fiama_11
Q16B_Chik_11
Q16B_Lux_11
Q16B_Vivel_11
Q16B_Dabur_Vatika_A_D_11
Q16B_Others_11
Q16B_Clinic_All_Clear_12
Q16B_Clinic_Plus_12
Q16B_Dove_12
Q16B_Essenza_12
Q16B_Garnier_12
Q16B_Garnier_A_D_12
Q16B_Head_Shoulder_12
Q16B_Pantene_12
Q16B_Pantene_A_D_12
Q16B_Sunsilk_12
Q16B_Sunsilk_A_D_12
Q16B_Ultra_Doux_12
Q16B_Fiama_12
Q16B_Chik_12
Q16B_Lux_12
Q16B_Vivel_12
Q16B_Dabur_Vatika_A_D_12
Q16B_Others_12
ITC_int_std
ITC_premium
ITC_trust
ITC_relevant
ITC_quality
HUL_int_std
HUL_premium
HUL_trust
HUL_relevant
HUL_quality
Q17b1_vivel_1
Q17b1_vivel_2
Q17b1_vivel_3
Q17b1_vivel_4
Q17b1_vivel_5
Q17b1_vivel_6
Q17b1_vivel_7
Q17b1_Fiama_1
Q17b1_Fiama_2
Q17b1_Fiama_3
Q17b1_Fiama_4
Q17b1_Fiama_5
Q17b1_Fiama_6
Q17b1_Fiama_7
Q5C_Spon_Chik
Q5C_Spon_Clinic_All_Clear
Q5C_Spon_Clinic_Plus
Q5C_Spon_Dabur_Vatika_A_D
Q5C_Spon_Dove
Q5C_Spon_Essenza
Q5C_Spon_Fiama
Q5C_Spon_Garnier
Q5C_Spon_Garnier_A_D
Q5C_Spon_Head_Shoulder
Q5C_Spon_Lux
Q5C_Spon_Others
Q5C_Spon_Pantene
Q5C_Spon_Pantene_A_D
Q5C_Spon_Sunsilk
Q5C_Spon_Sunsilk_A_D
Q5C_Spon_Ultra_Doux
Q5C_Spon_Vivel
Q5C_TOM_Chik
Q5C_TOM_Clinic_All_Clear
Q5C_TOM_Clinic_Plus
Q5C_TOM_Dabur_Vatika_A_D
Q5C_TOM_Dove
Q5C_TOM_Essenza
Q5C_TOM_Fiama
Q5C_TOM_Garnier
Q5C_TOM_Garnier_A_D
Q5C_TOM_Head_Shoulder
Q5C_TOM_Lux
Q5C_TOM_Others
Q5C_TOM_Pantene
Q5C_TOM_Pantene_A_D
Q5C_TOM_Sunsilk
Q5C_TOM_Sunsilk_A_D
Q5C_TOM_Ultra_Doux
Q5C_TOM_Vivel
flag;
run;

data v1.sample_size_info;
set v1.Shampoos_rollup1;
keep CEN
WK_Yryr
WK_Yrwk
_type_
_freq_;
run;

data v1.Shampoos_rollup1;
set v1.Shampoos_rollup1;
drop _type_
_freq_;
run;

/*Chennai Shampoos %s*/
/**/
/*data Shampoos_Chennai_roll1;*/
/*set Shampoos_rollup1;*/
/*if cen=2;*/
/*run;*/

/*data v1.Shampoos_Chennai_roll2;*/
/*set v1.Shampoos_Chennai_roll1;*/
/*if Q2_HEARD_Clinic_All_Clear= . then Q2_HEARD_Clinic_All_Clear =0;*/
/*if Q2_HEARD_Clinic_Plus= . then Q2_HEARD_Clinic_Plus =0;*/
/*if Q2_HEARD_Dove= . then Q2_HEARD_Dove =0;*/
/*if Q2_HEARD_Essenza= . then Q2_HEARD_Essenza =0;*/
/*if Q2_HEARD_Garnier= . then Q2_HEARD_Garnier =0;*/
/*if Q2_HEARD_Garnier_A_D= . then Q2_HEARD_Garnier_A_D =0;*/
/*if Q2_HEARD_Head_Shoulder= . then Q2_HEARD_Head_Shoulder =0;*/
/*if Q2_HEARD_Pantene= . then Q2_HEARD_Pantene =0;*/
/*if Q2_HEARD_Pantene_A_D= . then Q2_HEARD_Pantene_A_D =0;*/
/*if Q2_HEARD_Sunsilk= . then Q2_HEARD_Sunsilk =0;*/
/*if Q2_HEARD_Sunsilk_A_D= . then Q2_HEARD_Sunsilk_A_D =0;*/
/*if Q2_HEARD_Ultra_Doux= . then Q2_HEARD_Ultra_Doux =0;*/
/*if Q2_HEARD_Fiama= . then Q2_HEARD_Fiama =0;*/
/*if Q2_HEARD_Chik= . then Q2_HEARD_Chik =0;*/
/*if Q2_HEARD_Lux= . then Q2_HEARD_Lux =0;*/
/*if Q2_HEARD_Vivel= . then Q2_HEARD_Vivel =0;*/
/*if Q2_HEARD_Dabur_Vatika_A_D= . then Q2_HEARD_Dabur_Vatika_A_D =0;*/
/*if Q2_USED_Clinic_All_Clear= . then Q2_USED_Clinic_All_Clear =0;*/
/*if Q2_USED_Clinic_Plus= . then Q2_USED_Clinic_Plus =0;*/
/*if Q2_USED_Dove= . then Q2_USED_Dove =0;*/
/*if Q2_USED_Essenza= . then Q2_USED_Essenza =0;*/
/*if Q2_USED_Garnier= . then Q2_USED_Garnier =0;*/
/*if Q2_USED_Garnier_A_D= . then Q2_USED_Garnier_A_D =0;*/
/*if Q2_USED_Head_Shoulder= . then Q2_USED_Head_Shoulder =0;*/
/*if Q2_USED_Pantene= . then Q2_USED_Pantene =0;*/
/*if Q2_USED_Pantene_A_D= . then Q2_USED_Pantene_A_D =0;*/
/*if Q2_USED_Sunsilk= . then Q2_USED_Sunsilk =0;*/
/*if Q2_USED_Sunsilk_A_D= . then Q2_USED_Sunsilk_A_D =0;*/
/*if Q2_USED_Ultra_Doux= . then Q2_USED_Ultra_Doux =0;*/
/*if Q2_USED_Fiama= . then Q2_USED_Fiama =0;*/
/*if Q2_USED_Chik= . then Q2_USED_Chik =0;*/
/*if Q2_USED_Lux= . then Q2_USED_Lux =0;*/
/*if Q2_USED_Vivel= . then Q2_USED_Vivel =0;*/
/*if Q2_USED_Dabur_Vatika_A_D= . then Q2_USED_Dabur_Vatika_A_D =0;*/
/*if Q2_MOST_Clinic_All_Clear= . then Q2_MOST_Clinic_All_Clear =0;*/
/*if Q2_MOST_Clinic_Plus= . then Q2_MOST_Clinic_Plus =0;*/
/*if Q2_MOST_Dove= . then Q2_MOST_Dove =0;*/
/*if Q2_MOST_Essenza= . then Q2_MOST_Essenza =0;*/
/*if Q2_MOST_Garnier= . then Q2_MOST_Garnier =0;*/
/*if Q2_MOST_Garnier_A_D= . then Q2_MOST_Garnier_A_D =0;*/
/*if Q2_MOST_Head_Shoulder= . then Q2_MOST_Head_Shoulder =0;*/
/*if Q2_MOST_Pantene= . then Q2_MOST_Pantene =0;*/
/*if Q2_MOST_Pantene_A_D= . then Q2_MOST_Pantene_A_D =0;*/
/*if Q2_MOST_Sunsilk= . then Q2_MOST_Sunsilk =0;*/
/*if Q2_MOST_Sunsilk_A_D= . then Q2_MOST_Sunsilk_A_D =0;*/
/*if Q2_MOST_Ultra_Doux= . then Q2_MOST_Ultra_Doux =0;*/
/*if Q2_MOST_Fiama= . then Q2_MOST_Fiama =0;*/
/*if Q2_MOST_Chik= . then Q2_MOST_Chik =0;*/
/*if Q2_MOST_Lux= . then Q2_MOST_Lux =0;*/
/*if Q2_MOST_Vivel= . then Q2_MOST_Vivel =0;*/
/*if Q2_MOST_Dabur_Vatika_A_D= . then Q2_MOST_Dabur_Vatika_A_D =0;*/
/*if Q14_Clinic_All_Clear_TB= . then Q14_Clinic_All_Clear_TB =0;*/
/*if Q14_Clinic_Plus_TB= . then Q14_Clinic_Plus_TB =0;*/
/*if Q14_Dove_TB= . then Q14_Dove_TB =0;*/
/*if Q14_Essenza_TB= . then Q14_Essenza_TB =0;*/
/*if Q14_Garnier_TB= . then Q14_Garnier_TB =0;*/
/*if Q14_Head_Shoulder_TB= . then Q14_Head_Shoulder_TB =0;*/
/*if Q14_Pantene_TB= . then Q14_Pantene_TB =0;*/
/*if Q14_Sunsilk_TB= . then Q14_Sunsilk_TB =0;*/
/*if Q14_Ultra_Doux_TB= . then Q14_Ultra_Doux_TB =0;*/
/*if Q14_Fiama_TB= . then Q14_Fiama_TB =0;*/
/*if Q14_Chik_TB= . then Q14_Chik_TB =0;*/
/*if Q14_Lux_TB= . then Q14_Lux_TB =0;*/
/*if Q14_Vivel_TB= . then Q14_Vivel_TB =0;*/
/*if Q17_A_Clinic_All_Clear= . then Q17_A_Clinic_All_Clear =0;*/
/*if Q17_A_Clinic_Plus= . then Q17_A_Clinic_Plus =0;*/
/*if Q17_A_Dove= . then Q17_A_Dove =0;*/
/*if Q17_A_Essenza= . then Q17_A_Essenza =0;*/
/*if Q17_A_Garnier= . then Q17_A_Garnier =0;*/
/*if Q17_A_Garnier_A_D= . then Q17_A_Garnier_A_D =0;*/
/*if Q17_A_Head_Shoulder= . then Q17_A_Head_Shoulder =0;*/
/*if Q17_A_Pantene= . then Q17_A_Pantene =0;*/
/*if Q17_A_Pantene_A_D= . then Q17_A_Pantene_A_D =0;*/
/*if Q17_A_Sunsilk= . then Q17_A_Sunsilk =0;*/
/*if Q17_A_Sunsilk_A_D= . then Q17_A_Sunsilk_A_D =0;*/
/*if Q17_A_Ultra_Doux= . then Q17_A_Ultra_Doux =0;*/
/*if Q17_A_Fiama= . then Q17_A_Fiama =0;*/
/*if Q17_A_Chik= . then Q17_A_Chik =0;*/
/*if Q17_A_Lux= . then Q17_A_Lux =0;*/
/*if Q17_A_Vivel= . then Q17_A_Vivel =0;*/
/*if Q17_A_Dabur_Vatika_A_D= . then Q17_A_Dabur_Vatika_A_D =0;*/
/*if Q17b_Clinic_All_Clear_1= . then Q17b_Clinic_All_Clear_1 =0;*/
/*if Q17b_Clinic_Plus_1= . then Q17b_Clinic_Plus_1 =0;*/
/*if Q17b_Dove_1= . then Q17b_Dove_1 =0;*/
/*if Q17b_Essenza_1= . then Q17b_Essenza_1 =0;*/
/*if Q17b_Garnier_1= . then Q17b_Garnier_1 =0;*/
/*if Q17b_Garnier_A_D_1= . then Q17b_Garnier_A_D_1 =0;*/
/*if Q17b_Head_Shoulder_1= . then Q17b_Head_Shoulder_1 =0;*/
/*if Q17b_Pantene_1= . then Q17b_Pantene_1 =0;*/
/*if Q17b_Pantene_A_D_1= . then Q17b_Pantene_A_D_1 =0;*/
/*if Q17b_Sunsilk_1= . then Q17b_Sunsilk_1 =0;*/
/*if Q17b_Sunsilk_A_D_1= . then Q17b_Sunsilk_A_D_1 =0;*/
/*if Q17b_Ultra_Doux_1= . then Q17b_Ultra_Doux_1 =0;*/
/*if Q17b_Fiama_1= . then Q17b_Fiama_1 =0;*/
/*if Q17b_Chik_1= . then Q17b_Chik_1 =0;*/
/*if Q17b_Lux_1= . then Q17b_Lux_1 =0;*/
/*if Q17b_Vivel_1= . then Q17b_Vivel_1 =0;*/
/*if Q17b_Dabur_Vatika_A_D_1= . then Q17b_Dabur_Vatika_A_D_1 =0;*/
/*if Q17b_Clinic_All_Clear_2= . then Q17b_Clinic_All_Clear_2 =0;*/
/*if Q17b_Clinic_Plus_2= . then Q17b_Clinic_Plus_2 =0;*/
/*if Q17b_Dove_2= . then Q17b_Dove_2 =0;*/
/*if Q17b_Essenza_2= . then Q17b_Essenza_2 =0;*/
/*if Q17b_Garnier_2= . then Q17b_Garnier_2 =0;*/
/*if Q17b_Garnier_A_D_2= . then Q17b_Garnier_A_D_2 =0;*/
/*if Q17b_Head_Shoulder_2= . then Q17b_Head_Shoulder_2 =0;*/
/*if Q17b_Pantene_2= . then Q17b_Pantene_2 =0;*/
/*if Q17b_Pantene_A_D_2= . then Q17b_Pantene_A_D_2 =0;*/
/*if Q17b_Sunsilk_2= . then Q17b_Sunsilk_2 =0;*/
/*if Q17b_Sunsilk_A_D_2= . then Q17b_Sunsilk_A_D_2 =0;*/
/*if Q17b_Ultra_Doux_2= . then Q17b_Ultra_Doux_2 =0;*/
/*if Q17b_Fiama_2= . then Q17b_Fiama_2 =0;*/
/*if Q17b_Chik_2= . then Q17b_Chik_2 =0;*/
/*if Q17b_Lux_2= . then Q17b_Lux_2 =0;*/
/*if Q17b_Vivel_2= . then Q17b_Vivel_2 =0;*/
/*if Q17b_Dabur_Vatika_A_D_2= . then Q17b_Dabur_Vatika_A_D_2 =0;*/
/*if Q17b_Clinic_All_Clear_3= . then Q17b_Clinic_All_Clear_3 =0;*/
/*if Q17b_Clinic_Plus_3= . then Q17b_Clinic_Plus_3 =0;*/
/*if Q17b_Dove_3= . then Q17b_Dove_3 =0;*/
/*if Q17b_Essenza_3= . then Q17b_Essenza_3 =0;*/
/*if Q17b_Garnier_3= . then Q17b_Garnier_3 =0;*/
/*if Q17b_Garnier_A_D_3= . then Q17b_Garnier_A_D_3 =0;*/
/*if Q17b_Head_Shoulder_3= . then Q17b_Head_Shoulder_3 =0;*/
/*if Q17b_Pantene_3= . then Q17b_Pantene_3 =0;*/
/*if Q17b_Pantene_A_D_3= . then Q17b_Pantene_A_D_3 =0;*/
/*if Q17b_Sunsilk_3= . then Q17b_Sunsilk_3 =0;*/
/*if Q17b_Sunsilk_A_D_3= . then Q17b_Sunsilk_A_D_3 =0;*/
/*if Q17b_Ultra_Doux_3= . then Q17b_Ultra_Doux_3 =0;*/
/*if Q17b_Fiama_3= . then Q17b_Fiama_3 =0;*/
/*if Q17b_Chik_3= . then Q17b_Chik_3 =0;*/
/*if Q17b_Lux_3= . then Q17b_Lux_3 =0;*/
/*if Q17b_Vivel_3= . then Q17b_Vivel_3 =0;*/
/*if Q17b_Dabur_Vatika_A_D_3= . then Q17b_Dabur_Vatika_A_D_3 =0;*/
/*if Q17b_Clinic_All_Clear_4= . then Q17b_Clinic_All_Clear_4 =0;*/
/*if Q17b_Clinic_Plus_4= . then Q17b_Clinic_Plus_4 =0;*/
/*if Q17b_Dove_4= . then Q17b_Dove_4 =0;*/
/*if Q17b_Essenza_4= . then Q17b_Essenza_4 =0;*/
/*if Q17b_Garnier_4= . then Q17b_Garnier_4 =0;*/
/*if Q17b_Garnier_A_D_4= . then Q17b_Garnier_A_D_4 =0;*/
/*if Q17b_Head_Shoulder_4= . then Q17b_Head_Shoulder_4 =0;*/
/*if Q17b_Pantene_4= . then Q17b_Pantene_4 =0;*/
/*if Q17b_Pantene_A_D_4= . then Q17b_Pantene_A_D_4 =0;*/
/*if Q17b_Sunsilk_4= . then Q17b_Sunsilk_4 =0;*/
/*if Q17b_Sunsilk_A_D_4= . then Q17b_Sunsilk_A_D_4 =0;*/
/*if Q17b_Ultra_Doux_4= . then Q17b_Ultra_Doux_4 =0;*/
/*if Q17b_Fiama_4= . then Q17b_Fiama_4 =0;*/
/*if Q17b_Chik_4= . then Q17b_Chik_4 =0;*/
/*if Q17b_Lux_4= . then Q17b_Lux_4 =0;*/
/*if Q17b_Vivel_4= . then Q17b_Vivel_4 =0;*/
/*if Q17b_Dabur_Vatika_A_D_4= . then Q17b_Dabur_Vatika_A_D_4 =0;*/
/*if Q17b_Clinic_All_Clear_5= . then Q17b_Clinic_All_Clear_5 =0;*/
/*if Q17b_Clinic_Plus_5= . then Q17b_Clinic_Plus_5 =0;*/
/*if Q17b_Dove_5= . then Q17b_Dove_5 =0;*/
/*if Q17b_Essenza_5= . then Q17b_Essenza_5 =0;*/
/*if Q17b_Garnier_5= . then Q17b_Garnier_5 =0;*/
/*if Q17b_Garnier_A_D_5= . then Q17b_Garnier_A_D_5 =0;*/
/*if Q17b_Head_Shoulder_5= . then Q17b_Head_Shoulder_5 =0;*/
/*if Q17b_Pantene_5= . then Q17b_Pantene_5 =0;*/
/*if Q17b_Pantene_A_D_5= . then Q17b_Pantene_A_D_5 =0;*/
/*if Q17b_Sunsilk_5= . then Q17b_Sunsilk_5 =0;*/
/*if Q17b_Sunsilk_A_D_5= . then Q17b_Sunsilk_A_D_5 =0;*/
/*if Q17b_Ultra_Doux_5= . then Q17b_Ultra_Doux_5 =0;*/
/*if Q17b_Fiama_5= . then Q17b_Fiama_5 =0;*/
/*if Q17b_Chik_5= . then Q17b_Chik_5 =0;*/
/*if Q17b_Lux_5= . then Q17b_Lux_5 =0;*/
/*if Q17b_Vivel_5= . then Q17b_Vivel_5 =0;*/
/*if Q17b_Dabur_Vatika_A_D_5= . then Q17b_Dabur_Vatika_A_D_5 =0;*/
/*if Q17b_Clinic_All_Clear_6= . then Q17b_Clinic_All_Clear_6 =0;*/
/*if Q17b_Clinic_Plus_6= . then Q17b_Clinic_Plus_6 =0;*/
/*if Q17b_Dove_6= . then Q17b_Dove_6 =0;*/
/*if Q17b_Essenza_6= . then Q17b_Essenza_6 =0;*/
/*if Q17b_Garnier_6= . then Q17b_Garnier_6 =0;*/
/*if Q17b_Garnier_A_D_6= . then Q17b_Garnier_A_D_6 =0;*/
/*if Q17b_Head_Shoulder_6= . then Q17b_Head_Shoulder_6 =0;*/
/*if Q17b_Pantene_6= . then Q17b_Pantene_6 =0;*/
/*if Q17b_Pantene_A_D_6= . then Q17b_Pantene_A_D_6 =0;*/
/*if Q17b_Sunsilk_6= . then Q17b_Sunsilk_6 =0;*/
/*if Q17b_Sunsilk_A_D_6= . then Q17b_Sunsilk_A_D_6 =0;*/
/*if Q17b_Ultra_Doux_6= . then Q17b_Ultra_Doux_6 =0;*/
/*if Q17b_Fiama_6= . then Q17b_Fiama_6 =0;*/
/*if Q17b_Chik_6= . then Q17b_Chik_6 =0;*/
/*if Q17b_Lux_6= . then Q17b_Lux_6 =0;*/
/*if Q17b_Vivel_6= . then Q17b_Vivel_6 =0;*/
/*if Q17b_Dabur_Vatika_A_D_6= . then Q17b_Dabur_Vatika_A_D_6 =0;*/
/*if Q17b_Clinic_All_Clear_7= . then Q17b_Clinic_All_Clear_7 =0;*/
/*if Q17b_Clinic_Plus_7= . then Q17b_Clinic_Plus_7 =0;*/
/*if Q17b_Dove_7= . then Q17b_Dove_7 =0;*/
/*if Q17b_Essenza_7= . then Q17b_Essenza_7 =0;*/
/*if Q17b_Garnier_7= . then Q17b_Garnier_7 =0;*/
/*if Q17b_Garnier_A_D_7= . then Q17b_Garnier_A_D_7 =0;*/
/*if Q17b_Head_Shoulder_7= . then Q17b_Head_Shoulder_7 =0;*/
/*if Q17b_Pantene_7= . then Q17b_Pantene_7 =0;*/
/*if Q17b_Pantene_A_D_7= . then Q17b_Pantene_A_D_7 =0;*/
/*if Q17b_Sunsilk_7= . then Q17b_Sunsilk_7 =0;*/
/*if Q17b_Sunsilk_A_D_7= . then Q17b_Sunsilk_A_D_7 =0;*/
/*if Q17b_Ultra_Doux_7= . then Q17b_Ultra_Doux_7 =0;*/
/*if Q17b_Fiama_7= . then Q17b_Fiama_7 =0;*/
/*if Q17b_Chik_7= . then Q17b_Chik_7 =0;*/
/*if Q17b_Lux_7= . then Q17b_Lux_7 =0;*/
/*if Q17b_Vivel_7= . then Q17b_Vivel_7 =0;*/
/*if Q17b_Dabur_Vatika_A_D_7= . then Q17b_Dabur_Vatika_A_D_7 =0;*/
/*if Q17b_Clinic_All_Clear_8= . then Q17b_Clinic_All_Clear_8 =0;*/
/*if Q17b_Clinic_Plus_8= . then Q17b_Clinic_Plus_8 =0;*/
/*if Q17b_Dove_8= . then Q17b_Dove_8 =0;*/
/*if Q17b_Essenza_8= . then Q17b_Essenza_8 =0;*/
/*if Q17b_Garnier_8= . then Q17b_Garnier_8 =0;*/
/*if Q17b_Garnier_A_D_8= . then Q17b_Garnier_A_D_8 =0;*/
/*if Q17b_Head_Shoulder_8= . then Q17b_Head_Shoulder_8 =0;*/
/*if Q17b_Pantene_8= . then Q17b_Pantene_8 =0;*/
/*if Q17b_Pantene_A_D_8= . then Q17b_Pantene_A_D_8 =0;*/
/*if Q17b_Sunsilk_8= . then Q17b_Sunsilk_8 =0;*/
/*if Q17b_Sunsilk_A_D_8= . then Q17b_Sunsilk_A_D_8 =0;*/
/*if Q17b_Ultra_Doux_8= . then Q17b_Ultra_Doux_8 =0;*/
/*if Q17b_Fiama_8= . then Q17b_Fiama_8 =0;*/
/*if Q17b_Chik_8= . then Q17b_Chik_8 =0;*/
/*if Q17b_Lux_8= . then Q17b_Lux_8 =0;*/
/*if Q17b_Vivel_8= . then Q17b_Vivel_8 =0;*/
/*if Q17b_Dabur_Vatika_A_D_8= . then Q17b_Dabur_Vatika_A_D_8 =0;*/
/*if Q16A_Clinic_All_Clear_1= . then Q16A_Clinic_All_Clear_1 =0;*/
/*if Q16A_Clinic_Plus_1= . then Q16A_Clinic_Plus_1 =0;*/
/*if Q16A_Dove_1= . then Q16A_Dove_1 =0;*/
/*if Q16A_Essenza_1= . then Q16A_Essenza_1 =0;*/
/*if Q16A_Garnier_1= . then Q16A_Garnier_1 =0;*/
/*if Q16A_Garnier_A_D_1= . then Q16A_Garnier_A_D_1 =0;*/
/*if Q16A_Head_Shoulder_1= . then Q16A_Head_Shoulder_1 =0;*/
/*if Q16A_Pantene_1= . then Q16A_Pantene_1 =0;*/
/*if Q16A_Pantene_A_D_1= . then Q16A_Pantene_A_D_1 =0;*/
/*if Q16A_Sunsilk_1= . then Q16A_Sunsilk_1 =0;*/
/*if Q16A_Sunsilk_A_D_1= . then Q16A_Sunsilk_A_D_1 =0;*/
/*if Q16A_Ultra_Doux_1= . then Q16A_Ultra_Doux_1 =0;*/
/*if Q16A_Fiama_1= . then Q16A_Fiama_1 =0;*/
/*if Q16A_Chik_1= . then Q16A_Chik_1 =0;*/
/*if Q16A_Lux_1= . then Q16A_Lux_1 =0;*/
/*if Q16A_Vivel_1= . then Q16A_Vivel_1 =0;*/
/*if Q16A_Dabur_Vatika_A_D_1= . then Q16A_Dabur_Vatika_A_D_1 =0;*/
/*if Q16A_Others_1= . then Q16A_Others_1 =0;*/
/*if Q16A_Clinic_All_Clear_2= . then Q16A_Clinic_All_Clear_2 =0;*/
/*if Q16A_Clinic_Plus_2= . then Q16A_Clinic_Plus_2 =0;*/
/*if Q16A_Dove_2= . then Q16A_Dove_2 =0;*/
/*if Q16A_Essenza_2= . then Q16A_Essenza_2 =0;*/
/*if Q16A_Garnier_2= . then Q16A_Garnier_2 =0;*/
/*if Q16A_Garnier_A_D_2= . then Q16A_Garnier_A_D_2 =0;*/
/*if Q16A_Head_Shoulder_2= . then Q16A_Head_Shoulder_2 =0;*/
/*if Q16A_Pantene_2= . then Q16A_Pantene_2 =0;*/
/*if Q16A_Pantene_A_D_2= . then Q16A_Pantene_A_D_2 =0;*/
/*if Q16A_Sunsilk_2= . then Q16A_Sunsilk_2 =0;*/
/*if Q16A_Sunsilk_A_D_2= . then Q16A_Sunsilk_A_D_2 =0;*/
/*if Q16A_Ultra_Doux_2= . then Q16A_Ultra_Doux_2 =0;*/
/*if Q16A_Fiama_2= . then Q16A_Fiama_2 =0;*/
/*if Q16A_Chik_2= . then Q16A_Chik_2 =0;*/
/*if Q16A_Lux_2= . then Q16A_Lux_2 =0;*/
/*if Q16A_Vivel_2= . then Q16A_Vivel_2 =0;*/
/*if Q16A_Dabur_Vatika_A_D_2= . then Q16A_Dabur_Vatika_A_D_2 =0;*/
/*if Q16A_Others_2= . then Q16A_Others_2 =0;*/
/*if Q16A_Clinic_All_Clear_3= . then Q16A_Clinic_All_Clear_3 =0;*/
/*if Q16A_Clinic_Plus_3= . then Q16A_Clinic_Plus_3 =0;*/
/*if Q16A_Dove_3= . then Q16A_Dove_3 =0;*/
/*if Q16A_Essenza_3= . then Q16A_Essenza_3 =0;*/
/*if Q16A_Garnier_3= . then Q16A_Garnier_3 =0;*/
/*if Q16A_Garnier_A_D_3= . then Q16A_Garnier_A_D_3 =0;*/
/*if Q16A_Head_Shoulder_3= . then Q16A_Head_Shoulder_3 =0;*/
/*if Q16A_Pantene_3= . then Q16A_Pantene_3 =0;*/
/*if Q16A_Pantene_A_D_3= . then Q16A_Pantene_A_D_3 =0;*/
/*if Q16A_Sunsilk_3= . then Q16A_Sunsilk_3 =0;*/
/*if Q16A_Sunsilk_A_D_3= . then Q16A_Sunsilk_A_D_3 =0;*/
/*if Q16A_Ultra_Doux_3= . then Q16A_Ultra_Doux_3 =0;*/
/*if Q16A_Fiama_3= . then Q16A_Fiama_3 =0;*/
/*if Q16A_Chik_3= . then Q16A_Chik_3 =0;*/
/*if Q16A_Lux_3= . then Q16A_Lux_3 =0;*/
/*if Q16A_Vivel_3= . then Q16A_Vivel_3 =0;*/
/*if Q16A_Dabur_Vatika_A_D_3= . then Q16A_Dabur_Vatika_A_D_3 =0;*/
/*if Q16A_Others_3= . then Q16A_Others_3 =0;*/
/*if Q16A_Clinic_All_Clear_4= . then Q16A_Clinic_All_Clear_4 =0;*/
/*if Q16A_Clinic_Plus_4= . then Q16A_Clinic_Plus_4 =0;*/
/*if Q16A_Dove_4= . then Q16A_Dove_4 =0;*/
/*if Q16A_Essenza_4= . then Q16A_Essenza_4 =0;*/
/*if Q16A_Garnier_4= . then Q16A_Garnier_4 =0;*/
/*if Q16A_Garnier_A_D_4= . then Q16A_Garnier_A_D_4 =0;*/
/*if Q16A_Head_Shoulder_4= . then Q16A_Head_Shoulder_4 =0;*/
/*if Q16A_Pantene_4= . then Q16A_Pantene_4 =0;*/
/*if Q16A_Pantene_A_D_4= . then Q16A_Pantene_A_D_4 =0;*/
/*if Q16A_Sunsilk_4= . then Q16A_Sunsilk_4 =0;*/
/*if Q16A_Sunsilk_A_D_4= . then Q16A_Sunsilk_A_D_4 =0;*/
/*if Q16A_Ultra_Doux_4= . then Q16A_Ultra_Doux_4 =0;*/
/*if Q16A_Fiama_4= . then Q16A_Fiama_4 =0;*/
/*if Q16A_Chik_4= . then Q16A_Chik_4 =0;*/
/*if Q16A_Lux_4= . then Q16A_Lux_4 =0;*/
/*if Q16A_Vivel_4= . then Q16A_Vivel_4 =0;*/
/*if Q16A_Dabur_Vatika_A_D_4= . then Q16A_Dabur_Vatika_A_D_4 =0;*/
/*if Q16A_Others_4= . then Q16A_Others_4 =0;*/
/*if Q16A_Clinic_All_Clear_5= . then Q16A_Clinic_All_Clear_5 =0;*/
/*if Q16A_Clinic_Plus_5= . then Q16A_Clinic_Plus_5 =0;*/
/*if Q16A_Dove_5= . then Q16A_Dove_5 =0;*/
/*if Q16A_Essenza_5= . then Q16A_Essenza_5 =0;*/
/*if Q16A_Garnier_5= . then Q16A_Garnier_5 =0;*/
/*if Q16A_Garnier_A_D_5= . then Q16A_Garnier_A_D_5 =0;*/
/*if Q16A_Head_Shoulder_5= . then Q16A_Head_Shoulder_5 =0;*/
/*if Q16A_Pantene_5= . then Q16A_Pantene_5 =0;*/
/*if Q16A_Pantene_A_D_5= . then Q16A_Pantene_A_D_5 =0;*/
/*if Q16A_Sunsilk_5= . then Q16A_Sunsilk_5 =0;*/
/*if Q16A_Sunsilk_A_D_5= . then Q16A_Sunsilk_A_D_5 =0;*/
/*if Q16A_Ultra_Doux_5= . then Q16A_Ultra_Doux_5 =0;*/
/*if Q16A_Fiama_5= . then Q16A_Fiama_5 =0;*/
/*if Q16A_Chik_5= . then Q16A_Chik_5 =0;*/
/*if Q16A_Lux_5= . then Q16A_Lux_5 =0;*/
/*if Q16A_Vivel_5= . then Q16A_Vivel_5 =0;*/
/*if Q16A_Dabur_Vatika_A_D_5= . then Q16A_Dabur_Vatika_A_D_5 =0;*/
/*if Q16A_Others_5= . then Q16A_Others_5 =0;*/
/*if Q16A_Clinic_All_Clear_6= . then Q16A_Clinic_All_Clear_6 =0;*/
/*if Q16A_Clinic_Plus_6= . then Q16A_Clinic_Plus_6 =0;*/
/*if Q16A_Dove_6= . then Q16A_Dove_6 =0;*/
/*if Q16A_Essenza_6= . then Q16A_Essenza_6 =0;*/
/*if Q16A_Garnier_6= . then Q16A_Garnier_6 =0;*/
/*if Q16A_Garnier_A_D_6= . then Q16A_Garnier_A_D_6 =0;*/
/*if Q16A_Head_Shoulder_6= . then Q16A_Head_Shoulder_6 =0;*/
/*if Q16A_Pantene_6= . then Q16A_Pantene_6 =0;*/
/*if Q16A_Pantene_A_D_6= . then Q16A_Pantene_A_D_6 =0;*/
/*if Q16A_Sunsilk_6= . then Q16A_Sunsilk_6 =0;*/
/*if Q16A_Sunsilk_A_D_6= . then Q16A_Sunsilk_A_D_6 =0;*/
/*if Q16A_Ultra_Doux_6= . then Q16A_Ultra_Doux_6 =0;*/
/*if Q16A_Fiama_6= . then Q16A_Fiama_6 =0;*/
/*if Q16A_Chik_6= . then Q16A_Chik_6 =0;*/
/*if Q16A_Lux_6= . then Q16A_Lux_6 =0;*/
/*if Q16A_Vivel_6= . then Q16A_Vivel_6 =0;*/
/*if Q16A_Dabur_Vatika_A_D_6= . then Q16A_Dabur_Vatika_A_D_6 =0;*/
/*if Q16A_Others_6= . then Q16A_Others_6 =0;*/
/*if Q16A_Clinic_All_Clear_7= . then Q16A_Clinic_All_Clear_7 =0;*/
/*if Q16A_Clinic_Plus_7= . then Q16A_Clinic_Plus_7 =0;*/
/*if Q16A_Dove_7= . then Q16A_Dove_7 =0;*/
/*if Q16A_Essenza_7= . then Q16A_Essenza_7 =0;*/
/*if Q16A_Garnier_7= . then Q16A_Garnier_7 =0;*/
/*if Q16A_Garnier_A_D_7= . then Q16A_Garnier_A_D_7 =0;*/
/*if Q16A_Head_Shoulder_7= . then Q16A_Head_Shoulder_7 =0;*/
/*if Q16A_Pantene_7= . then Q16A_Pantene_7 =0;*/
/*if Q16A_Pantene_A_D_7= . then Q16A_Pantene_A_D_7 =0;*/
/*if Q16A_Sunsilk_7= . then Q16A_Sunsilk_7 =0;*/
/*if Q16A_Sunsilk_A_D_7= . then Q16A_Sunsilk_A_D_7 =0;*/
/*if Q16A_Ultra_Doux_7= . then Q16A_Ultra_Doux_7 =0;*/
/*if Q16A_Fiama_7= . then Q16A_Fiama_7 =0;*/
/*if Q16A_Chik_7= . then Q16A_Chik_7 =0;*/
/*if Q16A_Lux_7= . then Q16A_Lux_7 =0;*/
/*if Q16A_Vivel_7= . then Q16A_Vivel_7 =0;*/
/*if Q16A_Dabur_Vatika_A_D_7= . then Q16A_Dabur_Vatika_A_D_7 =0;*/
/*if Q16A_Others_7= . then Q16A_Others_7 =0;*/
/*if Q16A_Clinic_All_Clear_8= . then Q16A_Clinic_All_Clear_8 =0;*/
/*if Q16A_Clinic_Plus_8= . then Q16A_Clinic_Plus_8 =0;*/
/*if Q16A_Dove_8= . then Q16A_Dove_8 =0;*/
/*if Q16A_Essenza_8= . then Q16A_Essenza_8 =0;*/
/*if Q16A_Garnier_8= . then Q16A_Garnier_8 =0;*/
/*if Q16A_Garnier_A_D_8= . then Q16A_Garnier_A_D_8 =0;*/
/*if Q16A_Head_Shoulder_8= . then Q16A_Head_Shoulder_8 =0;*/
/*if Q16A_Pantene_8= . then Q16A_Pantene_8 =0;*/
/*if Q16A_Pantene_A_D_8= . then Q16A_Pantene_A_D_8 =0;*/
/*if Q16A_Sunsilk_8= . then Q16A_Sunsilk_8 =0;*/
/*if Q16A_Sunsilk_A_D_8= . then Q16A_Sunsilk_A_D_8 =0;*/
/*if Q16A_Ultra_Doux_8= . then Q16A_Ultra_Doux_8 =0;*/
/*if Q16A_Fiama_8= . then Q16A_Fiama_8 =0;*/
/*if Q16A_Chik_8= . then Q16A_Chik_8 =0;*/
/*if Q16A_Lux_8= . then Q16A_Lux_8 =0;*/
/*if Q16A_Vivel_8= . then Q16A_Vivel_8 =0;*/
/*if Q16A_Dabur_Vatika_A_D_8= . then Q16A_Dabur_Vatika_A_D_8 =0;*/
/*if Q16A_Others_8= . then Q16A_Others_8 =0;*/
/*if Q16A_Clinic_All_Clear_9= . then Q16A_Clinic_All_Clear_9 =0;*/
/*if Q16A_Clinic_Plus_9= . then Q16A_Clinic_Plus_9 =0;*/
/*if Q16A_Dove_9= . then Q16A_Dove_9 =0;*/
/*if Q16A_Essenza_9= . then Q16A_Essenza_9 =0;*/
/*if Q16A_Garnier_9= . then Q16A_Garnier_9 =0;*/
/*if Q16A_Garnier_A_D_9= . then Q16A_Garnier_A_D_9 =0;*/
/*if Q16A_Head_Shoulder_9= . then Q16A_Head_Shoulder_9 =0;*/
/*if Q16A_Pantene_9= . then Q16A_Pantene_9 =0;*/
/*if Q16A_Pantene_A_D_9= . then Q16A_Pantene_A_D_9 =0;*/
/*if Q16A_Sunsilk_9= . then Q16A_Sunsilk_9 =0;*/
/*if Q16A_Sunsilk_A_D_9= . then Q16A_Sunsilk_A_D_9 =0;*/
/*if Q16A_Ultra_Doux_9= . then Q16A_Ultra_Doux_9 =0;*/
/*if Q16A_Fiama_9= . then Q16A_Fiama_9 =0;*/
/*if Q16A_Chik_9= . then Q16A_Chik_9 =0;*/
/*if Q16A_Lux_9= . then Q16A_Lux_9 =0;*/
/*if Q16A_Vivel_9= . then Q16A_Vivel_9 =0;*/
/*if Q16A_Dabur_Vatika_A_D_9= . then Q16A_Dabur_Vatika_A_D_9 =0;*/
/*if Q16A_Others_9= . then Q16A_Others_9 =0;*/
/*if Q16A_Clinic_All_Clear_10= . then Q16A_Clinic_All_Clear_10 =0;*/
/*if Q16A_Clinic_Plus_10= . then Q16A_Clinic_Plus_10 =0;*/
/*if Q16A_Dove_10= . then Q16A_Dove_10 =0;*/
/*if Q16A_Essenza_10= . then Q16A_Essenza_10 =0;*/
/*if Q16A_Garnier_10= . then Q16A_Garnier_10 =0;*/
/*if Q16A_Garnier_A_D_10= . then Q16A_Garnier_A_D_10 =0;*/
/*if Q16A_Head_Shoulder_10= . then Q16A_Head_Shoulder_10 =0;*/
/*if Q16A_Pantene_10= . then Q16A_Pantene_10 =0;*/
/*if Q16A_Pantene_A_D_10= . then Q16A_Pantene_A_D_10 =0;*/
/*if Q16A_Sunsilk_10= . then Q16A_Sunsilk_10 =0;*/
/*if Q16A_Sunsilk_A_D_10= . then Q16A_Sunsilk_A_D_10 =0;*/
/*if Q16A_Ultra_Doux_10= . then Q16A_Ultra_Doux_10 =0;*/
/*if Q16A_Fiama_10= . then Q16A_Fiama_10 =0;*/
/*if Q16A_Chik_10= . then Q16A_Chik_10 =0;*/
/*if Q16A_Lux_10= . then Q16A_Lux_10 =0;*/
/*if Q16A_Vivel_10= . then Q16A_Vivel_10 =0;*/
/*if Q16A_Dabur_Vatika_A_D_10= . then Q16A_Dabur_Vatika_A_D_10 =0;*/
/*if Q16A_Others_10= . then Q16A_Others_10 =0;*/
/*if Q16A_Clinic_All_Clear_11= . then Q16A_Clinic_All_Clear_11 =0;*/
/*if Q16A_Clinic_Plus_11= . then Q16A_Clinic_Plus_11 =0;*/
/*if Q16A_Dove_11= . then Q16A_Dove_11 =0;*/
/*if Q16A_Essenza_11= . then Q16A_Essenza_11 =0;*/
/*if Q16A_Garnier_11= . then Q16A_Garnier_11 =0;*/
/*if Q16A_Garnier_A_D_11= . then Q16A_Garnier_A_D_11 =0;*/
/*if Q16A_Head_Shoulder_11= . then Q16A_Head_Shoulder_11 =0;*/
/*if Q16A_Pantene_11= . then Q16A_Pantene_11 =0;*/
/*if Q16A_Pantene_A_D_11= . then Q16A_Pantene_A_D_11 =0;*/
/*if Q16A_Sunsilk_11= . then Q16A_Sunsilk_11 =0;*/
/*if Q16A_Sunsilk_A_D_11= . then Q16A_Sunsilk_A_D_11 =0;*/
/*if Q16A_Ultra_Doux_11= . then Q16A_Ultra_Doux_11 =0;*/
/*if Q16A_Fiama_11= . then Q16A_Fiama_11 =0;*/
/*if Q16A_Chik_11= . then Q16A_Chik_11 =0;*/
/*if Q16A_Lux_11= . then Q16A_Lux_11 =0;*/
/*if Q16A_Vivel_11= . then Q16A_Vivel_11 =0;*/
/*if Q16A_Dabur_Vatika_A_D_11= . then Q16A_Dabur_Vatika_A_D_11 =0;*/
/*if Q16A_Others_11= . then Q16A_Others_11 =0;*/
/*if Q16A_Clinic_All_Clear_12= . then Q16A_Clinic_All_Clear_12 =0;*/
/*if Q16A_Clinic_Plus_12= . then Q16A_Clinic_Plus_12 =0;*/
/*if Q16A_Dove_12= . then Q16A_Dove_12 =0;*/
/*if Q16A_Essenza_12= . then Q16A_Essenza_12 =0;*/
/*if Q16A_Garnier_12= . then Q16A_Garnier_12 =0;*/
/*if Q16A_Garnier_A_D_12= . then Q16A_Garnier_A_D_12 =0;*/
/*if Q16A_Head_Shoulder_12= . then Q16A_Head_Shoulder_12 =0;*/
/*if Q16A_Pantene_12= . then Q16A_Pantene_12 =0;*/
/*if Q16A_Pantene_A_D_12= . then Q16A_Pantene_A_D_12 =0;*/
/*if Q16A_Sunsilk_12= . then Q16A_Sunsilk_12 =0;*/
/*if Q16A_Sunsilk_A_D_12= . then Q16A_Sunsilk_A_D_12 =0;*/
/*if Q16A_Ultra_Doux_12= . then Q16A_Ultra_Doux_12 =0;*/
/*if Q16A_Fiama_12= . then Q16A_Fiama_12 =0;*/
/*if Q16A_Chik_12= . then Q16A_Chik_12 =0;*/
/*if Q16A_Lux_12= . then Q16A_Lux_12 =0;*/
/*if Q16A_Vivel_12= . then Q16A_Vivel_12 =0;*/
/*if Q16A_Dabur_Vatika_A_D_12= . then Q16A_Dabur_Vatika_A_D_12 =0;*/
/*if Q16A_Others_12= . then Q16A_Others_12 =0;*/
/*if Q16A_Clinic_All_Clear_13= . then Q16A_Clinic_All_Clear_13 =0;*/
/*if Q16A_Clinic_Plus_13= . then Q16A_Clinic_Plus_13 =0;*/
/*if Q16A_Dove_13= . then Q16A_Dove_13 =0;*/
/*if Q16A_Essenza_13= . then Q16A_Essenza_13 =0;*/
/*if Q16A_Garnier_13= . then Q16A_Garnier_13 =0;*/
/*if Q16A_Garnier_A_D_13= . then Q16A_Garnier_A_D_13 =0;*/
/*if Q16A_Head_Shoulder_13= . then Q16A_Head_Shoulder_13 =0;*/
/*if Q16A_Pantene_13= . then Q16A_Pantene_13 =0;*/
/*if Q16A_Pantene_A_D_13= . then Q16A_Pantene_A_D_13 =0;*/
/*if Q16A_Sunsilk_13= . then Q16A_Sunsilk_13 =0;*/
/*if Q16A_Sunsilk_A_D_13= . then Q16A_Sunsilk_A_D_13 =0;*/
/*if Q16A_Ultra_Doux_13= . then Q16A_Ultra_Doux_13 =0;*/
/*if Q16A_Fiama_13= . then Q16A_Fiama_13 =0;*/
/*if Q16A_Chik_13= . then Q16A_Chik_13 =0;*/
/*if Q16A_Lux_13= . then Q16A_Lux_13 =0;*/
/*if Q16A_Vivel_13= . then Q16A_Vivel_13 =0;*/
/*if Q16A_Dabur_Vatika_A_D_13= . then Q16A_Dabur_Vatika_A_D_13 =0;*/
/*if Q16A_Others_13= . then Q16A_Others_13 =0;*/
/*if Q16A_Clinic_All_Clear_14= . then Q16A_Clinic_All_Clear_14 =0;*/
/*if Q16A_Clinic_Plus_14= . then Q16A_Clinic_Plus_14 =0;*/
/*if Q16A_Dove_14= . then Q16A_Dove_14 =0;*/
/*if Q16A_Essenza_14= . then Q16A_Essenza_14 =0;*/
/*if Q16A_Garnier_14= . then Q16A_Garnier_14 =0;*/
/*if Q16A_Garnier_A_D_14= . then Q16A_Garnier_A_D_14 =0;*/
/*if Q16A_Head_Shoulder_14= . then Q16A_Head_Shoulder_14 =0;*/
/*if Q16A_Pantene_14= . then Q16A_Pantene_14 =0;*/
/*if Q16A_Pantene_A_D_14= . then Q16A_Pantene_A_D_14 =0;*/
/*if Q16A_Sunsilk_14= . then Q16A_Sunsilk_14 =0;*/
/*if Q16A_Sunsilk_A_D_14= . then Q16A_Sunsilk_A_D_14 =0;*/
/*if Q16A_Ultra_Doux_14= . then Q16A_Ultra_Doux_14 =0;*/
/*if Q16A_Fiama_14= . then Q16A_Fiama_14 =0;*/
/*if Q16A_Chik_14= . then Q16A_Chik_14 =0;*/
/*if Q16A_Lux_14= . then Q16A_Lux_14 =0;*/
/*if Q16A_Vivel_14= . then Q16A_Vivel_14 =0;*/
/*if Q16A_Dabur_Vatika_A_D_14= . then Q16A_Dabur_Vatika_A_D_14 =0;*/
/*if Q16A_Others_14= . then Q16A_Others_14 =0;*/
/*if Q16A_Clinic_All_Clear_15= . then Q16A_Clinic_All_Clear_15 =0;*/
/*if Q16A_Clinic_Plus_15= . then Q16A_Clinic_Plus_15 =0;*/
/*if Q16A_Dove_15= . then Q16A_Dove_15 =0;*/
/*if Q16A_Essenza_15= . then Q16A_Essenza_15 =0;*/
/*if Q16A_Garnier_15= . then Q16A_Garnier_15 =0;*/
/*if Q16A_Garnier_A_D_15= . then Q16A_Garnier_A_D_15 =0;*/
/*if Q16A_Head_Shoulder_15= . then Q16A_Head_Shoulder_15 =0;*/
/*if Q16A_Pantene_15= . then Q16A_Pantene_15 =0;*/
/*if Q16A_Pantene_A_D_15= . then Q16A_Pantene_A_D_15 =0;*/
/*if Q16A_Sunsilk_15= . then Q16A_Sunsilk_15 =0;*/
/*if Q16A_Sunsilk_A_D_15= . then Q16A_Sunsilk_A_D_15 =0;*/
/*if Q16A_Ultra_Doux_15= . then Q16A_Ultra_Doux_15 =0;*/
/*if Q16A_Fiama_15= . then Q16A_Fiama_15 =0;*/
/*if Q16A_Chik_15= . then Q16A_Chik_15 =0;*/
/*if Q16A_Lux_15= . then Q16A_Lux_15 =0;*/
/*if Q16A_Vivel_15= . then Q16A_Vivel_15 =0;*/
/*if Q16A_Dabur_Vatika_A_D_15= . then Q16A_Dabur_Vatika_A_D_15 =0;*/
/*if Q16A_Others_15= . then Q16A_Others_15 =0;*/
/*if Q16A_Clinic_All_Clear_16= . then Q16A_Clinic_All_Clear_16 =0;*/
/*if Q16A_Clinic_Plus_16= . then Q16A_Clinic_Plus_16 =0;*/
/*if Q16A_Dove_16= . then Q16A_Dove_16 =0;*/
/*if Q16A_Essenza_16= . then Q16A_Essenza_16 =0;*/
/*if Q16A_Garnier_16= . then Q16A_Garnier_16 =0;*/
/*if Q16A_Garnier_A_D_16= . then Q16A_Garnier_A_D_16 =0;*/
/*if Q16A_Head_Shoulder_16= . then Q16A_Head_Shoulder_16 =0;*/
/*if Q16A_Pantene_16= . then Q16A_Pantene_16 =0;*/
/*if Q16A_Pantene_A_D_16= . then Q16A_Pantene_A_D_16 =0;*/
/*if Q16A_Sunsilk_16= . then Q16A_Sunsilk_16 =0;*/
/*if Q16A_Sunsilk_A_D_16= . then Q16A_Sunsilk_A_D_16 =0;*/
/*if Q16A_Ultra_Doux_16= . then Q16A_Ultra_Doux_16 =0;*/
/*if Q16B_Clinic_All_Clear_1= . then Q16B_Clinic_All_Clear_1 =0;*/
/*if Q16B_Clinic_Plus_1= . then Q16B_Clinic_Plus_1 =0;*/
/*if Q16B_Dove_1= . then Q16B_Dove_1 =0;*/
/*if Q16B_Essenza_1= . then Q16B_Essenza_1 =0;*/
/*if Q16B_Garnier_1= . then Q16B_Garnier_1 =0;*/
/*if Q16B_Garnier_A_D_1= . then Q16B_Garnier_A_D_1 =0;*/
/*if Q16B_Head_Shoulder_1= . then Q16B_Head_Shoulder_1 =0;*/
/*if Q16B_Pantene_1= . then Q16B_Pantene_1 =0;*/
/*if Q16B_Pantene_A_D_1= . then Q16B_Pantene_A_D_1 =0;*/
/*if Q16B_Sunsilk_1= . then Q16B_Sunsilk_1 =0;*/
/*if Q16B_Sunsilk_A_D_1= . then Q16B_Sunsilk_A_D_1 =0;*/
/*if Q16B_Ultra_Doux_1= . then Q16B_Ultra_Doux_1 =0;*/
/*if Q16B_Fiama_1= . then Q16B_Fiama_1 =0;*/
/*if Q16B_Chik_1= . then Q16B_Chik_1 =0;*/
/*if Q16B_Lux_1= . then Q16B_Lux_1 =0;*/
/*if Q16B_Vivel_1= . then Q16B_Vivel_1 =0;*/
/*if Q16B_Dabur_Vatika_A_D_1= . then Q16B_Dabur_Vatika_A_D_1 =0;*/
/*if Q16B_Others_1= . then Q16B_Others_1 =0;*/
/*if Q16B_Clinic_All_Clear_2= . then Q16B_Clinic_All_Clear_2 =0;*/
/*if Q16B_Clinic_Plus_2= . then Q16B_Clinic_Plus_2 =0;*/
/*if Q16B_Dove_2= . then Q16B_Dove_2 =0;*/
/*if Q16B_Essenza_2= . then Q16B_Essenza_2 =0;*/
/*if Q16B_Garnier_2= . then Q16B_Garnier_2 =0;*/
/*if Q16B_Garnier_A_D_2= . then Q16B_Garnier_A_D_2 =0;*/
/*if Q16B_Head_Shoulder_2= . then Q16B_Head_Shoulder_2 =0;*/
/*if Q16B_Pantene_2= . then Q16B_Pantene_2 =0;*/
/*if Q16B_Pantene_A_D_2= . then Q16B_Pantene_A_D_2 =0;*/
/*if Q16B_Sunsilk_2= . then Q16B_Sunsilk_2 =0;*/
/*if Q16B_Sunsilk_A_D_2= . then Q16B_Sunsilk_A_D_2 =0;*/
/*if Q16B_Ultra_Doux_2= . then Q16B_Ultra_Doux_2 =0;*/
/*if Q16B_Fiama_2= . then Q16B_Fiama_2 =0;*/
/*if Q16B_Chik_2= . then Q16B_Chik_2 =0;*/
/*if Q16B_Lux_2= . then Q16B_Lux_2 =0;*/
/*if Q16B_Vivel_2= . then Q16B_Vivel_2 =0;*/
/*if Q16B_Dabur_Vatika_A_D_2= . then Q16B_Dabur_Vatika_A_D_2 =0;*/
/*if Q16B_Others_2= . then Q16B_Others_2 =0;*/
/*if Q16B_Clinic_All_Clear_3= . then Q16B_Clinic_All_Clear_3 =0;*/
/*if Q16B_Clinic_Plus_3= . then Q16B_Clinic_Plus_3 =0;*/
/*if Q16B_Dove_3= . then Q16B_Dove_3 =0;*/
/*if Q16B_Essenza_3= . then Q16B_Essenza_3 =0;*/
/*if Q16B_Garnier_3= . then Q16B_Garnier_3 =0;*/
/*if Q16B_Garnier_A_D_3= . then Q16B_Garnier_A_D_3 =0;*/
/*if Q16B_Head_Shoulder_3= . then Q16B_Head_Shoulder_3 =0;*/
/*if Q16B_Pantene_3= . then Q16B_Pantene_3 =0;*/
/*if Q16B_Pantene_A_D_3= . then Q16B_Pantene_A_D_3 =0;*/
/*if Q16B_Sunsilk_3= . then Q16B_Sunsilk_3 =0;*/
/*if Q16B_Sunsilk_A_D_3= . then Q16B_Sunsilk_A_D_3 =0;*/
/*if Q16B_Ultra_Doux_3= . then Q16B_Ultra_Doux_3 =0;*/
/*if Q16B_Fiama_3= . then Q16B_Fiama_3 =0;*/
/*if Q16B_Chik_3= . then Q16B_Chik_3 =0;*/
/*if Q16B_Lux_3= . then Q16B_Lux_3 =0;*/
/*if Q16B_Vivel_3= . then Q16B_Vivel_3 =0;*/
/*if Q16B_Dabur_Vatika_A_D_3= . then Q16B_Dabur_Vatika_A_D_3 =0;*/
/*if Q16B_Others_3= . then Q16B_Others_3 =0;*/
/*if Q16B_Clinic_All_Clear_4= . then Q16B_Clinic_All_Clear_4 =0;*/
/*if Q16B_Clinic_Plus_4= . then Q16B_Clinic_Plus_4 =0;*/
/*if Q16B_Dove_4= . then Q16B_Dove_4 =0;*/
/*if Q16B_Essenza_4= . then Q16B_Essenza_4 =0;*/
/*if Q16B_Garnier_4= . then Q16B_Garnier_4 =0;*/
/*if Q16B_Garnier_A_D_4= . then Q16B_Garnier_A_D_4 =0;*/
/*if Q16B_Head_Shoulder_4= . then Q16B_Head_Shoulder_4 =0;*/
/*if Q16B_Pantene_4= . then Q16B_Pantene_4 =0;*/
/*if Q16B_Pantene_A_D_4= . then Q16B_Pantene_A_D_4 =0;*/
/*if Q16B_Sunsilk_4= . then Q16B_Sunsilk_4 =0;*/
/*if Q16B_Sunsilk_A_D_4= . then Q16B_Sunsilk_A_D_4 =0;*/
/*if Q16B_Ultra_Doux_4= . then Q16B_Ultra_Doux_4 =0;*/
/*if Q16B_Fiama_4= . then Q16B_Fiama_4 =0;*/
/*if Q16B_Chik_4= . then Q16B_Chik_4 =0;*/
/*if Q16B_Lux_4= . then Q16B_Lux_4 =0;*/
/*if Q16B_Vivel_4= . then Q16B_Vivel_4 =0;*/
/*if Q16B_Dabur_Vatika_A_D_4= . then Q16B_Dabur_Vatika_A_D_4 =0;*/
/*if Q16B_Others_4= . then Q16B_Others_4 =0;*/
/*if Q16B_Clinic_All_Clear_5= . then Q16B_Clinic_All_Clear_5 =0;*/
/*if Q16B_Clinic_Plus_5= . then Q16B_Clinic_Plus_5 =0;*/
/*if Q16B_Dove_5= . then Q16B_Dove_5 =0;*/
/*if Q16B_Essenza_5= . then Q16B_Essenza_5 =0;*/
/*if Q16B_Garnier_5= . then Q16B_Garnier_5 =0;*/
/*if Q16B_Garnier_A_D_5= . then Q16B_Garnier_A_D_5 =0;*/
/*if Q16B_Head_Shoulder_5= . then Q16B_Head_Shoulder_5 =0;*/
/*if Q16B_Pantene_5= . then Q16B_Pantene_5 =0;*/
/*if Q16B_Pantene_A_D_5= . then Q16B_Pantene_A_D_5 =0;*/
/*if Q16B_Sunsilk_5= . then Q16B_Sunsilk_5 =0;*/
/*if Q16B_Sunsilk_A_D_5= . then Q16B_Sunsilk_A_D_5 =0;*/
/*if Q16B_Ultra_Doux_5= . then Q16B_Ultra_Doux_5 =0;*/
/*if Q16B_Fiama_5= . then Q16B_Fiama_5 =0;*/
/*if Q16B_Chik_5= . then Q16B_Chik_5 =0;*/
/*if Q16B_Lux_5= . then Q16B_Lux_5 =0;*/
/*if Q16B_Vivel_5= . then Q16B_Vivel_5 =0;*/
/*if Q16B_Dabur_Vatika_A_D_5= . then Q16B_Dabur_Vatika_A_D_5 =0;*/
/*if Q16B_Others_5= . then Q16B_Others_5 =0;*/
/*if Q16B_Clinic_All_Clear_6= . then Q16B_Clinic_All_Clear_6 =0;*/
/*if Q16B_Clinic_Plus_6= . then Q16B_Clinic_Plus_6 =0;*/
/*if Q16B_Dove_6= . then Q16B_Dove_6 =0;*/
/*if Q16B_Essenza_6= . then Q16B_Essenza_6 =0;*/
/*if Q16B_Garnier_6= . then Q16B_Garnier_6 =0;*/
/*if Q16B_Garnier_A_D_6= . then Q16B_Garnier_A_D_6 =0;*/
/*if Q16B_Head_Shoulder_6= . then Q16B_Head_Shoulder_6 =0;*/
/*if Q16B_Pantene_6= . then Q16B_Pantene_6 =0;*/
/*if Q16B_Pantene_A_D_6= . then Q16B_Pantene_A_D_6 =0;*/
/*if Q16B_Sunsilk_6= . then Q16B_Sunsilk_6 =0;*/
/*if Q16B_Sunsilk_A_D_6= . then Q16B_Sunsilk_A_D_6 =0;*/
/*if Q16B_Ultra_Doux_6= . then Q16B_Ultra_Doux_6 =0;*/
/*if Q16B_Fiama_6= . then Q16B_Fiama_6 =0;*/
/*if Q16B_Chik_6= . then Q16B_Chik_6 =0;*/
/*if Q16B_Lux_6= . then Q16B_Lux_6 =0;*/
/*if Q16B_Vivel_6= . then Q16B_Vivel_6 =0;*/
/*if Q16B_Dabur_Vatika_A_D_6= . then Q16B_Dabur_Vatika_A_D_6 =0;*/
/*if Q16B_Others_6= . then Q16B_Others_6 =0;*/
/*if Q16B_Clinic_All_Clear_7= . then Q16B_Clinic_All_Clear_7 =0;*/
/*if Q16B_Clinic_Plus_7= . then Q16B_Clinic_Plus_7 =0;*/
/*if Q16B_Dove_7= . then Q16B_Dove_7 =0;*/
/*if Q16B_Essenza_7= . then Q16B_Essenza_7 =0;*/
/*if Q16B_Garnier_7= . then Q16B_Garnier_7 =0;*/
/*if Q16B_Garnier_A_D_7= . then Q16B_Garnier_A_D_7 =0;*/
/*if Q16B_Head_Shoulder_7= . then Q16B_Head_Shoulder_7 =0;*/
/*if Q16B_Pantene_7= . then Q16B_Pantene_7 =0;*/
/*if Q16B_Pantene_A_D_7= . then Q16B_Pantene_A_D_7 =0;*/
/*if Q16B_Sunsilk_7= . then Q16B_Sunsilk_7 =0;*/
/*if Q16B_Sunsilk_A_D_7= . then Q16B_Sunsilk_A_D_7 =0;*/
/*if Q16B_Ultra_Doux_7= . then Q16B_Ultra_Doux_7 =0;*/
/*if Q16B_Fiama_7= . then Q16B_Fiama_7 =0;*/
/*if Q16B_Chik_7= . then Q16B_Chik_7 =0;*/
/*if Q16B_Lux_7= . then Q16B_Lux_7 =0;*/
/*if Q16B_Vivel_7= . then Q16B_Vivel_7 =0;*/
/*if Q16B_Dabur_Vatika_A_D_7= . then Q16B_Dabur_Vatika_A_D_7 =0;*/
/*if Q16B_Others_7= . then Q16B_Others_7 =0;*/
/*if Q16B_Clinic_All_Clear_8= . then Q16B_Clinic_All_Clear_8 =0;*/
/*if Q16B_Clinic_Plus_8= . then Q16B_Clinic_Plus_8 =0;*/
/*if Q16B_Dove_8= . then Q16B_Dove_8 =0;*/
/*if Q16B_Essenza_8= . then Q16B_Essenza_8 =0;*/
/*if Q16B_Garnier_8= . then Q16B_Garnier_8 =0;*/
/*if Q16B_Garnier_A_D_8= . then Q16B_Garnier_A_D_8 =0;*/
/*if Q16B_Head_Shoulder_8= . then Q16B_Head_Shoulder_8 =0;*/
/*if Q16B_Pantene_8= . then Q16B_Pantene_8 =0;*/
/*if Q16B_Pantene_A_D_8= . then Q16B_Pantene_A_D_8 =0;*/
/*if Q16B_Sunsilk_8= . then Q16B_Sunsilk_8 =0;*/
/*if Q16B_Sunsilk_A_D_8= . then Q16B_Sunsilk_A_D_8 =0;*/
/*if Q16B_Ultra_Doux_8= . then Q16B_Ultra_Doux_8 =0;*/
/*if Q16B_Fiama_8= . then Q16B_Fiama_8 =0;*/
/*if Q16B_Chik_8= . then Q16B_Chik_8 =0;*/
/*if Q16B_Lux_8= . then Q16B_Lux_8 =0;*/
/*if Q16B_Vivel_8= . then Q16B_Vivel_8 =0;*/
/*if Q16B_Dabur_Vatika_A_D_8= . then Q16B_Dabur_Vatika_A_D_8 =0;*/
/*if Q16B_Others_8= . then Q16B_Others_8 =0;*/
/*if Q16B_Clinic_All_Clear_9= . then Q16B_Clinic_All_Clear_9 =0;*/
/*if Q16B_Clinic_Plus_9= . then Q16B_Clinic_Plus_9 =0;*/
/*if Q16B_Dove_9= . then Q16B_Dove_9 =0;*/
/*if Q16B_Essenza_9= . then Q16B_Essenza_9 =0;*/
/*if Q16B_Garnier_9= . then Q16B_Garnier_9 =0;*/
/*if Q16B_Garnier_A_D_9= . then Q16B_Garnier_A_D_9 =0;*/
/*if Q16B_Head_Shoulder_9= . then Q16B_Head_Shoulder_9 =0;*/
/*if Q16B_Pantene_9= . then Q16B_Pantene_9 =0;*/
/*if Q16B_Pantene_A_D_9= . then Q16B_Pantene_A_D_9 =0;*/
/*if Q16B_Sunsilk_9= . then Q16B_Sunsilk_9 =0;*/
/*if Q16B_Sunsilk_A_D_9= . then Q16B_Sunsilk_A_D_9 =0;*/
/*if Q16B_Ultra_Doux_9= . then Q16B_Ultra_Doux_9 =0;*/
/*if Q16B_Fiama_9= . then Q16B_Fiama_9 =0;*/
/*if Q16B_Chik_9= . then Q16B_Chik_9 =0;*/
/*if Q16B_Lux_9= . then Q16B_Lux_9 =0;*/
/*if Q16B_Vivel_9= . then Q16B_Vivel_9 =0;*/
/*if Q16B_Dabur_Vatika_A_D_9= . then Q16B_Dabur_Vatika_A_D_9 =0;*/
/*if Q16B_Others_9= . then Q16B_Others_9 =0;*/
/*if Q16B_Clinic_All_Clear_10= . then Q16B_Clinic_All_Clear_10 =0;*/
/*if Q16B_Clinic_Plus_10= . then Q16B_Clinic_Plus_10 =0;*/
/*if Q16B_Dove_10= . then Q16B_Dove_10 =0;*/
/*if Q16B_Essenza_10= . then Q16B_Essenza_10 =0;*/
/*if Q16B_Garnier_10= . then Q16B_Garnier_10 =0;*/
/*if Q16B_Garnier_A_D_10= . then Q16B_Garnier_A_D_10 =0;*/
/*if Q16B_Head_Shoulder_10= . then Q16B_Head_Shoulder_10 =0;*/
/*if Q16B_Pantene_10= . then Q16B_Pantene_10 =0;*/
/*if Q16B_Pantene_A_D_10= . then Q16B_Pantene_A_D_10 =0;*/
/*if Q16B_Sunsilk_10= . then Q16B_Sunsilk_10 =0;*/
/*if Q16B_Sunsilk_A_D_10= . then Q16B_Sunsilk_A_D_10 =0;*/
/*if Q16B_Ultra_Doux_10= . then Q16B_Ultra_Doux_10 =0;*/
/*if Q16B_Fiama_10= . then Q16B_Fiama_10 =0;*/
/*if Q16B_Chik_10= . then Q16B_Chik_10 =0;*/
/*if Q16B_Lux_10= . then Q16B_Lux_10 =0;*/
/*if Q16B_Vivel_10= . then Q16B_Vivel_10 =0;*/
/*if Q16B_Dabur_Vatika_A_D_10= . then Q16B_Dabur_Vatika_A_D_10 =0;*/
/*if Q16B_Others_10= . then Q16B_Others_10 =0;*/
/*if Q16B_Clinic_All_Clear_11= . then Q16B_Clinic_All_Clear_11 =0;*/
/*if Q16B_Clinic_Plus_11= . then Q16B_Clinic_Plus_11 =0;*/
/*if Q16B_Dove_11= . then Q16B_Dove_11 =0;*/
/*if Q16B_Essenza_11= . then Q16B_Essenza_11 =0;*/
/*if Q16B_Garnier_11= . then Q16B_Garnier_11 =0;*/
/*if Q16B_Garnier_A_D_11= . then Q16B_Garnier_A_D_11 =0;*/
/*if Q16B_Head_Shoulder_11= . then Q16B_Head_Shoulder_11 =0;*/
/*if Q16B_Pantene_11= . then Q16B_Pantene_11 =0;*/
/*if Q16B_Pantene_A_D_11= . then Q16B_Pantene_A_D_11 =0;*/
/*if Q16B_Sunsilk_11= . then Q16B_Sunsilk_11 =0;*/
/*if Q16B_Sunsilk_A_D_11= . then Q16B_Sunsilk_A_D_11 =0;*/
/*if Q16B_Ultra_Doux_11= . then Q16B_Ultra_Doux_11 =0;*/
/*if Q16B_Fiama_11= . then Q16B_Fiama_11 =0;*/
/*if Q16B_Chik_11= . then Q16B_Chik_11 =0;*/
/*if Q16B_Lux_11= . then Q16B_Lux_11 =0;*/
/*if Q16B_Vivel_11= . then Q16B_Vivel_11 =0;*/
/*if Q16B_Dabur_Vatika_A_D_11= . then Q16B_Dabur_Vatika_A_D_11 =0;*/
/*if Q16B_Others_11= . then Q16B_Others_11 =0;*/
/*if Q16B_Clinic_All_Clear_12= . then Q16B_Clinic_All_Clear_12 =0;*/
/*if Q16B_Clinic_Plus_12= . then Q16B_Clinic_Plus_12 =0;*/
/*if Q16B_Dove_12= . then Q16B_Dove_12 =0;*/
/*if Q16B_Essenza_12= . then Q16B_Essenza_12 =0;*/
/*if Q16B_Garnier_12= . then Q16B_Garnier_12 =0;*/
/*if Q16B_Garnier_A_D_12= . then Q16B_Garnier_A_D_12 =0;*/
/*if Q16B_Head_Shoulder_12= . then Q16B_Head_Shoulder_12 =0;*/
/*if Q16B_Pantene_12= . then Q16B_Pantene_12 =0;*/
/*if Q16B_Pantene_A_D_12= . then Q16B_Pantene_A_D_12 =0;*/
/*if Q16B_Sunsilk_12= . then Q16B_Sunsilk_12 =0;*/
/*if Q16B_Sunsilk_A_D_12= . then Q16B_Sunsilk_A_D_12 =0;*/
/*if Q16B_Ultra_Doux_12= . then Q16B_Ultra_Doux_12 =0;*/
/*if Q16B_Fiama_12= . then Q16B_Fiama_12 =0;*/
/*if Q16B_Chik_12= . then Q16B_Chik_12 =0;*/
/*if Q16B_Lux_12= . then Q16B_Lux_12 =0;*/
/*if Q16B_Vivel_12= . then Q16B_Vivel_12 =0;*/
/*if Q16B_Dabur_Vatika_A_D_12= . then Q16B_Dabur_Vatika_A_D_12 =0;*/
/*if Q16B_Others_12= . then Q16B_Others_12 =0;*/
/*if ITC_int_std= . then ITC_int_std =0;*/
/*if ITC_premium= . then ITC_premium =0;*/
/*if ITC_trust= . then ITC_trust =0;*/
/*if ITC_relevant= . then ITC_relevant =0;*/
/*if ITC_quality= . then ITC_quality =0;*/
/*if HUL_int_std= . then HUL_int_std =0;*/
/*if HUL_premium= . then HUL_premium =0;*/
/*if HUL_trust= . then HUL_trust =0;*/
/*if HUL_relevant= . then HUL_relevant =0;*/
/*if HUL_quality= . then HUL_quality =0;*/
/*if Q17b1_vivel_1= . then Q17b1_vivel_1 =0;*/
/*if Q17b1_vivel_2= . then Q17b1_vivel_2 =0;*/
/*if Q17b1_vivel_3= . then Q17b1_vivel_3 =0;*/
/*if Q17b1_vivel_4= . then Q17b1_vivel_4 =0;*/
/*if Q17b1_vivel_5= . then Q17b1_vivel_5 =0;*/
/*if Q17b1_vivel_6= . then Q17b1_vivel_6 =0;*/
/*if Q17b1_vivel_7= . then Q17b1_vivel_7 =0;*/
/*if Q17b1_Fiama_1= . then Q17b1_Fiama_1 =0;*/
/*if Q17b1_Fiama_2= . then Q17b1_Fiama_2 =0;*/
/*if Q17b1_Fiama_3= . then Q17b1_Fiama_3 =0;*/
/*if Q17b1_Fiama_4= . then Q17b1_Fiama_4 =0;*/
/*if Q17b1_Fiama_5= . then Q17b1_Fiama_5 =0;*/
/*if Q17b1_Fiama_6= . then Q17b1_Fiama_6 =0;*/
/*if Q17b1_Fiama_7= . then Q17b1_Fiama_7 =0;*/
/*if flag= . then flag =0;*/
/*run;*/

proc export data=v1.Shampoos_rollup1 outfile="E:\Projects\ITC\Apr 21\shamp_rollup_1.csv";
run;
data v1.Shampoos_rollup1;
set v1.Shampoos_rollup1;
drop Q14_Others
Q16A_Others_1
Q16A_Others_2
Q16A_Others_3
Q16A_Others_4
Q16A_Others_5
Q16A_Others_6
Q16A_Others_7
Q16A_Others_8
Q16A_Others_9
Q16A_Others_10
Q16A_Others_11
Q16A_Others_12
Q16A_Others_13
Q16A_Others_14
Q16A_Others_15
Q16A_Others_16
Q16B_Others
Q16B_Others_1
Q16B_Others_2
Q16B_Others_3
Q16B_Others_4
Q16B_Others_5
Q16B_Others_6
Q16B_Others_7
Q16B_Others_8
Q16B_Others_9
Q16B_Others_10
Q16B_Others_11
Q16B_Others_12
Q16_Others
Q17_A_Others
Q17b_Others_1
Q17b_Others_2
Q17b_Others_3
Q17b_Others_4
Q17b_Others_5
Q17b_Others_6
Q17b_Others_7
Q17b_Others_8
Q2_HEARD_Others
Q2_MOST_Others
Q2_USED_Others
Q5C_Spon_Others
Q5C_TOM_Others
;
run;

data v1.Shampoos_rollup_per;
set v1.Shampoos_rollup1;
per_Q2_HEARD_Clinic_All_Clear =(Q2_HEARD_Clinic_All_Clear/ flag)*100;
per_Q2_HEARD_Clinic_Plus =(Q2_HEARD_Clinic_Plus/ flag)*100;
per_Q2_HEARD_Dove =(Q2_HEARD_Dove/ flag)*100;
per_Q2_HEARD_Essenza =(Q2_HEARD_Essenza/ flag)*100;
per_Q2_HEARD_Garnier =(Q2_HEARD_Garnier/ flag)*100;
per_Q2_HEARD_Garnier_A_D =(Q2_HEARD_Garnier_A_D/ flag)*100;
per_Q2_HEARD_Head_Shoulder =(Q2_HEARD_Head_Shoulder/ flag)*100;
per_Q2_HEARD_Pantene =(Q2_HEARD_Pantene/ flag)*100;
per_Q2_HEARD_Pantene_A_D =(Q2_HEARD_Pantene_A_D/ flag)*100;
per_Q2_HEARD_Sunsilk =(Q2_HEARD_Sunsilk/ flag)*100;
per_Q2_HEARD_Sunsilk_A_D =(Q2_HEARD_Sunsilk_A_D/ flag)*100;
per_Q2_HEARD_Ultra_Doux =(Q2_HEARD_Ultra_Doux/ flag)*100;
per_Q2_HEARD_Fiama =(Q2_HEARD_Fiama/ flag)*100;
per_Q2_HEARD_Chik =(Q2_HEARD_Chik/ flag)*100;
per_Q2_HEARD_Lux =(Q2_HEARD_Lux/ flag)*100;
per_Q2_HEARD_Vivel =(Q2_HEARD_Vivel/ flag)*100;
per_Q2_HEARD_Dabur_Vatika_A_D =(Q2_HEARD_Dabur_Vatika_A_D/ flag)*100;
per_Q2_USED_Clinic_All_Clear =(Q2_USED_Clinic_All_Clear/ flag)*100;
per_Q2_USED_Clinic_Plus =(Q2_USED_Clinic_Plus/ flag)*100;
per_Q2_USED_Dove =(Q2_USED_Dove/ flag)*100;
per_Q2_USED_Essenza =(Q2_USED_Essenza/ flag)*100;
per_Q2_USED_Garnier =(Q2_USED_Garnier/ flag)*100;
per_Q2_USED_Garnier_A_D =(Q2_USED_Garnier_A_D/ flag)*100;
per_Q2_USED_Head_Shoulder =(Q2_USED_Head_Shoulder/ flag)*100;
per_Q2_USED_Pantene =(Q2_USED_Pantene/ flag)*100;
per_Q2_USED_Pantene_A_D =(Q2_USED_Pantene_A_D/ flag)*100;
per_Q2_USED_Sunsilk =(Q2_USED_Sunsilk/ flag)*100;
per_Q2_USED_Sunsilk_A_D =(Q2_USED_Sunsilk_A_D/ flag)*100;
per_Q2_USED_Ultra_Doux =(Q2_USED_Ultra_Doux/ flag)*100;
per_Q2_USED_Fiama =(Q2_USED_Fiama/ flag)*100;
per_Q2_USED_Chik =(Q2_USED_Chik/ flag)*100;
per_Q2_USED_Lux =(Q2_USED_Lux/ flag)*100;
per_Q2_USED_Vivel =(Q2_USED_Vivel/ flag)*100;
per_Q2_USED_Dabur_Vatika_A_D =(Q2_USED_Dabur_Vatika_A_D/ flag)*100;
per_Q2_MOST_Clinic_All_Clear =(Q2_MOST_Clinic_All_Clear/ flag)*100;
per_Q2_MOST_Clinic_Plus =(Q2_MOST_Clinic_Plus/ flag)*100;
per_Q2_MOST_Dove =(Q2_MOST_Dove/ flag)*100;
per_Q2_MOST_Essenza =(Q2_MOST_Essenza/ flag)*100;
per_Q2_MOST_Garnier =(Q2_MOST_Garnier/ flag)*100;
per_Q2_MOST_Garnier_A_D =(Q2_MOST_Garnier_A_D/ flag)*100;
per_Q2_MOST_Head_Shoulder =(Q2_MOST_Head_Shoulder/ flag)*100;
per_Q2_MOST_Pantene =(Q2_MOST_Pantene/ flag)*100;
per_Q2_MOST_Pantene_A_D =(Q2_MOST_Pantene_A_D/ flag)*100;
per_Q2_MOST_Sunsilk =(Q2_MOST_Sunsilk/ flag)*100;
per_Q2_MOST_Sunsilk_A_D =(Q2_MOST_Sunsilk_A_D/ flag)*100;
per_Q2_MOST_Ultra_Doux =(Q2_MOST_Ultra_Doux/ flag)*100;
per_Q2_MOST_Fiama =(Q2_MOST_Fiama/ flag)*100;
per_Q2_MOST_Chik =(Q2_MOST_Chik/ flag)*100;
per_Q2_MOST_Lux =(Q2_MOST_Lux/ flag)*100;
per_Q2_MOST_Vivel =(Q2_MOST_Vivel/ flag)*100;
per_Q2_MOST_Dabur_Vatika_A_D =(Q2_MOST_Dabur_Vatika_A_D/ flag)*100;
per_Q14_Clinic_All_Clear_TB =(Q14_Clinic_All_Clear_TB/ flag)*100;
per_Q14_Clinic_Plus_TB =(Q14_Clinic_Plus_TB/ flag)*100;
per_Q14_Dove_TB =(Q14_Dove_TB/ flag)*100;
per_Q14_Essenza_TB =(Q14_Essenza_TB/ flag)*100;
per_Q14_Garnier_TB =(Q14_Garnier_TB/ flag)*100;
per_Q14_Head_Shoulder_TB =(Q14_Head_Shoulder_TB/ flag)*100;
per_Q14_Pantene_TB =(Q14_Pantene_TB/ flag)*100;
per_Q14_Sunsilk_TB =(Q14_Sunsilk_TB/ flag)*100;
per_Q14_Ultra_Doux_TB =(Q14_Ultra_Doux_TB/ flag)*100;
per_Q14_Fiama_TB =(Q14_Fiama_TB/ flag)*100;
per_Q14_Chik_TB =(Q14_Chik_TB/ flag)*100;
per_Q14_Lux_TB =(Q14_Lux_TB/ flag)*100;
per_Q14_Vivel_TB =(Q14_Vivel_TB/ flag)*100;
per_HUL_int_std =(HUL_int_std/ flag)*100;
per_HUL_premium =(HUL_premium/ flag)*100;
per_HUL_quality =(HUL_quality/ flag)*100;
per_HUL_relevant =(HUL_relevant/ flag)*100;
per_HUL_trust =(HUL_trust/ flag)*100;
per_ITC_int_std =(ITC_int_std/ flag)*100;
per_ITC_premium =(ITC_premium/ flag)*100;
per_ITC_quality =(ITC_quality/ flag)*100;
per_ITC_relevant =(ITC_relevant/ flag)*100;
per_ITC_trust =(ITC_trust/ flag)*100;
per_Q16A_Chik_1 =(Q16A_Chik_1/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_10 =(Q16A_Chik_10/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_11 =(Q16A_Chik_11/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_12 =(Q16A_Chik_12/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_13 =(Q16A_Chik_13/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_14 =(Q16A_Chik_14/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_15 =(Q16A_Chik_15/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_16 =(Q16A_Chik_16/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_2 =(Q16A_Chik_2/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_3 =(Q16A_Chik_3/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_4 =(Q16A_Chik_4/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_5 =(Q16A_Chik_5/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_6 =(Q16A_Chik_6/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_7 =(Q16A_Chik_7/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_8 =(Q16A_Chik_8/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_9 =(Q16A_Chik_9/ Q2_HEARD_Chik)*100;
per_Q16A_Clinic_All_Clear_1 =(Q16A_Clinic_All_Clear_1/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_10 =(Q16A_Clinic_All_Clear_10/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_11 =(Q16A_Clinic_All_Clear_11/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_12 =(Q16A_Clinic_All_Clear_12/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_13 =(Q16A_Clinic_All_Clear_13/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_14 =(Q16A_Clinic_All_Clear_14/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_15 =(Q16A_Clinic_All_Clear_15/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_16 =(Q16A_Clinic_All_Clear_16/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_2 =(Q16A_Clinic_All_Clear_2/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_3 =(Q16A_Clinic_All_Clear_3/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_4 =(Q16A_Clinic_All_Clear_4/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_5 =(Q16A_Clinic_All_Clear_5/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_6 =(Q16A_Clinic_All_Clear_6/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_7 =(Q16A_Clinic_All_Clear_7/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_8 =(Q16A_Clinic_All_Clear_8/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_9 =(Q16A_Clinic_All_Clear_9/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_Plus_1 =(Q16A_Clinic_Plus_1/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_10 =(Q16A_Clinic_Plus_10/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_11 =(Q16A_Clinic_Plus_11/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_12 =(Q16A_Clinic_Plus_12/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_13 =(Q16A_Clinic_Plus_13/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_14 =(Q16A_Clinic_Plus_14/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_15 =(Q16A_Clinic_Plus_15/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_16 =(Q16A_Clinic_Plus_16/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_2 =(Q16A_Clinic_Plus_2/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_3 =(Q16A_Clinic_Plus_3/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_4 =(Q16A_Clinic_Plus_4/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_5 =(Q16A_Clinic_Plus_5/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_6 =(Q16A_Clinic_Plus_6/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_7 =(Q16A_Clinic_Plus_7/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_8 =(Q16A_Clinic_Plus_8/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_9 =(Q16A_Clinic_Plus_9/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Dabur_Vatika_A_D_1 =(Q16A_Dabur_Vatika_A_D_1/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_10 =(Q16A_Dabur_Vatika_A_D_10/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_11 =(Q16A_Dabur_Vatika_A_D_11/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_12 =(Q16A_Dabur_Vatika_A_D_12/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_13 =(Q16A_Dabur_Vatika_A_D_13/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_14 =(Q16A_Dabur_Vatika_A_D_14/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_15 =(Q16A_Dabur_Vatika_A_D_15/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_16 =(Q16A_Dabur_Vatika_A_D_16/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_2 =(Q16A_Dabur_Vatika_A_D_2/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_3 =(Q16A_Dabur_Vatika_A_D_3/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_4 =(Q16A_Dabur_Vatika_A_D_4/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_5 =(Q16A_Dabur_Vatika_A_D_5/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_6 =(Q16A_Dabur_Vatika_A_D_6/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_7 =(Q16A_Dabur_Vatika_A_D_7/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_8 =(Q16A_Dabur_Vatika_A_D_8/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_9 =(Q16A_Dabur_Vatika_A_D_9/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dove_1 =(Q16A_Dove_1/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_10 =(Q16A_Dove_10/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_11 =(Q16A_Dove_11/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_12 =(Q16A_Dove_12/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_13 =(Q16A_Dove_13/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_14 =(Q16A_Dove_14/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_15 =(Q16A_Dove_15/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_16 =(Q16A_Dove_16/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_2 =(Q16A_Dove_2/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_3 =(Q16A_Dove_3/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_4 =(Q16A_Dove_4/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_5 =(Q16A_Dove_5/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_6 =(Q16A_Dove_6/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_7 =(Q16A_Dove_7/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_8 =(Q16A_Dove_8/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_9 =(Q16A_Dove_9/ Q2_HEARD_Dove)*100;
per_Q16A_Essenza_1 =(Q16A_Essenza_1/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_10 =(Q16A_Essenza_10/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_11 =(Q16A_Essenza_11/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_12 =(Q16A_Essenza_12/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_13 =(Q16A_Essenza_13/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_14 =(Q16A_Essenza_14/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_15 =(Q16A_Essenza_15/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_16 =(Q16A_Essenza_16/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_2 =(Q16A_Essenza_2/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_3 =(Q16A_Essenza_3/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_4 =(Q16A_Essenza_4/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_5 =(Q16A_Essenza_5/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_6 =(Q16A_Essenza_6/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_7 =(Q16A_Essenza_7/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_8 =(Q16A_Essenza_8/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_9 =(Q16A_Essenza_9/Q2_HEARD_Essenza)*100;
per_Q16A_Fiama_1 =(Q16A_Fiama_1/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_10 =(Q16A_Fiama_10/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_11 =(Q16A_Fiama_11/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_12 =(Q16A_Fiama_12/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_13 =(Q16A_Fiama_13/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_14 =(Q16A_Fiama_14/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_15 =(Q16A_Fiama_15/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_16 =(Q16A_Fiama_16/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_2 =(Q16A_Fiama_2/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_3 =(Q16A_Fiama_3/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_4 =(Q16A_Fiama_4/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_5 =(Q16A_Fiama_5/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_6 =(Q16A_Fiama_6/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_7 =(Q16A_Fiama_7/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_8 =(Q16A_Fiama_8/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_9 =(Q16A_Fiama_9/ Q2_HEARD_Fiama)*100;
per_Q16A_Garnier_1 =(Q16A_Garnier_1/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_10 =(Q16A_Garnier_10/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_11 =(Q16A_Garnier_11/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_12 =(Q16A_Garnier_12/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_13 =(Q16A_Garnier_13/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_14 =(Q16A_Garnier_14/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_15 =(Q16A_Garnier_15/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_16 =(Q16A_Garnier_16/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_2 =(Q16A_Garnier_2/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_3 =(Q16A_Garnier_3/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_4 =(Q16A_Garnier_4/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_5 =(Q16A_Garnier_5/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_6 =(Q16A_Garnier_6/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_7 =(Q16A_Garnier_7/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_8 =(Q16A_Garnier_8/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_9 =(Q16A_Garnier_9/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_A_D_1 =(Q16A_Garnier_A_D_1/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_10 =(Q16A_Garnier_A_D_10/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_11 =(Q16A_Garnier_A_D_11/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_12 =(Q16A_Garnier_A_D_12/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_13 =(Q16A_Garnier_A_D_13/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_14 =(Q16A_Garnier_A_D_14/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_15 =(Q16A_Garnier_A_D_15/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_16 =(Q16A_Garnier_A_D_16/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_2 =(Q16A_Garnier_A_D_2/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_3 =(Q16A_Garnier_A_D_3/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_4 =(Q16A_Garnier_A_D_4/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_5 =(Q16A_Garnier_A_D_5/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_6 =(Q16A_Garnier_A_D_6/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_7 =(Q16A_Garnier_A_D_7/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_8 =(Q16A_Garnier_A_D_8/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_9 =(Q16A_Garnier_A_D_9/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Head_Shoulder_1 =(Q16A_Head_Shoulder_1/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_10 =(Q16A_Head_Shoulder_10/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_11 =(Q16A_Head_Shoulder_11/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_12 =(Q16A_Head_Shoulder_12/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_13 =(Q16A_Head_Shoulder_13/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_14 =(Q16A_Head_Shoulder_14/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_15 =(Q16A_Head_Shoulder_15/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_16 =(Q16A_Head_Shoulder_16/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_2 =(Q16A_Head_Shoulder_2/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_3 =(Q16A_Head_Shoulder_3/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_4 =(Q16A_Head_Shoulder_4/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_5 =(Q16A_Head_Shoulder_5/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_6 =(Q16A_Head_Shoulder_6/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_7 =(Q16A_Head_Shoulder_7/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_8 =(Q16A_Head_Shoulder_8/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_9 =(Q16A_Head_Shoulder_9/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Lux_1 =(Q16A_Lux_1/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_10 =(Q16A_Lux_10/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_11 =(Q16A_Lux_11/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_12 =(Q16A_Lux_12/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_13 =(Q16A_Lux_13/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_14 =(Q16A_Lux_14/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_15 =(Q16A_Lux_15/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_16 =(Q16A_Lux_16/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_2 =(Q16A_Lux_2/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_3 =(Q16A_Lux_3/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_4 =(Q16A_Lux_4/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_5 =(Q16A_Lux_5/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_6 =(Q16A_Lux_6/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_7 =(Q16A_Lux_7/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_8 =(Q16A_Lux_8/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_9 =(Q16A_Lux_9/ Q2_HEARD_Lux)*100;
per_Q16A_Pantene_1 =(Q16A_Pantene_1/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_10 =(Q16A_Pantene_10/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_11 =(Q16A_Pantene_11/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_12 =(Q16A_Pantene_12/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_13 =(Q16A_Pantene_13/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_14 =(Q16A_Pantene_14/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_15 =(Q16A_Pantene_15/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_16 =(Q16A_Pantene_16/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_2 =(Q16A_Pantene_2/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_3 =(Q16A_Pantene_3/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_4 =(Q16A_Pantene_4/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_5 =(Q16A_Pantene_5/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_6 =(Q16A_Pantene_6/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_7 =(Q16A_Pantene_7/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_8 =(Q16A_Pantene_8/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_9 =(Q16A_Pantene_9/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_A_D_1 =(Q16A_Pantene_A_D_1/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_10 =(Q16A_Pantene_A_D_10/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_11 =(Q16A_Pantene_A_D_11/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_12 =(Q16A_Pantene_A_D_12/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_13 =(Q16A_Pantene_A_D_13/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_14 =(Q16A_Pantene_A_D_14/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_15 =(Q16A_Pantene_A_D_15/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_16 =(Q16A_Pantene_A_D_16/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_2 =(Q16A_Pantene_A_D_2/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_3 =(Q16A_Pantene_A_D_3/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_4 =(Q16A_Pantene_A_D_4/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_5 =(Q16A_Pantene_A_D_5/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_6 =(Q16A_Pantene_A_D_6/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_7 =(Q16A_Pantene_A_D_7/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_8 =(Q16A_Pantene_A_D_8/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_9 =(Q16A_Pantene_A_D_9/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Sunsilk_1 =(Q16A_Sunsilk_1/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_10 =(Q16A_Sunsilk_10/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_11 =(Q16A_Sunsilk_11/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_12 =(Q16A_Sunsilk_12/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_13 =(Q16A_Sunsilk_13/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_14 =(Q16A_Sunsilk_14/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_15 =(Q16A_Sunsilk_15/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_16 =(Q16A_Sunsilk_16/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_2 =(Q16A_Sunsilk_2/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_3 =(Q16A_Sunsilk_3/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_4 =(Q16A_Sunsilk_4/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_5 =(Q16A_Sunsilk_5/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_6 =(Q16A_Sunsilk_6/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_7 =(Q16A_Sunsilk_7/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_8 =(Q16A_Sunsilk_8/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_9 =(Q16A_Sunsilk_9/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_A_D_1 =(Q16A_Sunsilk_A_D_1/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_10 =(Q16A_Sunsilk_A_D_10/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_11 =(Q16A_Sunsilk_A_D_11/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_12 =(Q16A_Sunsilk_A_D_12/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_13 =(Q16A_Sunsilk_A_D_13/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_14 =(Q16A_Sunsilk_A_D_14/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_15 =(Q16A_Sunsilk_A_D_15/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_16 =(Q16A_Sunsilk_A_D_16/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_2 =(Q16A_Sunsilk_A_D_2/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_3 =(Q16A_Sunsilk_A_D_3/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_4 =(Q16A_Sunsilk_A_D_4/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_5 =(Q16A_Sunsilk_A_D_5/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_6 =(Q16A_Sunsilk_A_D_6/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_7 =(Q16A_Sunsilk_A_D_7/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_8 =(Q16A_Sunsilk_A_D_8/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_9 =(Q16A_Sunsilk_A_D_9/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Ultra_Doux_1 =(Q16A_Ultra_Doux_1/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_10 =(Q16A_Ultra_Doux_10/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_11 =(Q16A_Ultra_Doux_11/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_12 =(Q16A_Ultra_Doux_12/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_13 =(Q16A_Ultra_Doux_13/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_14 =(Q16A_Ultra_Doux_14/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_15 =(Q16A_Ultra_Doux_15/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_16 =(Q16A_Ultra_Doux_16/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_2 =(Q16A_Ultra_Doux_2/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_3 =(Q16A_Ultra_Doux_3/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_4 =(Q16A_Ultra_Doux_4/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_5 =(Q16A_Ultra_Doux_5/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_6 =(Q16A_Ultra_Doux_6/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_7 =(Q16A_Ultra_Doux_7/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_8 =(Q16A_Ultra_Doux_8/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_9 =(Q16A_Ultra_Doux_9/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Vivel_1 =(Q16A_Vivel_1/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_10 =(Q16A_Vivel_10/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_11 =(Q16A_Vivel_11/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_12 =(Q16A_Vivel_12/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_13 =(Q16A_Vivel_13/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_14 =(Q16A_Vivel_14/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_15 =(Q16A_Vivel_15/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_16 =(Q16A_Vivel_16/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_2 =(Q16A_Vivel_2/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_3 =(Q16A_Vivel_3/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_4 =(Q16A_Vivel_4/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_5 =(Q16A_Vivel_5/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_6 =(Q16A_Vivel_6/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_7 =(Q16A_Vivel_7/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_8 =(Q16A_Vivel_8/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_9 =(Q16A_Vivel_9/ Q2_HEARD_Vivel)*100;
per_Q16B_Chik_1 =(Q16B_Chik_1/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_10 =(Q16B_Chik_10/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_11 =(Q16B_Chik_11/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_12 =(Q16B_Chik_12/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_2 =(Q16B_Chik_2/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_3 =(Q16B_Chik_3/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_4 =(Q16B_Chik_4/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_5 =(Q16B_Chik_5/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_6 =(Q16B_Chik_6/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_7 =(Q16B_Chik_7/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_8 =(Q16B_Chik_8/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_9 =(Q16B_Chik_9/ Q2_HEARD_Chik)*100;
per_Q16B_Clinic_All_Clear_1 =(Q16B_Clinic_All_Clear_1/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_10 =(Q16B_Clinic_All_Clear_10/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_11 =(Q16B_Clinic_All_Clear_11/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_12 =(Q16B_Clinic_All_Clear_12/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_2 =(Q16B_Clinic_All_Clear_2/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_3 =(Q16B_Clinic_All_Clear_3/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_4 =(Q16B_Clinic_All_Clear_4/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_5 =(Q16B_Clinic_All_Clear_5/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_6 =(Q16B_Clinic_All_Clear_6/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_7 =(Q16B_Clinic_All_Clear_7/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_8 =(Q16B_Clinic_All_Clear_8/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_9 =(Q16B_Clinic_All_Clear_9/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_Plus_1 =(Q16B_Clinic_Plus_1/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_10 =(Q16B_Clinic_Plus_10/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_11 =(Q16B_Clinic_Plus_11/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_12 =(Q16B_Clinic_Plus_12/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_2 =(Q16B_Clinic_Plus_2/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_3 =(Q16B_Clinic_Plus_3/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_4 =(Q16B_Clinic_Plus_4/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_5 =(Q16B_Clinic_Plus_5/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_6 =(Q16B_Clinic_Plus_6/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_7 =(Q16B_Clinic_Plus_7/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_8 =(Q16B_Clinic_Plus_8/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_9 =(Q16B_Clinic_Plus_9/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Dabur_Vatika_A_D_1 =(Q16B_Dabur_Vatika_A_D_1/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_10 =(Q16B_Dabur_Vatika_A_D_10/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_11 =(Q16B_Dabur_Vatika_A_D_11/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_12 =(Q16B_Dabur_Vatika_A_D_12/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_2 =(Q16B_Dabur_Vatika_A_D_2/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_3 =(Q16B_Dabur_Vatika_A_D_3/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_4 =(Q16B_Dabur_Vatika_A_D_4/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_5 =(Q16B_Dabur_Vatika_A_D_5/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_6 =(Q16B_Dabur_Vatika_A_D_6/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_7 =(Q16B_Dabur_Vatika_A_D_7/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_8 =(Q16B_Dabur_Vatika_A_D_8/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_9 =(Q16B_Dabur_Vatika_A_D_9/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dove_1 =(Q16B_Dove_1/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_10 =(Q16B_Dove_10/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_11 =(Q16B_Dove_11/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_12 =(Q16B_Dove_12/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_2 =(Q16B_Dove_2/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_3 =(Q16B_Dove_3/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_4 =(Q16B_Dove_4/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_5 =(Q16B_Dove_5/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_6 =(Q16B_Dove_6/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_7 =(Q16B_Dove_7/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_8 =(Q16B_Dove_8/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_9 =(Q16B_Dove_9/ Q2_HEARD_Dove)*100;
per_Q16B_Essenza_1 =(Q16B_Essenza_1/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_10 =(Q16B_Essenza_10/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_11 =(Q16B_Essenza_11/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_12 =(Q16B_Essenza_12/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_2 =(Q16B_Essenza_2/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_3 =(Q16B_Essenza_3/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_4 =(Q16B_Essenza_4/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_5 =(Q16B_Essenza_5/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_6 =(Q16B_Essenza_6/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_7 =(Q16B_Essenza_7/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_8 =(Q16B_Essenza_8/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_9 =(Q16B_Essenza_9/Q2_HEARD_Essenza)*100;
per_Q16B_Fiama_1 =(Q16B_Fiama_1/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_10 =(Q16B_Fiama_10/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_11 =(Q16B_Fiama_11/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_12 =(Q16B_Fiama_12/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_2 =(Q16B_Fiama_2/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_3 =(Q16B_Fiama_3/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_4 =(Q16B_Fiama_4/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_5 =(Q16B_Fiama_5/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_6 =(Q16B_Fiama_6/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_7 =(Q16B_Fiama_7/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_8 =(Q16B_Fiama_8/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_9 =(Q16B_Fiama_9/ Q2_HEARD_Fiama)*100;
per_Q16B_Garnier_1 =(Q16B_Garnier_1/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_10 =(Q16B_Garnier_10/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_11 =(Q16B_Garnier_11/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_12 =(Q16B_Garnier_12/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_2 =(Q16B_Garnier_2/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_3 =(Q16B_Garnier_3/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_4 =(Q16B_Garnier_4/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_5 =(Q16B_Garnier_5/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_6 =(Q16B_Garnier_6/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_7 =(Q16B_Garnier_7/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_8 =(Q16B_Garnier_8/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_9 =(Q16B_Garnier_9/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_A_D_1 =(Q16B_Garnier_A_D_1/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_10 =(Q16B_Garnier_A_D_10/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_11 =(Q16B_Garnier_A_D_11/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_12 =(Q16B_Garnier_A_D_12/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_2 =(Q16B_Garnier_A_D_2/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_3 =(Q16B_Garnier_A_D_3/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_4 =(Q16B_Garnier_A_D_4/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_5 =(Q16B_Garnier_A_D_5/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_6 =(Q16B_Garnier_A_D_6/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_7 =(Q16B_Garnier_A_D_7/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_8 =(Q16B_Garnier_A_D_8/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_9 =(Q16B_Garnier_A_D_9/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Head_Shoulder_1 =(Q16B_Head_Shoulder_1/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_10 =(Q16B_Head_Shoulder_10/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_11 =(Q16B_Head_Shoulder_11/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_12 =(Q16B_Head_Shoulder_12/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_2 =(Q16B_Head_Shoulder_2/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_3 =(Q16B_Head_Shoulder_3/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_4 =(Q16B_Head_Shoulder_4/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_5 =(Q16B_Head_Shoulder_5/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_6 =(Q16B_Head_Shoulder_6/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_7 =(Q16B_Head_Shoulder_7/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_8 =(Q16B_Head_Shoulder_8/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_9 =(Q16B_Head_Shoulder_9/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Lux_1 =(Q16B_Lux_1/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_10 =(Q16B_Lux_10/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_11 =(Q16B_Lux_11/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_12 =(Q16B_Lux_12/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_2 =(Q16B_Lux_2/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_3 =(Q16B_Lux_3/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_4 =(Q16B_Lux_4/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_5 =(Q16B_Lux_5/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_6 =(Q16B_Lux_6/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_7 =(Q16B_Lux_7/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_8 =(Q16B_Lux_8/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_9 =(Q16B_Lux_9/ Q2_HEARD_Lux)*100;
per_Q16B_Pantene_1 =(Q16B_Pantene_1/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_10 =(Q16B_Pantene_10/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_11 =(Q16B_Pantene_11/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_12 =(Q16B_Pantene_12/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_2 =(Q16B_Pantene_2/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_3 =(Q16B_Pantene_3/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_4 =(Q16B_Pantene_4/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_5 =(Q16B_Pantene_5/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_6 =(Q16B_Pantene_6/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_7 =(Q16B_Pantene_7/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_8 =(Q16B_Pantene_8/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_9 =(Q16B_Pantene_9/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_A_D_1 =(Q16B_Pantene_A_D_1/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_10 =(Q16B_Pantene_A_D_10/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_11 =(Q16B_Pantene_A_D_11/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_12 =(Q16B_Pantene_A_D_12/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_2 =(Q16B_Pantene_A_D_2/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_3 =(Q16B_Pantene_A_D_3/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_4 =(Q16B_Pantene_A_D_4/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_5 =(Q16B_Pantene_A_D_5/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_6 =(Q16B_Pantene_A_D_6/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_7 =(Q16B_Pantene_A_D_7/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_8 =(Q16B_Pantene_A_D_8/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_9 =(Q16B_Pantene_A_D_9/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Sunsilk_1 =(Q16B_Sunsilk_1/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_10 =(Q16B_Sunsilk_10/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_11 =(Q16B_Sunsilk_11/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_12 =(Q16B_Sunsilk_12/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_2 =(Q16B_Sunsilk_2/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_3 =(Q16B_Sunsilk_3/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_4 =(Q16B_Sunsilk_4/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_5 =(Q16B_Sunsilk_5/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_6 =(Q16B_Sunsilk_6/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_7 =(Q16B_Sunsilk_7/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_8 =(Q16B_Sunsilk_8/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_9 =(Q16B_Sunsilk_9/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_A_D_1 =(Q16B_Sunsilk_A_D_1/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_10 =(Q16B_Sunsilk_A_D_10/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_11 =(Q16B_Sunsilk_A_D_11/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_12 =(Q16B_Sunsilk_A_D_12/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_2 =(Q16B_Sunsilk_A_D_2/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_3 =(Q16B_Sunsilk_A_D_3/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_4 =(Q16B_Sunsilk_A_D_4/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_5 =(Q16B_Sunsilk_A_D_5/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_6 =(Q16B_Sunsilk_A_D_6/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_7 =(Q16B_Sunsilk_A_D_7/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_8 =(Q16B_Sunsilk_A_D_8/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_9 =(Q16B_Sunsilk_A_D_9/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Ultra_Doux_1 =(Q16B_Ultra_Doux_1/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_10 =(Q16B_Ultra_Doux_10/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_11 =(Q16B_Ultra_Doux_11/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_12 =(Q16B_Ultra_Doux_12/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_2 =(Q16B_Ultra_Doux_2/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_3 =(Q16B_Ultra_Doux_3/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_4 =(Q16B_Ultra_Doux_4/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_5 =(Q16B_Ultra_Doux_5/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_6 =(Q16B_Ultra_Doux_6/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_7 =(Q16B_Ultra_Doux_7/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_8 =(Q16B_Ultra_Doux_8/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_9 =(Q16B_Ultra_Doux_9/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Vivel_1 =(Q16B_Vivel_1/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_10 =(Q16B_Vivel_10/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_11 =(Q16B_Vivel_11/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_12 =(Q16B_Vivel_12/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_2 =(Q16B_Vivel_2/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_3 =(Q16B_Vivel_3/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_4 =(Q16B_Vivel_4/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_5 =(Q16B_Vivel_5/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_6 =(Q16B_Vivel_6/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_7 =(Q16B_Vivel_7/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_8 =(Q16B_Vivel_8/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_9 =(Q16B_Vivel_9/ Q2_HEARD_Vivel)*100;
per_Q17_A_Chik =(Q17_A_Chik/ flag)*100;
per_Q17_A_Clinic_All_Clear =(Q17_A_Clinic_All_Clear/ flag)*100;
per_Q17_A_Clinic_Plus =(Q17_A_Clinic_Plus/ flag)*100;
per_Q17_A_Dabur_Vatika_A_D =(Q17_A_Dabur_Vatika_A_D/ flag)*100;
per_Q17_A_Dove =(Q17_A_Dove/ flag)*100;
per_Q17_A_Essenza =(Q17_A_Essenza/ flag)*100;
per_Q17_A_Fiama =(Q17_A_Fiama/ flag)*100;
per_Q17_A_Garnier =(Q17_A_Garnier/ flag)*100;
per_Q17_A_Garnier_A_D =(Q17_A_Garnier_A_D/ flag)*100;
per_Q17_A_Head_Shoulder =(Q17_A_Head_Shoulder/ flag)*100;
per_Q17_A_Lux =(Q17_A_Lux/ flag)*100;
per_Q17_A_Pantene =(Q17_A_Pantene/ flag)*100;
per_Q17_A_Pantene_A_D =(Q17_A_Pantene_A_D/ flag)*100;
per_Q17_A_Sunsilk =(Q17_A_Sunsilk/ flag)*100;
per_Q17_A_Sunsilk_A_D =(Q17_A_Sunsilk_A_D/ flag)*100;
per_Q17_A_Ultra_Doux =(Q17_A_Ultra_Doux/ flag)*100;
per_Q17_A_Vivel =(Q17_A_Vivel/ flag)*100;
per_Q17b_Chik_1 =(Q17b_Chik_1/Q17_A_Chik)*100;
per_Q17b_Chik_2 =(Q17b_Chik_2/Q17_A_Chik)*100;
per_Q17b_Chik_3 =(Q17b_Chik_3/Q17_A_Chik)*100;
per_Q17b_Chik_4 =(Q17b_Chik_4/Q17_A_Chik)*100;
per_Q17b_Chik_5 =(Q17b_Chik_5/Q17_A_Chik)*100;
per_Q17b_Chik_6 =(Q17b_Chik_6/Q17_A_Chik)*100;
per_Q17b_Chik_7 =(Q17b_Chik_7/Q17_A_Chik)*100;
per_Q17b_Chik_8 =(Q17b_Chik_8/Q17_A_Chik)*100;
per_Q17b_Clinic_All_Clear_1 =(Q17b_Clinic_All_Clear_1/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_2 =(Q17b_Clinic_All_Clear_2/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_3 =(Q17b_Clinic_All_Clear_3/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_4 =(Q17b_Clinic_All_Clear_4/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_5 =(Q17b_Clinic_All_Clear_5/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_6 =(Q17b_Clinic_All_Clear_6/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_7 =(Q17b_Clinic_All_Clear_7/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_8 =(Q17b_Clinic_All_Clear_8/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_Plus_1 =(Q17b_Clinic_Plus_1/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_2 =(Q17b_Clinic_Plus_2/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_3 =(Q17b_Clinic_Plus_3/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_4 =(Q17b_Clinic_Plus_4/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_5 =(Q17b_Clinic_Plus_5/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_6 =(Q17b_Clinic_Plus_6/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_7 =(Q17b_Clinic_Plus_7/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_8 =(Q17b_Clinic_Plus_8/Q17_A_Clinic_Plus)*100;
per_Q17b_Dabur_Vatika_A_D_1 =(Q17b_Dabur_Vatika_A_D_1/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_2 =(Q17b_Dabur_Vatika_A_D_2/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_3 =(Q17b_Dabur_Vatika_A_D_3/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_4 =(Q17b_Dabur_Vatika_A_D_4/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_5 =(Q17b_Dabur_Vatika_A_D_5/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_6 =(Q17b_Dabur_Vatika_A_D_6/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_7 =(Q17b_Dabur_Vatika_A_D_7/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_8 =(Q17b_Dabur_Vatika_A_D_8/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dove_1 =(Q17b_Dove_1/Q17_A_Dove)*100;
per_Q17b_Dove_2 =(Q17b_Dove_2/Q17_A_Dove)*100;
per_Q17b_Dove_3 =(Q17b_Dove_3/Q17_A_Dove)*100;
per_Q17b_Dove_4 =(Q17b_Dove_4/Q17_A_Dove)*100;
per_Q17b_Dove_5 =(Q17b_Dove_5/Q17_A_Dove)*100;
per_Q17b_Dove_6 =(Q17b_Dove_6/Q17_A_Dove)*100;
per_Q17b_Dove_7 =(Q17b_Dove_7/Q17_A_Dove)*100;
per_Q17b_Dove_8 =(Q17b_Dove_8/Q17_A_Dove)*100;
per_Q17b_Essenza_1 =(Q17b_Essenza_1/Q17_A_Essenza)*100;
per_Q17b_Essenza_2 =(Q17b_Essenza_2/Q17_A_Essenza)*100;
per_Q17b_Essenza_3 =(Q17b_Essenza_3/Q17_A_Essenza)*100;
per_Q17b_Essenza_4 =(Q17b_Essenza_4/Q17_A_Essenza)*100;
per_Q17b_Essenza_5 =(Q17b_Essenza_5/Q17_A_Essenza)*100;
per_Q17b_Essenza_6 =(Q17b_Essenza_6/Q17_A_Essenza)*100;
per_Q17b_Essenza_7 =(Q17b_Essenza_7/Q17_A_Essenza)*100;
per_Q17b_Essenza_8 =(Q17b_Essenza_8/Q17_A_Essenza)*100;
per_Q17b_Fiama_1 =(Q17b_Fiama_1/Q17_A_Fiama)*100;
per_Q17b_Fiama_2 =(Q17b_Fiama_2/Q17_A_Fiama)*100;
per_Q17b_Fiama_3 =(Q17b_Fiama_3/Q17_A_Fiama)*100;
per_Q17b_Fiama_4 =(Q17b_Fiama_4/Q17_A_Fiama)*100;
per_Q17b_Fiama_5 =(Q17b_Fiama_5/Q17_A_Fiama)*100;
per_Q17b_Fiama_6 =(Q17b_Fiama_6/Q17_A_Fiama)*100;
per_Q17b_Fiama_7 =(Q17b_Fiama_7/Q17_A_Fiama)*100;
per_Q17b_Fiama_8 =(Q17b_Fiama_8/Q17_A_Fiama)*100;
per_Q17b_Garnier_1 =(Q17b_Garnier_1/Q17_A_Garnier)*100;
per_Q17b_Garnier_2 =(Q17b_Garnier_2/Q17_A_Garnier)*100;
per_Q17b_Garnier_3 =(Q17b_Garnier_3/Q17_A_Garnier)*100;
per_Q17b_Garnier_4 =(Q17b_Garnier_4/Q17_A_Garnier)*100;
per_Q17b_Garnier_5 =(Q17b_Garnier_5/Q17_A_Garnier)*100;
per_Q17b_Garnier_6 =(Q17b_Garnier_6/Q17_A_Garnier)*100;
per_Q17b_Garnier_7 =(Q17b_Garnier_7/Q17_A_Garnier)*100;
per_Q17b_Garnier_8 =(Q17b_Garnier_8/Q17_A_Garnier)*100;
per_Q17b_Garnier_A_D_1 =(Q17b_Garnier_A_D_1/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_2 =(Q17b_Garnier_A_D_2/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_3 =(Q17b_Garnier_A_D_3/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_4 =(Q17b_Garnier_A_D_4/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_5 =(Q17b_Garnier_A_D_5/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_6 =(Q17b_Garnier_A_D_6/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_7 =(Q17b_Garnier_A_D_7/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_8 =(Q17b_Garnier_A_D_8/Q17_A_Garnier_A_D)*100;
per_Q17b_Head_Shoulder_1 =(Q17b_Head_Shoulder_1/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_2 =(Q17b_Head_Shoulder_2/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_3 =(Q17b_Head_Shoulder_3/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_4 =(Q17b_Head_Shoulder_4/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_5 =(Q17b_Head_Shoulder_5/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_6 =(Q17b_Head_Shoulder_6/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_7 =(Q17b_Head_Shoulder_7/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_8 =(Q17b_Head_Shoulder_8/Q17_A_Head_Shoulder)*100;
per_Q17b_Lux_1 =(Q17b_Lux_1/Q17_A_Lux)*100;
per_Q17b_Lux_2 =(Q17b_Lux_2/Q17_A_Lux)*100;
per_Q17b_Lux_3 =(Q17b_Lux_3/Q17_A_Lux)*100;
per_Q17b_Lux_4 =(Q17b_Lux_4/Q17_A_Lux)*100;
per_Q17b_Lux_5 =(Q17b_Lux_5/Q17_A_Lux)*100;
per_Q17b_Lux_6 =(Q17b_Lux_6/Q17_A_Lux)*100;
per_Q17b_Lux_7 =(Q17b_Lux_7/Q17_A_Lux)*100;
per_Q17b_Lux_8 =(Q17b_Lux_8/Q17_A_Lux)*100;
per_Q17b_Pantene_1 =(Q17b_Pantene_1/Q17_A_Pantene)*100;
per_Q17b_Pantene_2 =(Q17b_Pantene_2/Q17_A_Pantene)*100;
per_Q17b_Pantene_3 =(Q17b_Pantene_3/Q17_A_Pantene)*100;
per_Q17b_Pantene_4 =(Q17b_Pantene_4/Q17_A_Pantene)*100;
per_Q17b_Pantene_5 =(Q17b_Pantene_5/Q17_A_Pantene)*100;
per_Q17b_Pantene_6 =(Q17b_Pantene_6/Q17_A_Pantene)*100;
per_Q17b_Pantene_7 =(Q17b_Pantene_7/Q17_A_Pantene)*100;
per_Q17b_Pantene_8 =(Q17b_Pantene_8/Q17_A_Pantene)*100;
per_Q17b_Pantene_A_D_1 =(Q17b_Pantene_A_D_1/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_2 =(Q17b_Pantene_A_D_2/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_3 =(Q17b_Pantene_A_D_3/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_4 =(Q17b_Pantene_A_D_4/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_5 =(Q17b_Pantene_A_D_5/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_6 =(Q17b_Pantene_A_D_6/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_7 =(Q17b_Pantene_A_D_7/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_8 =(Q17b_Pantene_A_D_8/Q17_A_Pantene_A_D)*100;
per_Q17b_Sunsilk_1 =(Q17b_Sunsilk_1/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_2 =(Q17b_Sunsilk_2/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_3 =(Q17b_Sunsilk_3/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_4 =(Q17b_Sunsilk_4/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_5 =(Q17b_Sunsilk_5/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_6 =(Q17b_Sunsilk_6/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_7 =(Q17b_Sunsilk_7/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_8 =(Q17b_Sunsilk_8/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_A_D_1 =(Q17b_Sunsilk_A_D_1/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_2 =(Q17b_Sunsilk_A_D_2/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_3 =(Q17b_Sunsilk_A_D_3/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_4 =(Q17b_Sunsilk_A_D_4/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_5 =(Q17b_Sunsilk_A_D_5/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_6 =(Q17b_Sunsilk_A_D_6/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_7 =(Q17b_Sunsilk_A_D_7/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_8 =(Q17b_Sunsilk_A_D_8/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Ultra_Doux_1 =(Q17b_Ultra_Doux_1/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_2 =(Q17b_Ultra_Doux_2/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_3 =(Q17b_Ultra_Doux_3/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_4 =(Q17b_Ultra_Doux_4/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_5 =(Q17b_Ultra_Doux_5/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_6 =(Q17b_Ultra_Doux_6/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_7 =(Q17b_Ultra_Doux_7/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_8 =(Q17b_Ultra_Doux_8/Q17_A_Ultra_Doux)*100;
per_Q17b_Vivel_1 =(Q17b_Vivel_1/Q17_A_Vivel)*100;
per_Q17b_Vivel_2 =(Q17b_Vivel_2/Q17_A_Vivel)*100;
per_Q17b_Vivel_3 =(Q17b_Vivel_3/Q17_A_Vivel)*100;
per_Q17b_Vivel_4 =(Q17b_Vivel_4/Q17_A_Vivel)*100;
per_Q17b_Vivel_5 =(Q17b_Vivel_5/Q17_A_Vivel)*100;
per_Q17b_Vivel_6 =(Q17b_Vivel_6/Q17_A_Vivel)*100;
per_Q17b_Vivel_7 =(Q17b_Vivel_7/Q17_A_Vivel)*100;
per_Q17b_Vivel_8 =(Q17b_Vivel_8/Q17_A_Vivel)*100;
per_Q17b1_Fiama_1 =(Q17b1_Fiama_1/Q17_A_Fiama)*100;
per_Q17b1_Fiama_2 =(Q17b1_Fiama_2/Q17_A_Fiama)*100;
per_Q17b1_Fiama_3 =(Q17b1_Fiama_3/Q17_A_Fiama)*100;
per_Q17b1_Fiama_4 =(Q17b1_Fiama_4/Q17_A_Fiama)*100;
per_Q17b1_Fiama_5 =(Q17b1_Fiama_5/Q17_A_Fiama)*100;
per_Q17b1_Fiama_6 =(Q17b1_Fiama_6/Q17_A_Fiama)*100;
per_Q17b1_Fiama_7 =(Q17b1_Fiama_7/Q17_A_Fiama)*100;
per_Q17b1_vivel_1 =(Q17b1_vivel_1/Q17_A_Vivel)*100;
per_Q17b1_vivel_2 =(Q17b1_vivel_2/Q17_A_Vivel)*100;
per_Q17b1_vivel_3 =(Q17b1_vivel_3/Q17_A_Vivel)*100;
per_Q17b1_vivel_4 =(Q17b1_vivel_4/Q17_A_Vivel)*100;
per_Q17b1_vivel_5 =(Q17b1_vivel_5/Q17_A_Vivel)*100;
per_Q17b1_vivel_6 =(Q17b1_vivel_6/Q17_A_Vivel)*100;
per_Q17b1_vivel_7 =(Q17b1_vivel_7/Q17_A_Vivel)*100;
per_Q5C_Spon_Chik = (Q5C_Spon_Chik / flag ) *100 ;
per_Q5C_Spon_Clinic_All_Clear = (Q5C_Spon_Clinic_All_Clear / flag ) *100 ;
per_Q5C_Spon_Clinic_Plus = (Q5C_Spon_Clinic_Plus / flag ) *100 ;
per_Q5C_Spon_Dabur_Vatika_A_D = (Q5C_Spon_Dabur_Vatika_A_D / flag ) *100 ;
per_Q5C_Spon_Dove = (Q5C_Spon_Dove / flag ) *100 ;
per_Q5C_Spon_Essenza = (Q5C_Spon_Essenza / flag ) *100 ;
per_Q5C_Spon_Fiama = (Q5C_Spon_Fiama / flag ) *100 ;
per_Q5C_Spon_Garnier = (Q5C_Spon_Garnier / flag ) *100 ;
per_Q5C_Spon_Garnier_A_D = (Q5C_Spon_Garnier_A_D / flag ) *100 ;
per_Q5C_Spon_Head_Shoulder = (Q5C_Spon_Head_Shoulder / flag ) *100 ;
per_Q5C_Spon_Lux = (Q5C_Spon_Lux / flag ) *100 ;
per_Q5C_Spon_Pantene = (Q5C_Spon_Pantene / flag ) *100 ;
per_Q5C_Spon_Pantene_A_D = (Q5C_Spon_Pantene_A_D / flag ) *100 ;
per_Q5C_Spon_Sunsilk = (Q5C_Spon_Sunsilk / flag ) *100 ;
per_Q5C_Spon_Sunsilk_A_D = (Q5C_Spon_Sunsilk_A_D / flag ) *100 ;
per_Q5C_Spon_Ultra_Doux = (Q5C_Spon_Ultra_Doux / flag ) *100 ;
per_Q5C_Spon_Vivel = (Q5C_Spon_Vivel / flag ) *100 ;
per_Q5C_TOM_Chik = (Q5C_TOM_Chik / flag ) *100 ;
per_Q5C_TOM_Clinic_All_Clear = (Q5C_TOM_Clinic_All_Clear / flag ) *100 ;
per_Q5C_TOM_Clinic_Plus = (Q5C_TOM_Clinic_Plus / flag ) *100 ;
per_Q5C_TOM_Dabur_Vatika_A_D = (Q5C_TOM_Dabur_Vatika_A_D / flag ) *100 ;
per_Q5C_TOM_Dove = (Q5C_TOM_Dove / flag ) *100 ;
per_Q5C_TOM_Essenza = (Q5C_TOM_Essenza / flag ) *100 ;
per_Q5C_TOM_Fiama = (Q5C_TOM_Fiama / flag ) *100 ;
per_Q5C_TOM_Garnier = (Q5C_TOM_Garnier / flag ) *100 ;
per_Q5C_TOM_Garnier_A_D = (Q5C_TOM_Garnier_A_D / flag ) *100 ;
per_Q5C_TOM_Head_Shoulder = (Q5C_TOM_Head_Shoulder / flag ) *100 ;
per_Q5C_TOM_Lux = (Q5C_TOM_Lux / flag ) *100 ;
per_Q5C_TOM_Pantene = (Q5C_TOM_Pantene / flag ) *100 ;
per_Q5C_TOM_Pantene_A_D = (Q5C_TOM_Pantene_A_D / flag ) *100 ;
per_Q5C_TOM_Sunsilk = (Q5C_TOM_Sunsilk / flag ) *100 ;
per_Q5C_TOM_Sunsilk_A_D = (Q5C_TOM_Sunsilk_A_D / flag ) *100 ;
per_Q5C_TOM_Ultra_Doux = (Q5C_TOM_Ultra_Doux / flag ) *100 ;
per_Q5C_TOM_Vivel = (Q5C_TOM_Vivel / flag ) *100 ;

run;
proc contents data=v1.Shampoos_rollup_per;
ods output variables;
run;
data v1.Shampoos_rollup_per_select_vars;
set v1.Shampoos_rollup_per;
keep
CEN
WK_Yrwk
WK_Yryr
per_HUL_int_std
per_HUL_premium
per_HUL_quality
per_HUL_relevant
per_HUL_trust
per_ITC_int_std
per_ITC_premium
per_ITC_quality
per_ITC_relevant
per_ITC_trust
per_Q14_Dove_TB
per_Q16A_Dove_1
per_Q16A_Dove_2
per_Q16A_Dove_3
per_Q16A_Dove_4
per_Q16A_Dove_5
per_Q16A_Dove_6
per_Q16A_Dove_7
per_Q16A_Dove_8
per_Q16A_Dove_9
per_Q16A_Dove_10
per_Q16A_Dove_11
per_Q16A_Dove_12
per_Q16A_Dove_13
per_Q16A_Dove_14
per_Q16A_Dove_15
per_Q16A_Dove_16
per_Q16B_Dove_1
per_Q16B_Dove_2
per_Q16B_Dove_3
per_Q16B_Dove_4
per_Q16B_Dove_5
per_Q16B_Dove_6
per_Q16B_Dove_7
per_Q16B_Dove_8
per_Q16B_Dove_9
per_Q16B_Dove_10
per_Q16B_Dove_11
per_Q16B_Dove_12
per_Q17_A_Dove
per_Q17b_Dove_1
per_Q17b_Dove_2
per_Q17b_Dove_3
per_Q17b_Dove_4
per_Q17b_Dove_5
per_Q17b_Dove_6
per_Q17b_Dove_7
per_Q17b_Dove_8
per_Q2_HEARD_Dove
per_Q2_MOST_Dove
per_Q2_USED_Dove
per_Q5C_Spon_Dove
per_Q5C_TOM_Dove
per_Q14_Fiama_TB
per_Q16A_Fiama_1
per_Q16A_Fiama_2
per_Q16A_Fiama_3
per_Q16A_Fiama_4
per_Q16A_Fiama_5
per_Q16A_Fiama_6
per_Q16A_Fiama_7
per_Q16A_Fiama_8
per_Q16A_Fiama_9
per_Q16A_Fiama_10
per_Q16A_Fiama_11
per_Q16A_Fiama_12
per_Q16A_Fiama_13
per_Q16A_Fiama_14
per_Q16A_Fiama_15
per_Q16A_Fiama_16
per_Q16B_Fiama_1
per_Q16B_Fiama_2
per_Q16B_Fiama_3
per_Q16B_Fiama_4
per_Q16B_Fiama_5
per_Q16B_Fiama_6
per_Q16B_Fiama_7
per_Q16B_Fiama_8
per_Q16B_Fiama_9
per_Q16B_Fiama_10
per_Q16B_Fiama_11
per_Q16B_Fiama_12
per_Q17_A_Fiama
per_Q17b1_Fiama_1
per_Q17b1_Fiama_2
per_Q17b1_Fiama_3
per_Q17b1_Fiama_4
per_Q17b1_Fiama_5
per_Q17b1_Fiama_6
per_Q17b1_Fiama_7
per_Q17b_Fiama_1
per_Q17b_Fiama_2
per_Q17b_Fiama_3
per_Q17b_Fiama_4
per_Q17b_Fiama_5
per_Q17b_Fiama_6
per_Q17b_Fiama_7
per_Q17b_Fiama_8
per_Q2_HEARD_Fiama
per_Q2_MOST_Fiama
per_Q2_USED_Fiama
per_Q5C_Spon_Fiama
per_Q5C_TOM_Fiama
per_Q14_Pantene_TB
per_Q16A_Pantene_1
per_Q16A_Pantene_2
per_Q16A_Pantene_3
per_Q16A_Pantene_4
per_Q16A_Pantene_5
per_Q16A_Pantene_6
per_Q16A_Pantene_7
per_Q16A_Pantene_8
per_Q16A_Pantene_9
per_Q16A_Pantene_10
per_Q16A_Pantene_11
per_Q16A_Pantene_12
per_Q16A_Pantene_13
per_Q16A_Pantene_14
per_Q16A_Pantene_15
per_Q16A_Pantene_16
per_Q16B_Pantene_1
per_Q16B_Pantene_2
per_Q16B_Pantene_3
per_Q16B_Pantene_4
per_Q16B_Pantene_5
per_Q16B_Pantene_6
per_Q16B_Pantene_7
per_Q16B_Pantene_8
per_Q16B_Pantene_9
per_Q16B_Pantene_10
per_Q16B_Pantene_11
per_Q16B_Pantene_12
per_Q17b_Pantene_1
per_Q17b_Pantene_2
per_Q17b_Pantene_3
per_Q17b_Pantene_4
per_Q17b_Pantene_5
per_Q17b_Pantene_6
per_Q17b_Pantene_7
per_Q17b_Pantene_8
per_Q17_A_Pantene
per_Q2_HEARD_Pantene
per_Q2_MOST_Pantene
per_Q2_USED_Pantene
per_Q5C_Spon_Pantene
per_Q5C_TOM_Pantene
per_Q14_Garnier_TB
per_Q16A_Garnier_1
per_Q16A_Garnier_2
per_Q16A_Garnier_3
per_Q16A_Garnier_4
per_Q16A_Garnier_5
per_Q16A_Garnier_6
per_Q16A_Garnier_7
per_Q16A_Garnier_8
per_Q16A_Garnier_9
per_Q16A_Garnier_10
per_Q16A_Garnier_11
per_Q16A_Garnier_12
per_Q16A_Garnier_13
per_Q16A_Garnier_14
per_Q16A_Garnier_15
per_Q16A_Garnier_16
per_Q16B_Garnier_1
per_Q16B_Garnier_2
per_Q16B_Garnier_3
per_Q16B_Garnier_4
per_Q16B_Garnier_5
per_Q16B_Garnier_6
per_Q16B_Garnier_7
per_Q16B_Garnier_8
per_Q16B_Garnier_9
per_Q16B_Garnier_10
per_Q16B_Garnier_11
per_Q16B_Garnier_12
per_Q17_A_Garnier
per_Q17b_Garnier_1
per_Q17b_Garnier_2
per_Q17b_Garnier_3
per_Q17b_Garnier_4
per_Q17b_Garnier_5
per_Q17b_Garnier_6
per_Q17b_Garnier_7
per_Q17b_Garnier_8
per_Q2_HEARD_Garnier
per_Q2_MOST_Garnier
per_Q2_USED_Garnier
per_Q5C_Spon_Garnier
per_Q5C_TOM_Garnier
;run;


data v1.shampoos_aware_nt;
set v1.shampoos_final_selectvars;
if Q2_HEARD_Fiama=1 and (Q2_USED_Fiama=0 or Q2_USED_Fiama=.);run;
proc sort data=v1.shampoos_aware_nt;
by CEN
WK_Yryr
WK_Yrwk;
run;
data v1.shampoos_aware_nt;
set v1.shampoos_aware_nt;
flag=1;
run;
proc means data=v1.shampoos_aware_nt noprint;
by CEN
WK_Yryr
WK_Yrwk;
var Q2_HEARD_Clinic_All_Clear
Q2_HEARD_Clinic_Plus
Q2_HEARD_Dove
Q2_HEARD_Essenza
Q2_HEARD_Garnier
Q2_HEARD_Garnier_A_D
Q2_HEARD_Head_Shoulder
Q2_HEARD_Pantene
Q2_HEARD_Pantene_A_D
Q2_HEARD_Sunsilk
Q2_HEARD_Sunsilk_A_D
Q2_HEARD_Ultra_Doux
Q2_HEARD_Fiama
Q2_HEARD_Chik
Q2_HEARD_Lux
Q2_HEARD_Vivel
Q2_HEARD_Dabur_Vatika_A_D
Q2_USED_Clinic_All_Clear
Q2_USED_Clinic_Plus
Q2_USED_Dove
Q2_USED_Essenza
Q2_USED_Garnier
Q2_USED_Garnier_A_D
Q2_USED_Head_Shoulder
Q2_USED_Pantene
Q2_USED_Pantene_A_D
Q2_USED_Sunsilk
Q2_USED_Sunsilk_A_D
Q2_USED_Ultra_Doux
Q2_USED_Fiama
Q2_USED_Chik
Q2_USED_Lux
Q2_USED_Vivel
Q2_USED_Dabur_Vatika_A_D
Q2_MOST_Clinic_All_Clear
Q2_MOST_Clinic_Plus
Q2_MOST_Dove
Q2_MOST_Essenza
Q2_MOST_Garnier
Q2_MOST_Garnier_A_D
Q2_MOST_Head_Shoulder
Q2_MOST_Pantene
Q2_MOST_Pantene_A_D
Q2_MOST_Sunsilk
Q2_MOST_Sunsilk_A_D
Q2_MOST_Ultra_Doux
Q2_MOST_Fiama
Q2_MOST_Chik
Q2_MOST_Lux
Q2_MOST_Vivel
Q2_MOST_Dabur_Vatika_A_D
Q14_Clinic_All_Clear_TB
Q14_Clinic_Plus_TB
Q14_Dove_TB
Q14_Essenza_TB
Q14_Garnier_TB
Q14_Head_Shoulder_TB
Q14_Pantene_TB
Q14_Sunsilk_TB
Q14_Ultra_Doux_TB
Q14_Fiama_TB
Q14_Chik_TB
Q14_Lux_TB
Q14_Vivel_TB
Q17_A_Clinic_All_Clear
Q17_A_Clinic_Plus
Q17_A_Dove
Q17_A_Essenza
Q17_A_Garnier
Q17_A_Garnier_A_D
Q17_A_Head_Shoulder
Q17_A_Pantene
Q17_A_Pantene_A_D
Q17_A_Sunsilk
Q17_A_Sunsilk_A_D
Q17_A_Ultra_Doux
Q17_A_Fiama
Q17_A_Chik
Q17_A_Lux
Q17_A_Vivel
Q17_A_Dabur_Vatika_A_D
Q17b_Clinic_All_Clear_1
Q17b_Clinic_Plus_1
Q17b_Dove_1
Q17b_Essenza_1
Q17b_Garnier_1
Q17b_Garnier_A_D_1
Q17b_Head_Shoulder_1
Q17b_Pantene_1
Q17b_Pantene_A_D_1
Q17b_Sunsilk_1
Q17b_Sunsilk_A_D_1
Q17b_Ultra_Doux_1
Q17b_Fiama_1
Q17b_Chik_1
Q17b_Lux_1
Q17b_Vivel_1
Q17b_Dabur_Vatika_A_D_1
Q17b_Clinic_All_Clear_2
Q17b_Clinic_Plus_2
Q17b_Dove_2
Q17b_Essenza_2
Q17b_Garnier_2
Q17b_Garnier_A_D_2
Q17b_Head_Shoulder_2
Q17b_Pantene_2
Q17b_Pantene_A_D_2
Q17b_Sunsilk_2
Q17b_Sunsilk_A_D_2
Q17b_Ultra_Doux_2
Q17b_Fiama_2
Q17b_Chik_2
Q17b_Lux_2
Q17b_Vivel_2
Q17b_Dabur_Vatika_A_D_2
Q17b_Clinic_All_Clear_3
Q17b_Clinic_Plus_3
Q17b_Dove_3
Q17b_Essenza_3
Q17b_Garnier_3
Q17b_Garnier_A_D_3
Q17b_Head_Shoulder_3
Q17b_Pantene_3
Q17b_Pantene_A_D_3
Q17b_Sunsilk_3
Q17b_Sunsilk_A_D_3
Q17b_Ultra_Doux_3
Q17b_Fiama_3
Q17b_Chik_3
Q17b_Lux_3
Q17b_Vivel_3
Q17b_Dabur_Vatika_A_D_3
Q17b_Clinic_All_Clear_4
Q17b_Clinic_Plus_4
Q17b_Dove_4
Q17b_Essenza_4
Q17b_Garnier_4
Q17b_Garnier_A_D_4
Q17b_Head_Shoulder_4
Q17b_Pantene_4
Q17b_Pantene_A_D_4
Q17b_Sunsilk_4
Q17b_Sunsilk_A_D_4
Q17b_Ultra_Doux_4
Q17b_Fiama_4
Q17b_Chik_4
Q17b_Lux_4
Q17b_Vivel_4
Q17b_Dabur_Vatika_A_D_4
Q17b_Clinic_All_Clear_5
Q17b_Clinic_Plus_5
Q17b_Dove_5
Q17b_Essenza_5
Q17b_Garnier_5
Q17b_Garnier_A_D_5
Q17b_Head_Shoulder_5
Q17b_Pantene_5
Q17b_Pantene_A_D_5
Q17b_Sunsilk_5
Q17b_Sunsilk_A_D_5
Q17b_Ultra_Doux_5
Q17b_Fiama_5
Q17b_Chik_5
Q17b_Lux_5
Q17b_Vivel_5
Q17b_Dabur_Vatika_A_D_5
Q17b_Clinic_All_Clear_6
Q17b_Clinic_Plus_6
Q17b_Dove_6
Q17b_Essenza_6
Q17b_Garnier_6
Q17b_Garnier_A_D_6
Q17b_Head_Shoulder_6
Q17b_Pantene_6
Q17b_Pantene_A_D_6
Q17b_Sunsilk_6
Q17b_Sunsilk_A_D_6
Q17b_Ultra_Doux_6
Q17b_Fiama_6
Q17b_Chik_6
Q17b_Lux_6
Q17b_Vivel_6
Q17b_Dabur_Vatika_A_D_6
Q17b_Clinic_All_Clear_7
Q17b_Clinic_Plus_7
Q17b_Dove_7
Q17b_Essenza_7
Q17b_Garnier_7
Q17b_Garnier_A_D_7
Q17b_Head_Shoulder_7
Q17b_Pantene_7
Q17b_Pantene_A_D_7
Q17b_Sunsilk_7
Q17b_Sunsilk_A_D_7
Q17b_Ultra_Doux_7
Q17b_Fiama_7
Q17b_Chik_7
Q17b_Lux_7
Q17b_Vivel_7
Q17b_Dabur_Vatika_A_D_7
Q17b_Clinic_All_Clear_8
Q17b_Clinic_Plus_8
Q17b_Dove_8
Q17b_Essenza_8
Q17b_Garnier_8
Q17b_Garnier_A_D_8
Q17b_Head_Shoulder_8
Q17b_Pantene_8
Q17b_Pantene_A_D_8
Q17b_Sunsilk_8
Q17b_Sunsilk_A_D_8
Q17b_Ultra_Doux_8
Q17b_Fiama_8
Q17b_Chik_8
Q17b_Lux_8
Q17b_Vivel_8
Q17b_Dabur_Vatika_A_D_8
Q16A_Clinic_All_Clear_1
Q16A_Clinic_Plus_1
Q16A_Dove_1
Q16A_Essenza_1
Q16A_Garnier_1
Q16A_Garnier_A_D_1
Q16A_Head_Shoulder_1
Q16A_Pantene_1
Q16A_Pantene_A_D_1
Q16A_Sunsilk_1
Q16A_Sunsilk_A_D_1
Q16A_Ultra_Doux_1
Q16A_Fiama_1
Q16A_Chik_1
Q16A_Lux_1
Q16A_Vivel_1
Q16A_Dabur_Vatika_A_D_1
Q16A_Others_1
Q16A_Clinic_All_Clear_2
Q16A_Clinic_Plus_2
Q16A_Dove_2
Q16A_Essenza_2
Q16A_Garnier_2
Q16A_Garnier_A_D_2
Q16A_Head_Shoulder_2
Q16A_Pantene_2
Q16A_Pantene_A_D_2
Q16A_Sunsilk_2
Q16A_Sunsilk_A_D_2
Q16A_Ultra_Doux_2
Q16A_Fiama_2
Q16A_Chik_2
Q16A_Lux_2
Q16A_Vivel_2
Q16A_Dabur_Vatika_A_D_2
Q16A_Others_2
Q16A_Clinic_All_Clear_3
Q16A_Clinic_Plus_3
Q16A_Dove_3
Q16A_Essenza_3
Q16A_Garnier_3
Q16A_Garnier_A_D_3
Q16A_Head_Shoulder_3
Q16A_Pantene_3
Q16A_Pantene_A_D_3
Q16A_Sunsilk_3
Q16A_Sunsilk_A_D_3
Q16A_Ultra_Doux_3
Q16A_Fiama_3
Q16A_Chik_3
Q16A_Lux_3
Q16A_Vivel_3
Q16A_Dabur_Vatika_A_D_3
Q16A_Others_3
Q16A_Clinic_All_Clear_4
Q16A_Clinic_Plus_4
Q16A_Dove_4
Q16A_Essenza_4
Q16A_Garnier_4
Q16A_Garnier_A_D_4
Q16A_Head_Shoulder_4
Q16A_Pantene_4
Q16A_Pantene_A_D_4
Q16A_Sunsilk_4
Q16A_Sunsilk_A_D_4
Q16A_Ultra_Doux_4
Q16A_Fiama_4
Q16A_Chik_4
Q16A_Lux_4
Q16A_Vivel_4
Q16A_Dabur_Vatika_A_D_4
Q16A_Others_4
Q16A_Clinic_All_Clear_5
Q16A_Clinic_Plus_5
Q16A_Dove_5
Q16A_Essenza_5
Q16A_Garnier_5
Q16A_Garnier_A_D_5
Q16A_Head_Shoulder_5
Q16A_Pantene_5
Q16A_Pantene_A_D_5
Q16A_Sunsilk_5
Q16A_Sunsilk_A_D_5
Q16A_Ultra_Doux_5
Q16A_Fiama_5
Q16A_Chik_5
Q16A_Lux_5
Q16A_Vivel_5
Q16A_Dabur_Vatika_A_D_5
Q16A_Others_5
Q16A_Clinic_All_Clear_6
Q16A_Clinic_Plus_6
Q16A_Dove_6
Q16A_Essenza_6
Q16A_Garnier_6
Q16A_Garnier_A_D_6
Q16A_Head_Shoulder_6
Q16A_Pantene_6
Q16A_Pantene_A_D_6
Q16A_Sunsilk_6
Q16A_Sunsilk_A_D_6
Q16A_Ultra_Doux_6
Q16A_Fiama_6
Q16A_Chik_6
Q16A_Lux_6
Q16A_Vivel_6
Q16A_Dabur_Vatika_A_D_6
Q16A_Others_6
Q16A_Clinic_All_Clear_7
Q16A_Clinic_Plus_7
Q16A_Dove_7
Q16A_Essenza_7
Q16A_Garnier_7
Q16A_Garnier_A_D_7
Q16A_Head_Shoulder_7
Q16A_Pantene_7
Q16A_Pantene_A_D_7
Q16A_Sunsilk_7
Q16A_Sunsilk_A_D_7
Q16A_Ultra_Doux_7
Q16A_Fiama_7
Q16A_Chik_7
Q16A_Lux_7
Q16A_Vivel_7
Q16A_Dabur_Vatika_A_D_7
Q16A_Others_7
Q16A_Clinic_All_Clear_8
Q16A_Clinic_Plus_8
Q16A_Dove_8
Q16A_Essenza_8
Q16A_Garnier_8
Q16A_Garnier_A_D_8
Q16A_Head_Shoulder_8
Q16A_Pantene_8
Q16A_Pantene_A_D_8
Q16A_Sunsilk_8
Q16A_Sunsilk_A_D_8
Q16A_Ultra_Doux_8
Q16A_Fiama_8
Q16A_Chik_8
Q16A_Lux_8
Q16A_Vivel_8
Q16A_Dabur_Vatika_A_D_8
Q16A_Others_8
Q16A_Clinic_All_Clear_9
Q16A_Clinic_Plus_9
Q16A_Dove_9
Q16A_Essenza_9
Q16A_Garnier_9
Q16A_Garnier_A_D_9
Q16A_Head_Shoulder_9
Q16A_Pantene_9
Q16A_Pantene_A_D_9
Q16A_Sunsilk_9
Q16A_Sunsilk_A_D_9
Q16A_Ultra_Doux_9
Q16A_Fiama_9
Q16A_Chik_9
Q16A_Lux_9
Q16A_Vivel_9
Q16A_Dabur_Vatika_A_D_9
Q16A_Others_9
Q16A_Clinic_All_Clear_10
Q16A_Clinic_Plus_10
Q16A_Dove_10
Q16A_Essenza_10
Q16A_Garnier_10
Q16A_Garnier_A_D_10
Q16A_Head_Shoulder_10
Q16A_Pantene_10
Q16A_Pantene_A_D_10
Q16A_Sunsilk_10
Q16A_Sunsilk_A_D_10
Q16A_Ultra_Doux_10
Q16A_Fiama_10
Q16A_Chik_10
Q16A_Lux_10
Q16A_Vivel_10
Q16A_Dabur_Vatika_A_D_10
Q16A_Others_10
Q16A_Clinic_All_Clear_11
Q16A_Clinic_Plus_11
Q16A_Dove_11
Q16A_Essenza_11
Q16A_Garnier_11
Q16A_Garnier_A_D_11
Q16A_Head_Shoulder_11
Q16A_Pantene_11
Q16A_Pantene_A_D_11
Q16A_Sunsilk_11
Q16A_Sunsilk_A_D_11
Q16A_Ultra_Doux_11
Q16A_Fiama_11
Q16A_Chik_11
Q16A_Lux_11
Q16A_Vivel_11
Q16A_Dabur_Vatika_A_D_11
Q16A_Others_11
Q16A_Clinic_All_Clear_12
Q16A_Clinic_Plus_12
Q16A_Dove_12
Q16A_Essenza_12
Q16A_Garnier_12
Q16A_Garnier_A_D_12
Q16A_Head_Shoulder_12
Q16A_Pantene_12
Q16A_Pantene_A_D_12
Q16A_Sunsilk_12
Q16A_Sunsilk_A_D_12
Q16A_Ultra_Doux_12
Q16A_Fiama_12
Q16A_Chik_12
Q16A_Lux_12
Q16A_Vivel_12
Q16A_Dabur_Vatika_A_D_12
Q16A_Others_12
Q16A_Clinic_All_Clear_13
Q16A_Clinic_Plus_13
Q16A_Dove_13
Q16A_Essenza_13
Q16A_Garnier_13
Q16A_Garnier_A_D_13
Q16A_Head_Shoulder_13
Q16A_Pantene_13
Q16A_Pantene_A_D_13
Q16A_Sunsilk_13
Q16A_Sunsilk_A_D_13
Q16A_Ultra_Doux_13
Q16A_Fiama_13
Q16A_Chik_13
Q16A_Lux_13
Q16A_Vivel_13
Q16A_Dabur_Vatika_A_D_13
Q16A_Others_13
Q16A_Clinic_All_Clear_14
Q16A_Clinic_Plus_14
Q16A_Dove_14
Q16A_Essenza_14
Q16A_Garnier_14
Q16A_Garnier_A_D_14
Q16A_Head_Shoulder_14
Q16A_Pantene_14
Q16A_Pantene_A_D_14
Q16A_Sunsilk_14
Q16A_Sunsilk_A_D_14
Q16A_Ultra_Doux_14
Q16A_Fiama_14
Q16A_Chik_14
Q16A_Lux_14
Q16A_Vivel_14
Q16A_Dabur_Vatika_A_D_14
Q16A_Others_14
Q16A_Clinic_All_Clear_15
Q16A_Clinic_Plus_15
Q16A_Dove_15
Q16A_Essenza_15
Q16A_Garnier_15
Q16A_Garnier_A_D_15
Q16A_Head_Shoulder_15
Q16A_Pantene_15
Q16A_Pantene_A_D_15
Q16A_Sunsilk_15
Q16A_Sunsilk_A_D_15
Q16A_Ultra_Doux_15
Q16A_Fiama_15
Q16A_Chik_15
Q16A_Lux_15
Q16A_Vivel_15
Q16A_Dabur_Vatika_A_D_15
Q16A_Others_15
Q16A_Clinic_All_Clear_16
Q16A_Clinic_Plus_16
Q16A_Dove_16
Q16A_Essenza_16
Q16A_Garnier_16
Q16A_Garnier_A_D_16
Q16A_Head_Shoulder_16
Q16A_Pantene_16
Q16A_Pantene_A_D_16
Q16A_Sunsilk_16
Q16A_Sunsilk_A_D_16
Q16A_Ultra_Doux_16
Q16A_Fiama_16
Q16A_Chik_16
Q16A_Lux_16
Q16A_Vivel_16
Q16A_Dabur_Vatika_A_D_16
Q16A_Others_16
Q16B_Clinic_All_Clear_1
Q16B_Clinic_Plus_1
Q16B_Dove_1
Q16B_Essenza_1
Q16B_Garnier_1
Q16B_Garnier_A_D_1
Q16B_Head_Shoulder_1
Q16B_Pantene_1
Q16B_Pantene_A_D_1
Q16B_Sunsilk_1
Q16B_Sunsilk_A_D_1
Q16B_Ultra_Doux_1
Q16B_Fiama_1
Q16B_Chik_1
Q16B_Lux_1
Q16B_Vivel_1
Q16B_Dabur_Vatika_A_D_1
Q16B_Others_1
Q16B_Clinic_All_Clear_2
Q16B_Clinic_Plus_2
Q16B_Dove_2
Q16B_Essenza_2
Q16B_Garnier_2
Q16B_Garnier_A_D_2
Q16B_Head_Shoulder_2
Q16B_Pantene_2
Q16B_Pantene_A_D_2
Q16B_Sunsilk_2
Q16B_Sunsilk_A_D_2
Q16B_Ultra_Doux_2
Q16B_Fiama_2
Q16B_Chik_2
Q16B_Lux_2
Q16B_Vivel_2
Q16B_Dabur_Vatika_A_D_2
Q16B_Others_2
Q16B_Clinic_All_Clear_3
Q16B_Clinic_Plus_3
Q16B_Dove_3
Q16B_Essenza_3
Q16B_Garnier_3
Q16B_Garnier_A_D_3
Q16B_Head_Shoulder_3
Q16B_Pantene_3
Q16B_Pantene_A_D_3
Q16B_Sunsilk_3
Q16B_Sunsilk_A_D_3
Q16B_Ultra_Doux_3
Q16B_Fiama_3
Q16B_Chik_3
Q16B_Lux_3
Q16B_Vivel_3
Q16B_Dabur_Vatika_A_D_3
Q16B_Others_3
Q16B_Clinic_All_Clear_4
Q16B_Clinic_Plus_4
Q16B_Dove_4
Q16B_Essenza_4
Q16B_Garnier_4
Q16B_Garnier_A_D_4
Q16B_Head_Shoulder_4
Q16B_Pantene_4
Q16B_Pantene_A_D_4
Q16B_Sunsilk_4
Q16B_Sunsilk_A_D_4
Q16B_Ultra_Doux_4
Q16B_Fiama_4
Q16B_Chik_4
Q16B_Lux_4
Q16B_Vivel_4
Q16B_Dabur_Vatika_A_D_4
Q16B_Others_4
Q16B_Clinic_All_Clear_5
Q16B_Clinic_Plus_5
Q16B_Dove_5
Q16B_Essenza_5
Q16B_Garnier_5
Q16B_Garnier_A_D_5
Q16B_Head_Shoulder_5
Q16B_Pantene_5
Q16B_Pantene_A_D_5
Q16B_Sunsilk_5
Q16B_Sunsilk_A_D_5
Q16B_Ultra_Doux_5
Q16B_Fiama_5
Q16B_Chik_5
Q16B_Lux_5
Q16B_Vivel_5
Q16B_Dabur_Vatika_A_D_5
Q16B_Others_5
Q16B_Clinic_All_Clear_6
Q16B_Clinic_Plus_6
Q16B_Dove_6
Q16B_Essenza_6
Q16B_Garnier_6
Q16B_Garnier_A_D_6
Q16B_Head_Shoulder_6
Q16B_Pantene_6
Q16B_Pantene_A_D_6
Q16B_Sunsilk_6
Q16B_Sunsilk_A_D_6
Q16B_Ultra_Doux_6
Q16B_Fiama_6
Q16B_Chik_6
Q16B_Lux_6
Q16B_Vivel_6
Q16B_Dabur_Vatika_A_D_6
Q16B_Others_6
Q16B_Clinic_All_Clear_7
Q16B_Clinic_Plus_7
Q16B_Dove_7
Q16B_Essenza_7
Q16B_Garnier_7
Q16B_Garnier_A_D_7
Q16B_Head_Shoulder_7
Q16B_Pantene_7
Q16B_Pantene_A_D_7
Q16B_Sunsilk_7
Q16B_Sunsilk_A_D_7
Q16B_Ultra_Doux_7
Q16B_Fiama_7
Q16B_Chik_7
Q16B_Lux_7
Q16B_Vivel_7
Q16B_Dabur_Vatika_A_D_7
Q16B_Others_7
Q16B_Clinic_All_Clear_8
Q16B_Clinic_Plus_8
Q16B_Dove_8
Q16B_Essenza_8
Q16B_Garnier_8
Q16B_Garnier_A_D_8
Q16B_Head_Shoulder_8
Q16B_Pantene_8
Q16B_Pantene_A_D_8
Q16B_Sunsilk_8
Q16B_Sunsilk_A_D_8
Q16B_Ultra_Doux_8
Q16B_Fiama_8
Q16B_Chik_8
Q16B_Lux_8
Q16B_Vivel_8
Q16B_Dabur_Vatika_A_D_8
Q16B_Others_8
Q16B_Clinic_All_Clear_9
Q16B_Clinic_Plus_9
Q16B_Dove_9
Q16B_Essenza_9
Q16B_Garnier_9
Q16B_Garnier_A_D_9
Q16B_Head_Shoulder_9
Q16B_Pantene_9
Q16B_Pantene_A_D_9
Q16B_Sunsilk_9
Q16B_Sunsilk_A_D_9
Q16B_Ultra_Doux_9
Q16B_Fiama_9
Q16B_Chik_9
Q16B_Lux_9
Q16B_Vivel_9
Q16B_Dabur_Vatika_A_D_9
Q16B_Others_9
Q16B_Clinic_All_Clear_10
Q16B_Clinic_Plus_10
Q16B_Dove_10
Q16B_Essenza_10
Q16B_Garnier_10
Q16B_Garnier_A_D_10
Q16B_Head_Shoulder_10
Q16B_Pantene_10
Q16B_Pantene_A_D_10
Q16B_Sunsilk_10
Q16B_Sunsilk_A_D_10
Q16B_Ultra_Doux_10
Q16B_Fiama_10
Q16B_Chik_10
Q16B_Lux_10
Q16B_Vivel_10
Q16B_Dabur_Vatika_A_D_10
Q16B_Others_10
Q16B_Clinic_All_Clear_11
Q16B_Clinic_Plus_11
Q16B_Dove_11
Q16B_Essenza_11
Q16B_Garnier_11
Q16B_Garnier_A_D_11
Q16B_Head_Shoulder_11
Q16B_Pantene_11
Q16B_Pantene_A_D_11
Q16B_Sunsilk_11
Q16B_Sunsilk_A_D_11
Q16B_Ultra_Doux_11
Q16B_Fiama_11
Q16B_Chik_11
Q16B_Lux_11
Q16B_Vivel_11
Q16B_Dabur_Vatika_A_D_11
Q16B_Others_11
Q16B_Clinic_All_Clear_12
Q16B_Clinic_Plus_12
Q16B_Dove_12
Q16B_Essenza_12
Q16B_Garnier_12
Q16B_Garnier_A_D_12
Q16B_Head_Shoulder_12
Q16B_Pantene_12
Q16B_Pantene_A_D_12
Q16B_Sunsilk_12
Q16B_Sunsilk_A_D_12
Q16B_Ultra_Doux_12
Q16B_Fiama_12
Q16B_Chik_12
Q16B_Lux_12
Q16B_Vivel_12
Q16B_Dabur_Vatika_A_D_12
Q16B_Others_12
ITC_int_std
ITC_premium
ITC_trust
ITC_relevant
ITC_quality
HUL_int_std
HUL_premium
HUL_trust
HUL_relevant
HUL_quality
Q17b1_vivel_1
Q17b1_vivel_2
Q17b1_vivel_3
Q17b1_vivel_4
Q17b1_vivel_5
Q17b1_vivel_6
Q17b1_vivel_7
Q17b1_Fiama_1
Q17b1_Fiama_2
Q17b1_Fiama_3
Q17b1_Fiama_4
Q17b1_Fiama_5
Q17b1_Fiama_6
Q17b1_Fiama_7
Q5C_Spon_Chik
Q5C_Spon_Clinic_All_Clear
Q5C_Spon_Clinic_Plus
Q5C_Spon_Dabur_Vatika_A_D
Q5C_Spon_Dove
Q5C_Spon_Essenza
Q5C_Spon_Fiama
Q5C_Spon_Garnier
Q5C_Spon_Garnier_A_D
Q5C_Spon_Head_Shoulder
Q5C_Spon_Lux
Q5C_Spon_Others
Q5C_Spon_Pantene
Q5C_Spon_Pantene_A_D
Q5C_Spon_Sunsilk
Q5C_Spon_Sunsilk_A_D
Q5C_Spon_Ultra_Doux
Q5C_Spon_Vivel
Q5C_TOM_Chik
Q5C_TOM_Clinic_All_Clear
Q5C_TOM_Clinic_Plus
Q5C_TOM_Dabur_Vatika_A_D
Q5C_TOM_Dove
Q5C_TOM_Essenza
Q5C_TOM_Fiama
Q5C_TOM_Garnier
Q5C_TOM_Garnier_A_D
Q5C_TOM_Head_Shoulder
Q5C_TOM_Lux
Q5C_TOM_Others
Q5C_TOM_Pantene
Q5C_TOM_Pantene_A_D
Q5C_TOM_Sunsilk
Q5C_TOM_Sunsilk_A_D
Q5C_TOM_Ultra_Doux
Q5C_TOM_Vivel
flag;
output out=v1.Shampoos_rollup_aw_nt sum=
Q2_HEARD_Clinic_All_Clear
Q2_HEARD_Clinic_Plus
Q2_HEARD_Dove
Q2_HEARD_Essenza
Q2_HEARD_Garnier
Q2_HEARD_Garnier_A_D
Q2_HEARD_Head_Shoulder
Q2_HEARD_Pantene
Q2_HEARD_Pantene_A_D
Q2_HEARD_Sunsilk
Q2_HEARD_Sunsilk_A_D
Q2_HEARD_Ultra_Doux
Q2_HEARD_Fiama
Q2_HEARD_Chik
Q2_HEARD_Lux
Q2_HEARD_Vivel
Q2_HEARD_Dabur_Vatika_A_D
Q2_USED_Clinic_All_Clear
Q2_USED_Clinic_Plus
Q2_USED_Dove
Q2_USED_Essenza
Q2_USED_Garnier
Q2_USED_Garnier_A_D
Q2_USED_Head_Shoulder
Q2_USED_Pantene
Q2_USED_Pantene_A_D
Q2_USED_Sunsilk
Q2_USED_Sunsilk_A_D
Q2_USED_Ultra_Doux
Q2_USED_Fiama
Q2_USED_Chik
Q2_USED_Lux
Q2_USED_Vivel
Q2_USED_Dabur_Vatika_A_D
Q2_MOST_Clinic_All_Clear
Q2_MOST_Clinic_Plus
Q2_MOST_Dove
Q2_MOST_Essenza
Q2_MOST_Garnier
Q2_MOST_Garnier_A_D
Q2_MOST_Head_Shoulder
Q2_MOST_Pantene
Q2_MOST_Pantene_A_D
Q2_MOST_Sunsilk
Q2_MOST_Sunsilk_A_D
Q2_MOST_Ultra_Doux
Q2_MOST_Fiama
Q2_MOST_Chik
Q2_MOST_Lux
Q2_MOST_Vivel
Q2_MOST_Dabur_Vatika_A_D
Q14_Clinic_All_Clear_TB
Q14_Clinic_Plus_TB
Q14_Dove_TB
Q14_Essenza_TB
Q14_Garnier_TB
Q14_Head_Shoulder_TB
Q14_Pantene_TB
Q14_Sunsilk_TB
Q14_Ultra_Doux_TB
Q14_Fiama_TB
Q14_Chik_TB
Q14_Lux_TB
Q14_Vivel_TB
Q17_A_Clinic_All_Clear
Q17_A_Clinic_Plus
Q17_A_Dove
Q17_A_Essenza
Q17_A_Garnier
Q17_A_Garnier_A_D
Q17_A_Head_Shoulder
Q17_A_Pantene
Q17_A_Pantene_A_D
Q17_A_Sunsilk
Q17_A_Sunsilk_A_D
Q17_A_Ultra_Doux
Q17_A_Fiama
Q17_A_Chik
Q17_A_Lux
Q17_A_Vivel
Q17_A_Dabur_Vatika_A_D
Q17b_Clinic_All_Clear_1
Q17b_Clinic_Plus_1
Q17b_Dove_1
Q17b_Essenza_1
Q17b_Garnier_1
Q17b_Garnier_A_D_1
Q17b_Head_Shoulder_1
Q17b_Pantene_1
Q17b_Pantene_A_D_1
Q17b_Sunsilk_1
Q17b_Sunsilk_A_D_1
Q17b_Ultra_Doux_1
Q17b_Fiama_1
Q17b_Chik_1
Q17b_Lux_1
Q17b_Vivel_1
Q17b_Dabur_Vatika_A_D_1
Q17b_Clinic_All_Clear_2
Q17b_Clinic_Plus_2
Q17b_Dove_2
Q17b_Essenza_2
Q17b_Garnier_2
Q17b_Garnier_A_D_2
Q17b_Head_Shoulder_2
Q17b_Pantene_2
Q17b_Pantene_A_D_2
Q17b_Sunsilk_2
Q17b_Sunsilk_A_D_2
Q17b_Ultra_Doux_2
Q17b_Fiama_2
Q17b_Chik_2
Q17b_Lux_2
Q17b_Vivel_2
Q17b_Dabur_Vatika_A_D_2
Q17b_Clinic_All_Clear_3
Q17b_Clinic_Plus_3
Q17b_Dove_3
Q17b_Essenza_3
Q17b_Garnier_3
Q17b_Garnier_A_D_3
Q17b_Head_Shoulder_3
Q17b_Pantene_3
Q17b_Pantene_A_D_3
Q17b_Sunsilk_3
Q17b_Sunsilk_A_D_3
Q17b_Ultra_Doux_3
Q17b_Fiama_3
Q17b_Chik_3
Q17b_Lux_3
Q17b_Vivel_3
Q17b_Dabur_Vatika_A_D_3
Q17b_Clinic_All_Clear_4
Q17b_Clinic_Plus_4
Q17b_Dove_4
Q17b_Essenza_4
Q17b_Garnier_4
Q17b_Garnier_A_D_4
Q17b_Head_Shoulder_4
Q17b_Pantene_4
Q17b_Pantene_A_D_4
Q17b_Sunsilk_4
Q17b_Sunsilk_A_D_4
Q17b_Ultra_Doux_4
Q17b_Fiama_4
Q17b_Chik_4
Q17b_Lux_4
Q17b_Vivel_4
Q17b_Dabur_Vatika_A_D_4
Q17b_Clinic_All_Clear_5
Q17b_Clinic_Plus_5
Q17b_Dove_5
Q17b_Essenza_5
Q17b_Garnier_5
Q17b_Garnier_A_D_5
Q17b_Head_Shoulder_5
Q17b_Pantene_5
Q17b_Pantene_A_D_5
Q17b_Sunsilk_5
Q17b_Sunsilk_A_D_5
Q17b_Ultra_Doux_5
Q17b_Fiama_5
Q17b_Chik_5
Q17b_Lux_5
Q17b_Vivel_5
Q17b_Dabur_Vatika_A_D_5
Q17b_Clinic_All_Clear_6
Q17b_Clinic_Plus_6
Q17b_Dove_6
Q17b_Essenza_6
Q17b_Garnier_6
Q17b_Garnier_A_D_6
Q17b_Head_Shoulder_6
Q17b_Pantene_6
Q17b_Pantene_A_D_6
Q17b_Sunsilk_6
Q17b_Sunsilk_A_D_6
Q17b_Ultra_Doux_6
Q17b_Fiama_6
Q17b_Chik_6
Q17b_Lux_6
Q17b_Vivel_6
Q17b_Dabur_Vatika_A_D_6
Q17b_Clinic_All_Clear_7
Q17b_Clinic_Plus_7
Q17b_Dove_7
Q17b_Essenza_7
Q17b_Garnier_7
Q17b_Garnier_A_D_7
Q17b_Head_Shoulder_7
Q17b_Pantene_7
Q17b_Pantene_A_D_7
Q17b_Sunsilk_7
Q17b_Sunsilk_A_D_7
Q17b_Ultra_Doux_7
Q17b_Fiama_7
Q17b_Chik_7
Q17b_Lux_7
Q17b_Vivel_7
Q17b_Dabur_Vatika_A_D_7
Q17b_Clinic_All_Clear_8
Q17b_Clinic_Plus_8
Q17b_Dove_8
Q17b_Essenza_8
Q17b_Garnier_8
Q17b_Garnier_A_D_8
Q17b_Head_Shoulder_8
Q17b_Pantene_8
Q17b_Pantene_A_D_8
Q17b_Sunsilk_8
Q17b_Sunsilk_A_D_8
Q17b_Ultra_Doux_8
Q17b_Fiama_8
Q17b_Chik_8
Q17b_Lux_8
Q17b_Vivel_8
Q17b_Dabur_Vatika_A_D_8
Q16A_Clinic_All_Clear_1
Q16A_Clinic_Plus_1
Q16A_Dove_1
Q16A_Essenza_1
Q16A_Garnier_1
Q16A_Garnier_A_D_1
Q16A_Head_Shoulder_1
Q16A_Pantene_1
Q16A_Pantene_A_D_1
Q16A_Sunsilk_1
Q16A_Sunsilk_A_D_1
Q16A_Ultra_Doux_1
Q16A_Fiama_1
Q16A_Chik_1
Q16A_Lux_1
Q16A_Vivel_1
Q16A_Dabur_Vatika_A_D_1
Q16A_Others_1
Q16A_Clinic_All_Clear_2
Q16A_Clinic_Plus_2
Q16A_Dove_2
Q16A_Essenza_2
Q16A_Garnier_2
Q16A_Garnier_A_D_2
Q16A_Head_Shoulder_2
Q16A_Pantene_2
Q16A_Pantene_A_D_2
Q16A_Sunsilk_2
Q16A_Sunsilk_A_D_2
Q16A_Ultra_Doux_2
Q16A_Fiama_2
Q16A_Chik_2
Q16A_Lux_2
Q16A_Vivel_2
Q16A_Dabur_Vatika_A_D_2
Q16A_Others_2
Q16A_Clinic_All_Clear_3
Q16A_Clinic_Plus_3
Q16A_Dove_3
Q16A_Essenza_3
Q16A_Garnier_3
Q16A_Garnier_A_D_3
Q16A_Head_Shoulder_3
Q16A_Pantene_3
Q16A_Pantene_A_D_3
Q16A_Sunsilk_3
Q16A_Sunsilk_A_D_3
Q16A_Ultra_Doux_3
Q16A_Fiama_3
Q16A_Chik_3
Q16A_Lux_3
Q16A_Vivel_3
Q16A_Dabur_Vatika_A_D_3
Q16A_Others_3
Q16A_Clinic_All_Clear_4
Q16A_Clinic_Plus_4
Q16A_Dove_4
Q16A_Essenza_4
Q16A_Garnier_4
Q16A_Garnier_A_D_4
Q16A_Head_Shoulder_4
Q16A_Pantene_4
Q16A_Pantene_A_D_4
Q16A_Sunsilk_4
Q16A_Sunsilk_A_D_4
Q16A_Ultra_Doux_4
Q16A_Fiama_4
Q16A_Chik_4
Q16A_Lux_4
Q16A_Vivel_4
Q16A_Dabur_Vatika_A_D_4
Q16A_Others_4
Q16A_Clinic_All_Clear_5
Q16A_Clinic_Plus_5
Q16A_Dove_5
Q16A_Essenza_5
Q16A_Garnier_5
Q16A_Garnier_A_D_5
Q16A_Head_Shoulder_5
Q16A_Pantene_5
Q16A_Pantene_A_D_5
Q16A_Sunsilk_5
Q16A_Sunsilk_A_D_5
Q16A_Ultra_Doux_5
Q16A_Fiama_5
Q16A_Chik_5
Q16A_Lux_5
Q16A_Vivel_5
Q16A_Dabur_Vatika_A_D_5
Q16A_Others_5
Q16A_Clinic_All_Clear_6
Q16A_Clinic_Plus_6
Q16A_Dove_6
Q16A_Essenza_6
Q16A_Garnier_6
Q16A_Garnier_A_D_6
Q16A_Head_Shoulder_6
Q16A_Pantene_6
Q16A_Pantene_A_D_6
Q16A_Sunsilk_6
Q16A_Sunsilk_A_D_6
Q16A_Ultra_Doux_6
Q16A_Fiama_6
Q16A_Chik_6
Q16A_Lux_6
Q16A_Vivel_6
Q16A_Dabur_Vatika_A_D_6
Q16A_Others_6
Q16A_Clinic_All_Clear_7
Q16A_Clinic_Plus_7
Q16A_Dove_7
Q16A_Essenza_7
Q16A_Garnier_7
Q16A_Garnier_A_D_7
Q16A_Head_Shoulder_7
Q16A_Pantene_7
Q16A_Pantene_A_D_7
Q16A_Sunsilk_7
Q16A_Sunsilk_A_D_7
Q16A_Ultra_Doux_7
Q16A_Fiama_7
Q16A_Chik_7
Q16A_Lux_7
Q16A_Vivel_7
Q16A_Dabur_Vatika_A_D_7
Q16A_Others_7
Q16A_Clinic_All_Clear_8
Q16A_Clinic_Plus_8
Q16A_Dove_8
Q16A_Essenza_8
Q16A_Garnier_8
Q16A_Garnier_A_D_8
Q16A_Head_Shoulder_8
Q16A_Pantene_8
Q16A_Pantene_A_D_8
Q16A_Sunsilk_8
Q16A_Sunsilk_A_D_8
Q16A_Ultra_Doux_8
Q16A_Fiama_8
Q16A_Chik_8
Q16A_Lux_8
Q16A_Vivel_8
Q16A_Dabur_Vatika_A_D_8
Q16A_Others_8
Q16A_Clinic_All_Clear_9
Q16A_Clinic_Plus_9
Q16A_Dove_9
Q16A_Essenza_9
Q16A_Garnier_9
Q16A_Garnier_A_D_9
Q16A_Head_Shoulder_9
Q16A_Pantene_9
Q16A_Pantene_A_D_9
Q16A_Sunsilk_9
Q16A_Sunsilk_A_D_9
Q16A_Ultra_Doux_9
Q16A_Fiama_9
Q16A_Chik_9
Q16A_Lux_9
Q16A_Vivel_9
Q16A_Dabur_Vatika_A_D_9
Q16A_Others_9
Q16A_Clinic_All_Clear_10
Q16A_Clinic_Plus_10
Q16A_Dove_10
Q16A_Essenza_10
Q16A_Garnier_10
Q16A_Garnier_A_D_10
Q16A_Head_Shoulder_10
Q16A_Pantene_10
Q16A_Pantene_A_D_10
Q16A_Sunsilk_10
Q16A_Sunsilk_A_D_10
Q16A_Ultra_Doux_10
Q16A_Fiama_10
Q16A_Chik_10
Q16A_Lux_10
Q16A_Vivel_10
Q16A_Dabur_Vatika_A_D_10
Q16A_Others_10
Q16A_Clinic_All_Clear_11
Q16A_Clinic_Plus_11
Q16A_Dove_11
Q16A_Essenza_11
Q16A_Garnier_11
Q16A_Garnier_A_D_11
Q16A_Head_Shoulder_11
Q16A_Pantene_11
Q16A_Pantene_A_D_11
Q16A_Sunsilk_11
Q16A_Sunsilk_A_D_11
Q16A_Ultra_Doux_11
Q16A_Fiama_11
Q16A_Chik_11
Q16A_Lux_11
Q16A_Vivel_11
Q16A_Dabur_Vatika_A_D_11
Q16A_Others_11
Q16A_Clinic_All_Clear_12
Q16A_Clinic_Plus_12
Q16A_Dove_12
Q16A_Essenza_12
Q16A_Garnier_12
Q16A_Garnier_A_D_12
Q16A_Head_Shoulder_12
Q16A_Pantene_12
Q16A_Pantene_A_D_12
Q16A_Sunsilk_12
Q16A_Sunsilk_A_D_12
Q16A_Ultra_Doux_12
Q16A_Fiama_12
Q16A_Chik_12
Q16A_Lux_12
Q16A_Vivel_12
Q16A_Dabur_Vatika_A_D_12
Q16A_Others_12
Q16A_Clinic_All_Clear_13
Q16A_Clinic_Plus_13
Q16A_Dove_13
Q16A_Essenza_13
Q16A_Garnier_13
Q16A_Garnier_A_D_13
Q16A_Head_Shoulder_13
Q16A_Pantene_13
Q16A_Pantene_A_D_13
Q16A_Sunsilk_13
Q16A_Sunsilk_A_D_13
Q16A_Ultra_Doux_13
Q16A_Fiama_13
Q16A_Chik_13
Q16A_Lux_13
Q16A_Vivel_13
Q16A_Dabur_Vatika_A_D_13
Q16A_Others_13
Q16A_Clinic_All_Clear_14
Q16A_Clinic_Plus_14
Q16A_Dove_14
Q16A_Essenza_14
Q16A_Garnier_14
Q16A_Garnier_A_D_14
Q16A_Head_Shoulder_14
Q16A_Pantene_14
Q16A_Pantene_A_D_14
Q16A_Sunsilk_14
Q16A_Sunsilk_A_D_14
Q16A_Ultra_Doux_14
Q16A_Fiama_14
Q16A_Chik_14
Q16A_Lux_14
Q16A_Vivel_14
Q16A_Dabur_Vatika_A_D_14
Q16A_Others_14
Q16A_Clinic_All_Clear_15
Q16A_Clinic_Plus_15
Q16A_Dove_15
Q16A_Essenza_15
Q16A_Garnier_15
Q16A_Garnier_A_D_15
Q16A_Head_Shoulder_15
Q16A_Pantene_15
Q16A_Pantene_A_D_15
Q16A_Sunsilk_15
Q16A_Sunsilk_A_D_15
Q16A_Ultra_Doux_15
Q16A_Fiama_15
Q16A_Chik_15
Q16A_Lux_15
Q16A_Vivel_15
Q16A_Dabur_Vatika_A_D_15
Q16A_Others_15
Q16A_Clinic_All_Clear_16
Q16A_Clinic_Plus_16
Q16A_Dove_16
Q16A_Essenza_16
Q16A_Garnier_16
Q16A_Garnier_A_D_16
Q16A_Head_Shoulder_16
Q16A_Pantene_16
Q16A_Pantene_A_D_16
Q16A_Sunsilk_16
Q16A_Sunsilk_A_D_16
Q16A_Ultra_Doux_16
Q16A_Fiama_16
Q16A_Chik_16
Q16A_Lux_16
Q16A_Vivel_16
Q16A_Dabur_Vatika_A_D_16
Q16A_Others_16
Q16B_Clinic_All_Clear_1
Q16B_Clinic_Plus_1
Q16B_Dove_1
Q16B_Essenza_1
Q16B_Garnier_1
Q16B_Garnier_A_D_1
Q16B_Head_Shoulder_1
Q16B_Pantene_1
Q16B_Pantene_A_D_1
Q16B_Sunsilk_1
Q16B_Sunsilk_A_D_1
Q16B_Ultra_Doux_1
Q16B_Fiama_1
Q16B_Chik_1
Q16B_Lux_1
Q16B_Vivel_1
Q16B_Dabur_Vatika_A_D_1
Q16B_Others_1
Q16B_Clinic_All_Clear_2
Q16B_Clinic_Plus_2
Q16B_Dove_2
Q16B_Essenza_2
Q16B_Garnier_2
Q16B_Garnier_A_D_2
Q16B_Head_Shoulder_2
Q16B_Pantene_2
Q16B_Pantene_A_D_2
Q16B_Sunsilk_2
Q16B_Sunsilk_A_D_2
Q16B_Ultra_Doux_2
Q16B_Fiama_2
Q16B_Chik_2
Q16B_Lux_2
Q16B_Vivel_2
Q16B_Dabur_Vatika_A_D_2
Q16B_Others_2
Q16B_Clinic_All_Clear_3
Q16B_Clinic_Plus_3
Q16B_Dove_3
Q16B_Essenza_3
Q16B_Garnier_3
Q16B_Garnier_A_D_3
Q16B_Head_Shoulder_3
Q16B_Pantene_3
Q16B_Pantene_A_D_3
Q16B_Sunsilk_3
Q16B_Sunsilk_A_D_3
Q16B_Ultra_Doux_3
Q16B_Fiama_3
Q16B_Chik_3
Q16B_Lux_3
Q16B_Vivel_3
Q16B_Dabur_Vatika_A_D_3
Q16B_Others_3
Q16B_Clinic_All_Clear_4
Q16B_Clinic_Plus_4
Q16B_Dove_4
Q16B_Essenza_4
Q16B_Garnier_4
Q16B_Garnier_A_D_4
Q16B_Head_Shoulder_4
Q16B_Pantene_4
Q16B_Pantene_A_D_4
Q16B_Sunsilk_4
Q16B_Sunsilk_A_D_4
Q16B_Ultra_Doux_4
Q16B_Fiama_4
Q16B_Chik_4
Q16B_Lux_4
Q16B_Vivel_4
Q16B_Dabur_Vatika_A_D_4
Q16B_Others_4
Q16B_Clinic_All_Clear_5
Q16B_Clinic_Plus_5
Q16B_Dove_5
Q16B_Essenza_5
Q16B_Garnier_5
Q16B_Garnier_A_D_5
Q16B_Head_Shoulder_5
Q16B_Pantene_5
Q16B_Pantene_A_D_5
Q16B_Sunsilk_5
Q16B_Sunsilk_A_D_5
Q16B_Ultra_Doux_5
Q16B_Fiama_5
Q16B_Chik_5
Q16B_Lux_5
Q16B_Vivel_5
Q16B_Dabur_Vatika_A_D_5
Q16B_Others_5
Q16B_Clinic_All_Clear_6
Q16B_Clinic_Plus_6
Q16B_Dove_6
Q16B_Essenza_6
Q16B_Garnier_6
Q16B_Garnier_A_D_6
Q16B_Head_Shoulder_6
Q16B_Pantene_6
Q16B_Pantene_A_D_6
Q16B_Sunsilk_6
Q16B_Sunsilk_A_D_6
Q16B_Ultra_Doux_6
Q16B_Fiama_6
Q16B_Chik_6
Q16B_Lux_6
Q16B_Vivel_6
Q16B_Dabur_Vatika_A_D_6
Q16B_Others_6
Q16B_Clinic_All_Clear_7
Q16B_Clinic_Plus_7
Q16B_Dove_7
Q16B_Essenza_7
Q16B_Garnier_7
Q16B_Garnier_A_D_7
Q16B_Head_Shoulder_7
Q16B_Pantene_7
Q16B_Pantene_A_D_7
Q16B_Sunsilk_7
Q16B_Sunsilk_A_D_7
Q16B_Ultra_Doux_7
Q16B_Fiama_7
Q16B_Chik_7
Q16B_Lux_7
Q16B_Vivel_7
Q16B_Dabur_Vatika_A_D_7
Q16B_Others_7
Q16B_Clinic_All_Clear_8
Q16B_Clinic_Plus_8
Q16B_Dove_8
Q16B_Essenza_8
Q16B_Garnier_8
Q16B_Garnier_A_D_8
Q16B_Head_Shoulder_8
Q16B_Pantene_8
Q16B_Pantene_A_D_8
Q16B_Sunsilk_8
Q16B_Sunsilk_A_D_8
Q16B_Ultra_Doux_8
Q16B_Fiama_8
Q16B_Chik_8
Q16B_Lux_8
Q16B_Vivel_8
Q16B_Dabur_Vatika_A_D_8
Q16B_Others_8
Q16B_Clinic_All_Clear_9
Q16B_Clinic_Plus_9
Q16B_Dove_9
Q16B_Essenza_9
Q16B_Garnier_9
Q16B_Garnier_A_D_9
Q16B_Head_Shoulder_9
Q16B_Pantene_9
Q16B_Pantene_A_D_9
Q16B_Sunsilk_9
Q16B_Sunsilk_A_D_9
Q16B_Ultra_Doux_9
Q16B_Fiama_9
Q16B_Chik_9
Q16B_Lux_9
Q16B_Vivel_9
Q16B_Dabur_Vatika_A_D_9
Q16B_Others_9
Q16B_Clinic_All_Clear_10
Q16B_Clinic_Plus_10
Q16B_Dove_10
Q16B_Essenza_10
Q16B_Garnier_10
Q16B_Garnier_A_D_10
Q16B_Head_Shoulder_10
Q16B_Pantene_10
Q16B_Pantene_A_D_10
Q16B_Sunsilk_10
Q16B_Sunsilk_A_D_10
Q16B_Ultra_Doux_10
Q16B_Fiama_10
Q16B_Chik_10
Q16B_Lux_10
Q16B_Vivel_10
Q16B_Dabur_Vatika_A_D_10
Q16B_Others_10
Q16B_Clinic_All_Clear_11
Q16B_Clinic_Plus_11
Q16B_Dove_11
Q16B_Essenza_11
Q16B_Garnier_11
Q16B_Garnier_A_D_11
Q16B_Head_Shoulder_11
Q16B_Pantene_11
Q16B_Pantene_A_D_11
Q16B_Sunsilk_11
Q16B_Sunsilk_A_D_11
Q16B_Ultra_Doux_11
Q16B_Fiama_11
Q16B_Chik_11
Q16B_Lux_11
Q16B_Vivel_11
Q16B_Dabur_Vatika_A_D_11
Q16B_Others_11
Q16B_Clinic_All_Clear_12
Q16B_Clinic_Plus_12
Q16B_Dove_12
Q16B_Essenza_12
Q16B_Garnier_12
Q16B_Garnier_A_D_12
Q16B_Head_Shoulder_12
Q16B_Pantene_12
Q16B_Pantene_A_D_12
Q16B_Sunsilk_12
Q16B_Sunsilk_A_D_12
Q16B_Ultra_Doux_12
Q16B_Fiama_12
Q16B_Chik_12
Q16B_Lux_12
Q16B_Vivel_12
Q16B_Dabur_Vatika_A_D_12
Q16B_Others_12
ITC_int_std
ITC_premium
ITC_trust
ITC_relevant
ITC_quality
HUL_int_std
HUL_premium
HUL_trust
HUL_relevant
HUL_quality
Q17b1_vivel_1
Q17b1_vivel_2
Q17b1_vivel_3
Q17b1_vivel_4
Q17b1_vivel_5
Q17b1_vivel_6
Q17b1_vivel_7
Q17b1_Fiama_1
Q17b1_Fiama_2
Q17b1_Fiama_3
Q17b1_Fiama_4
Q17b1_Fiama_5
Q17b1_Fiama_6
Q17b1_Fiama_7
Q5C_Spon_Chik
Q5C_Spon_Clinic_All_Clear
Q5C_Spon_Clinic_Plus
Q5C_Spon_Dabur_Vatika_A_D
Q5C_Spon_Dove
Q5C_Spon_Essenza
Q5C_Spon_Fiama
Q5C_Spon_Garnier
Q5C_Spon_Garnier_A_D
Q5C_Spon_Head_Shoulder
Q5C_Spon_Lux
Q5C_Spon_Others
Q5C_Spon_Pantene
Q5C_Spon_Pantene_A_D
Q5C_Spon_Sunsilk
Q5C_Spon_Sunsilk_A_D
Q5C_Spon_Ultra_Doux
Q5C_Spon_Vivel
Q5C_TOM_Chik
Q5C_TOM_Clinic_All_Clear
Q5C_TOM_Clinic_Plus
Q5C_TOM_Dabur_Vatika_A_D
Q5C_TOM_Dove
Q5C_TOM_Essenza
Q5C_TOM_Fiama
Q5C_TOM_Garnier
Q5C_TOM_Garnier_A_D
Q5C_TOM_Head_Shoulder
Q5C_TOM_Lux
Q5C_TOM_Others
Q5C_TOM_Pantene
Q5C_TOM_Pantene_A_D
Q5C_TOM_Sunsilk
Q5C_TOM_Sunsilk_A_D
Q5C_TOM_Ultra_Doux
Q5C_TOM_Vivel
flag;
run;

data v1.Shampoos_rollup_aw_nt;
set v1.Shampoos_rollup_aw_nt;
drop  _type_
_freq_
Q14_Others
Q16A_Others_1
Q16A_Others_2
Q16A_Others_3
Q16A_Others_4
Q16A_Others_5
Q16A_Others_6
Q16A_Others_7
Q16A_Others_8
Q16A_Others_9
Q16A_Others_10
Q16A_Others_11
Q16A_Others_12
Q16A_Others_13
Q16A_Others_14
Q16A_Others_15
Q16A_Others_16
Q16B_Others
Q16B_Others_1
Q16B_Others_2
Q16B_Others_3
Q16B_Others_4
Q16B_Others_5
Q16B_Others_6
Q16B_Others_7
Q16B_Others_8
Q16B_Others_9
Q16B_Others_10
Q16B_Others_11
Q16B_Others_12
Q16_Others
Q17_A_Others
Q17b_Others_1
Q17b_Others_2
Q17b_Others_3
Q17b_Others_4
Q17b_Others_5
Q17b_Others_6
Q17b_Others_7
Q17b_Others_8
Q2_HEARD_Others
Q2_MOST_Others
Q2_USED_Others
Q5C_Spon_Others
Q5C_TOM_Others
;
run;


data v1.Shampoos_rollup_per_aw_nt;
set v1.Shampoos_rollup_aw_nt;
per_Q2_HEARD_Clinic_All_Clear =(Q2_HEARD_Clinic_All_Clear/ flag)*100;
per_Q2_HEARD_Clinic_Plus =(Q2_HEARD_Clinic_Plus/ flag)*100;
per_Q2_HEARD_Dove =(Q2_HEARD_Dove/ flag)*100;
per_Q2_HEARD_Essenza =(Q2_HEARD_Essenza/ flag)*100;
per_Q2_HEARD_Garnier =(Q2_HEARD_Garnier/ flag)*100;
per_Q2_HEARD_Garnier_A_D =(Q2_HEARD_Garnier_A_D/ flag)*100;
per_Q2_HEARD_Head_Shoulder =(Q2_HEARD_Head_Shoulder/ flag)*100;
per_Q2_HEARD_Pantene =(Q2_HEARD_Pantene/ flag)*100;
per_Q2_HEARD_Pantene_A_D =(Q2_HEARD_Pantene_A_D/ flag)*100;
per_Q2_HEARD_Sunsilk =(Q2_HEARD_Sunsilk/ flag)*100;
per_Q2_HEARD_Sunsilk_A_D =(Q2_HEARD_Sunsilk_A_D/ flag)*100;
per_Q2_HEARD_Ultra_Doux =(Q2_HEARD_Ultra_Doux/ flag)*100;
per_Q2_HEARD_Fiama =(Q2_HEARD_Fiama/ flag)*100;
per_Q2_HEARD_Chik =(Q2_HEARD_Chik/ flag)*100;
per_Q2_HEARD_Lux =(Q2_HEARD_Lux/ flag)*100;
per_Q2_HEARD_Vivel =(Q2_HEARD_Vivel/ flag)*100;
per_Q2_HEARD_Dabur_Vatika_A_D =(Q2_HEARD_Dabur_Vatika_A_D/ flag)*100;
per_Q2_USED_Clinic_All_Clear =(Q2_USED_Clinic_All_Clear/ flag)*100;
per_Q2_USED_Clinic_Plus =(Q2_USED_Clinic_Plus/ flag)*100;
per_Q2_USED_Dove =(Q2_USED_Dove/ flag)*100;
per_Q2_USED_Essenza =(Q2_USED_Essenza/ flag)*100;
per_Q2_USED_Garnier =(Q2_USED_Garnier/ flag)*100;
per_Q2_USED_Garnier_A_D =(Q2_USED_Garnier_A_D/ flag)*100;
per_Q2_USED_Head_Shoulder =(Q2_USED_Head_Shoulder/ flag)*100;
per_Q2_USED_Pantene =(Q2_USED_Pantene/ flag)*100;
per_Q2_USED_Pantene_A_D =(Q2_USED_Pantene_A_D/ flag)*100;
per_Q2_USED_Sunsilk =(Q2_USED_Sunsilk/ flag)*100;
per_Q2_USED_Sunsilk_A_D =(Q2_USED_Sunsilk_A_D/ flag)*100;
per_Q2_USED_Ultra_Doux =(Q2_USED_Ultra_Doux/ flag)*100;
per_Q2_USED_Fiama =(Q2_USED_Fiama/ flag)*100;
per_Q2_USED_Chik =(Q2_USED_Chik/ flag)*100;
per_Q2_USED_Lux =(Q2_USED_Lux/ flag)*100;
per_Q2_USED_Vivel =(Q2_USED_Vivel/ flag)*100;
per_Q2_USED_Dabur_Vatika_A_D =(Q2_USED_Dabur_Vatika_A_D/ flag)*100;
per_Q2_MOST_Clinic_All_Clear =(Q2_MOST_Clinic_All_Clear/ flag)*100;
per_Q2_MOST_Clinic_Plus =(Q2_MOST_Clinic_Plus/ flag)*100;
per_Q2_MOST_Dove =(Q2_MOST_Dove/ flag)*100;
per_Q2_MOST_Essenza =(Q2_MOST_Essenza/ flag)*100;
per_Q2_MOST_Garnier =(Q2_MOST_Garnier/ flag)*100;
per_Q2_MOST_Garnier_A_D =(Q2_MOST_Garnier_A_D/ flag)*100;
per_Q2_MOST_Head_Shoulder =(Q2_MOST_Head_Shoulder/ flag)*100;
per_Q2_MOST_Pantene =(Q2_MOST_Pantene/ flag)*100;
per_Q2_MOST_Pantene_A_D =(Q2_MOST_Pantene_A_D/ flag)*100;
per_Q2_MOST_Sunsilk =(Q2_MOST_Sunsilk/ flag)*100;
per_Q2_MOST_Sunsilk_A_D =(Q2_MOST_Sunsilk_A_D/ flag)*100;
per_Q2_MOST_Ultra_Doux =(Q2_MOST_Ultra_Doux/ flag)*100;
per_Q2_MOST_Fiama =(Q2_MOST_Fiama/ flag)*100;
per_Q2_MOST_Chik =(Q2_MOST_Chik/ flag)*100;
per_Q2_MOST_Lux =(Q2_MOST_Lux/ flag)*100;
per_Q2_MOST_Vivel =(Q2_MOST_Vivel/ flag)*100;
per_Q2_MOST_Dabur_Vatika_A_D =(Q2_MOST_Dabur_Vatika_A_D/ flag)*100;
per_Q14_Clinic_All_Clear_TB =(Q14_Clinic_All_Clear_TB/ flag)*100;
per_Q14_Clinic_Plus_TB =(Q14_Clinic_Plus_TB/ flag)*100;
per_Q14_Dove_TB =(Q14_Dove_TB/ flag)*100;
per_Q14_Essenza_TB =(Q14_Essenza_TB/ flag)*100;
per_Q14_Garnier_TB =(Q14_Garnier_TB/ flag)*100;
per_Q14_Head_Shoulder_TB =(Q14_Head_Shoulder_TB/ flag)*100;
per_Q14_Pantene_TB =(Q14_Pantene_TB/ flag)*100;
per_Q14_Sunsilk_TB =(Q14_Sunsilk_TB/ flag)*100;
per_Q14_Ultra_Doux_TB =(Q14_Ultra_Doux_TB/ flag)*100;
per_Q14_Fiama_TB =(Q14_Fiama_TB/ flag)*100;
per_Q14_Chik_TB =(Q14_Chik_TB/ flag)*100;
per_Q14_Lux_TB =(Q14_Lux_TB/ flag)*100;
per_Q14_Vivel_TB =(Q14_Vivel_TB/ flag)*100;
per_HUL_int_std =(HUL_int_std/ flag)*100;
per_HUL_premium =(HUL_premium/ flag)*100;
per_HUL_quality =(HUL_quality/ flag)*100;
per_HUL_relevant =(HUL_relevant/ flag)*100;
per_HUL_trust =(HUL_trust/ flag)*100;
per_ITC_int_std =(ITC_int_std/ flag)*100;
per_ITC_premium =(ITC_premium/ flag)*100;
per_ITC_quality =(ITC_quality/ flag)*100;
per_ITC_relevant =(ITC_relevant/ flag)*100;
per_ITC_trust =(ITC_trust/ flag)*100;
per_Q16A_Chik_1 =(Q16A_Chik_1/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_10 =(Q16A_Chik_10/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_11 =(Q16A_Chik_11/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_12 =(Q16A_Chik_12/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_13 =(Q16A_Chik_13/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_14 =(Q16A_Chik_14/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_15 =(Q16A_Chik_15/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_16 =(Q16A_Chik_16/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_2 =(Q16A_Chik_2/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_3 =(Q16A_Chik_3/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_4 =(Q16A_Chik_4/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_5 =(Q16A_Chik_5/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_6 =(Q16A_Chik_6/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_7 =(Q16A_Chik_7/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_8 =(Q16A_Chik_8/ Q2_HEARD_Chik)*100;
per_Q16A_Chik_9 =(Q16A_Chik_9/ Q2_HEARD_Chik)*100;
per_Q16A_Clinic_All_Clear_1 =(Q16A_Clinic_All_Clear_1/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_10 =(Q16A_Clinic_All_Clear_10/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_11 =(Q16A_Clinic_All_Clear_11/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_12 =(Q16A_Clinic_All_Clear_12/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_13 =(Q16A_Clinic_All_Clear_13/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_14 =(Q16A_Clinic_All_Clear_14/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_15 =(Q16A_Clinic_All_Clear_15/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_16 =(Q16A_Clinic_All_Clear_16/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_2 =(Q16A_Clinic_All_Clear_2/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_3 =(Q16A_Clinic_All_Clear_3/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_4 =(Q16A_Clinic_All_Clear_4/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_5 =(Q16A_Clinic_All_Clear_5/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_6 =(Q16A_Clinic_All_Clear_6/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_7 =(Q16A_Clinic_All_Clear_7/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_8 =(Q16A_Clinic_All_Clear_8/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_All_Clear_9 =(Q16A_Clinic_All_Clear_9/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16A_Clinic_Plus_1 =(Q16A_Clinic_Plus_1/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_10 =(Q16A_Clinic_Plus_10/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_11 =(Q16A_Clinic_Plus_11/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_12 =(Q16A_Clinic_Plus_12/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_13 =(Q16A_Clinic_Plus_13/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_14 =(Q16A_Clinic_Plus_14/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_15 =(Q16A_Clinic_Plus_15/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_16 =(Q16A_Clinic_Plus_16/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_2 =(Q16A_Clinic_Plus_2/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_3 =(Q16A_Clinic_Plus_3/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_4 =(Q16A_Clinic_Plus_4/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_5 =(Q16A_Clinic_Plus_5/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_6 =(Q16A_Clinic_Plus_6/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_7 =(Q16A_Clinic_Plus_7/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_8 =(Q16A_Clinic_Plus_8/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Clinic_Plus_9 =(Q16A_Clinic_Plus_9/ Q2_HEARD_Clinic_Plus)*100;
per_Q16A_Dabur_Vatika_A_D_1 =(Q16A_Dabur_Vatika_A_D_1/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_10 =(Q16A_Dabur_Vatika_A_D_10/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_11 =(Q16A_Dabur_Vatika_A_D_11/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_12 =(Q16A_Dabur_Vatika_A_D_12/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_13 =(Q16A_Dabur_Vatika_A_D_13/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_14 =(Q16A_Dabur_Vatika_A_D_14/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_15 =(Q16A_Dabur_Vatika_A_D_15/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_16 =(Q16A_Dabur_Vatika_A_D_16/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_2 =(Q16A_Dabur_Vatika_A_D_2/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_3 =(Q16A_Dabur_Vatika_A_D_3/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_4 =(Q16A_Dabur_Vatika_A_D_4/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_5 =(Q16A_Dabur_Vatika_A_D_5/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_6 =(Q16A_Dabur_Vatika_A_D_6/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_7 =(Q16A_Dabur_Vatika_A_D_7/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_8 =(Q16A_Dabur_Vatika_A_D_8/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dabur_Vatika_A_D_9 =(Q16A_Dabur_Vatika_A_D_9/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16A_Dove_1 =(Q16A_Dove_1/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_10 =(Q16A_Dove_10/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_11 =(Q16A_Dove_11/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_12 =(Q16A_Dove_12/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_13 =(Q16A_Dove_13/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_14 =(Q16A_Dove_14/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_15 =(Q16A_Dove_15/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_16 =(Q16A_Dove_16/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_2 =(Q16A_Dove_2/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_3 =(Q16A_Dove_3/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_4 =(Q16A_Dove_4/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_5 =(Q16A_Dove_5/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_6 =(Q16A_Dove_6/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_7 =(Q16A_Dove_7/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_8 =(Q16A_Dove_8/ Q2_HEARD_Dove)*100;
per_Q16A_Dove_9 =(Q16A_Dove_9/ Q2_HEARD_Dove)*100;
per_Q16A_Essenza_1 =(Q16A_Essenza_1/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_10 =(Q16A_Essenza_10/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_11 =(Q16A_Essenza_11/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_12 =(Q16A_Essenza_12/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_13 =(Q16A_Essenza_13/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_14 =(Q16A_Essenza_14/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_15 =(Q16A_Essenza_15/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_16 =(Q16A_Essenza_16/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_2 =(Q16A_Essenza_2/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_3 =(Q16A_Essenza_3/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_4 =(Q16A_Essenza_4/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_5 =(Q16A_Essenza_5/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_6 =(Q16A_Essenza_6/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_7 =(Q16A_Essenza_7/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_8 =(Q16A_Essenza_8/Q2_HEARD_Essenza)*100;
per_Q16A_Essenza_9 =(Q16A_Essenza_9/Q2_HEARD_Essenza)*100;
per_Q16A_Fiama_1 =(Q16A_Fiama_1/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_10 =(Q16A_Fiama_10/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_11 =(Q16A_Fiama_11/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_12 =(Q16A_Fiama_12/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_13 =(Q16A_Fiama_13/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_14 =(Q16A_Fiama_14/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_15 =(Q16A_Fiama_15/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_16 =(Q16A_Fiama_16/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_2 =(Q16A_Fiama_2/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_3 =(Q16A_Fiama_3/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_4 =(Q16A_Fiama_4/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_5 =(Q16A_Fiama_5/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_6 =(Q16A_Fiama_6/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_7 =(Q16A_Fiama_7/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_8 =(Q16A_Fiama_8/ Q2_HEARD_Fiama)*100;
per_Q16A_Fiama_9 =(Q16A_Fiama_9/ Q2_HEARD_Fiama)*100;
per_Q16A_Garnier_1 =(Q16A_Garnier_1/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_10 =(Q16A_Garnier_10/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_11 =(Q16A_Garnier_11/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_12 =(Q16A_Garnier_12/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_13 =(Q16A_Garnier_13/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_14 =(Q16A_Garnier_14/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_15 =(Q16A_Garnier_15/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_16 =(Q16A_Garnier_16/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_2 =(Q16A_Garnier_2/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_3 =(Q16A_Garnier_3/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_4 =(Q16A_Garnier_4/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_5 =(Q16A_Garnier_5/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_6 =(Q16A_Garnier_6/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_7 =(Q16A_Garnier_7/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_8 =(Q16A_Garnier_8/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_9 =(Q16A_Garnier_9/ Q2_HEARD_Garnier)*100;
per_Q16A_Garnier_A_D_1 =(Q16A_Garnier_A_D_1/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_10 =(Q16A_Garnier_A_D_10/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_11 =(Q16A_Garnier_A_D_11/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_12 =(Q16A_Garnier_A_D_12/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_13 =(Q16A_Garnier_A_D_13/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_14 =(Q16A_Garnier_A_D_14/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_15 =(Q16A_Garnier_A_D_15/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_16 =(Q16A_Garnier_A_D_16/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_2 =(Q16A_Garnier_A_D_2/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_3 =(Q16A_Garnier_A_D_3/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_4 =(Q16A_Garnier_A_D_4/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_5 =(Q16A_Garnier_A_D_5/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_6 =(Q16A_Garnier_A_D_6/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_7 =(Q16A_Garnier_A_D_7/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_8 =(Q16A_Garnier_A_D_8/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Garnier_A_D_9 =(Q16A_Garnier_A_D_9/ Q2_HEARD_Garnier_A_D)*100;
per_Q16A_Head_Shoulder_1 =(Q16A_Head_Shoulder_1/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_10 =(Q16A_Head_Shoulder_10/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_11 =(Q16A_Head_Shoulder_11/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_12 =(Q16A_Head_Shoulder_12/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_13 =(Q16A_Head_Shoulder_13/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_14 =(Q16A_Head_Shoulder_14/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_15 =(Q16A_Head_Shoulder_15/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_16 =(Q16A_Head_Shoulder_16/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_2 =(Q16A_Head_Shoulder_2/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_3 =(Q16A_Head_Shoulder_3/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_4 =(Q16A_Head_Shoulder_4/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_5 =(Q16A_Head_Shoulder_5/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_6 =(Q16A_Head_Shoulder_6/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_7 =(Q16A_Head_Shoulder_7/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_8 =(Q16A_Head_Shoulder_8/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Head_Shoulder_9 =(Q16A_Head_Shoulder_9/Q2_HEARD_Head_Shoulder)*100;
per_Q16A_Lux_1 =(Q16A_Lux_1/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_10 =(Q16A_Lux_10/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_11 =(Q16A_Lux_11/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_12 =(Q16A_Lux_12/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_13 =(Q16A_Lux_13/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_14 =(Q16A_Lux_14/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_15 =(Q16A_Lux_15/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_16 =(Q16A_Lux_16/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_2 =(Q16A_Lux_2/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_3 =(Q16A_Lux_3/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_4 =(Q16A_Lux_4/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_5 =(Q16A_Lux_5/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_6 =(Q16A_Lux_6/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_7 =(Q16A_Lux_7/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_8 =(Q16A_Lux_8/ Q2_HEARD_Lux)*100;
per_Q16A_Lux_9 =(Q16A_Lux_9/ Q2_HEARD_Lux)*100;
per_Q16A_Pantene_1 =(Q16A_Pantene_1/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_10 =(Q16A_Pantene_10/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_11 =(Q16A_Pantene_11/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_12 =(Q16A_Pantene_12/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_13 =(Q16A_Pantene_13/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_14 =(Q16A_Pantene_14/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_15 =(Q16A_Pantene_15/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_16 =(Q16A_Pantene_16/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_2 =(Q16A_Pantene_2/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_3 =(Q16A_Pantene_3/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_4 =(Q16A_Pantene_4/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_5 =(Q16A_Pantene_5/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_6 =(Q16A_Pantene_6/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_7 =(Q16A_Pantene_7/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_8 =(Q16A_Pantene_8/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_9 =(Q16A_Pantene_9/ Q2_HEARD_Pantene)*100;
per_Q16A_Pantene_A_D_1 =(Q16A_Pantene_A_D_1/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_10 =(Q16A_Pantene_A_D_10/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_11 =(Q16A_Pantene_A_D_11/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_12 =(Q16A_Pantene_A_D_12/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_13 =(Q16A_Pantene_A_D_13/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_14 =(Q16A_Pantene_A_D_14/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_15 =(Q16A_Pantene_A_D_15/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_16 =(Q16A_Pantene_A_D_16/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_2 =(Q16A_Pantene_A_D_2/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_3 =(Q16A_Pantene_A_D_3/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_4 =(Q16A_Pantene_A_D_4/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_5 =(Q16A_Pantene_A_D_5/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_6 =(Q16A_Pantene_A_D_6/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_7 =(Q16A_Pantene_A_D_7/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_8 =(Q16A_Pantene_A_D_8/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Pantene_A_D_9 =(Q16A_Pantene_A_D_9/ Q2_HEARD_Pantene_A_D)*100;
per_Q16A_Sunsilk_1 =(Q16A_Sunsilk_1/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_10 =(Q16A_Sunsilk_10/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_11 =(Q16A_Sunsilk_11/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_12 =(Q16A_Sunsilk_12/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_13 =(Q16A_Sunsilk_13/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_14 =(Q16A_Sunsilk_14/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_15 =(Q16A_Sunsilk_15/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_16 =(Q16A_Sunsilk_16/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_2 =(Q16A_Sunsilk_2/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_3 =(Q16A_Sunsilk_3/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_4 =(Q16A_Sunsilk_4/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_5 =(Q16A_Sunsilk_5/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_6 =(Q16A_Sunsilk_6/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_7 =(Q16A_Sunsilk_7/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_8 =(Q16A_Sunsilk_8/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_9 =(Q16A_Sunsilk_9/ Q2_HEARD_Sunsilk)*100;
per_Q16A_Sunsilk_A_D_1 =(Q16A_Sunsilk_A_D_1/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_10 =(Q16A_Sunsilk_A_D_10/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_11 =(Q16A_Sunsilk_A_D_11/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_12 =(Q16A_Sunsilk_A_D_12/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_13 =(Q16A_Sunsilk_A_D_13/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_14 =(Q16A_Sunsilk_A_D_14/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_15 =(Q16A_Sunsilk_A_D_15/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_16 =(Q16A_Sunsilk_A_D_16/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_2 =(Q16A_Sunsilk_A_D_2/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_3 =(Q16A_Sunsilk_A_D_3/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_4 =(Q16A_Sunsilk_A_D_4/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_5 =(Q16A_Sunsilk_A_D_5/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_6 =(Q16A_Sunsilk_A_D_6/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_7 =(Q16A_Sunsilk_A_D_7/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_8 =(Q16A_Sunsilk_A_D_8/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Sunsilk_A_D_9 =(Q16A_Sunsilk_A_D_9/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16A_Ultra_Doux_1 =(Q16A_Ultra_Doux_1/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_10 =(Q16A_Ultra_Doux_10/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_11 =(Q16A_Ultra_Doux_11/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_12 =(Q16A_Ultra_Doux_12/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_13 =(Q16A_Ultra_Doux_13/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_14 =(Q16A_Ultra_Doux_14/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_15 =(Q16A_Ultra_Doux_15/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_16 =(Q16A_Ultra_Doux_16/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_2 =(Q16A_Ultra_Doux_2/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_3 =(Q16A_Ultra_Doux_3/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_4 =(Q16A_Ultra_Doux_4/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_5 =(Q16A_Ultra_Doux_5/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_6 =(Q16A_Ultra_Doux_6/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_7 =(Q16A_Ultra_Doux_7/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_8 =(Q16A_Ultra_Doux_8/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Ultra_Doux_9 =(Q16A_Ultra_Doux_9/ Q2_HEARD_Ultra_Doux)*100;
per_Q16A_Vivel_1 =(Q16A_Vivel_1/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_10 =(Q16A_Vivel_10/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_11 =(Q16A_Vivel_11/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_12 =(Q16A_Vivel_12/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_13 =(Q16A_Vivel_13/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_14 =(Q16A_Vivel_14/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_15 =(Q16A_Vivel_15/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_16 =(Q16A_Vivel_16/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_2 =(Q16A_Vivel_2/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_3 =(Q16A_Vivel_3/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_4 =(Q16A_Vivel_4/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_5 =(Q16A_Vivel_5/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_6 =(Q16A_Vivel_6/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_7 =(Q16A_Vivel_7/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_8 =(Q16A_Vivel_8/ Q2_HEARD_Vivel)*100;
per_Q16A_Vivel_9 =(Q16A_Vivel_9/ Q2_HEARD_Vivel)*100;
per_Q16B_Chik_1 =(Q16B_Chik_1/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_10 =(Q16B_Chik_10/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_11 =(Q16B_Chik_11/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_12 =(Q16B_Chik_12/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_2 =(Q16B_Chik_2/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_3 =(Q16B_Chik_3/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_4 =(Q16B_Chik_4/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_5 =(Q16B_Chik_5/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_6 =(Q16B_Chik_6/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_7 =(Q16B_Chik_7/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_8 =(Q16B_Chik_8/ Q2_HEARD_Chik)*100;
per_Q16B_Chik_9 =(Q16B_Chik_9/ Q2_HEARD_Chik)*100;
per_Q16B_Clinic_All_Clear_1 =(Q16B_Clinic_All_Clear_1/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_10 =(Q16B_Clinic_All_Clear_10/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_11 =(Q16B_Clinic_All_Clear_11/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_12 =(Q16B_Clinic_All_Clear_12/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_2 =(Q16B_Clinic_All_Clear_2/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_3 =(Q16B_Clinic_All_Clear_3/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_4 =(Q16B_Clinic_All_Clear_4/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_5 =(Q16B_Clinic_All_Clear_5/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_6 =(Q16B_Clinic_All_Clear_6/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_7 =(Q16B_Clinic_All_Clear_7/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_8 =(Q16B_Clinic_All_Clear_8/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_All_Clear_9 =(Q16B_Clinic_All_Clear_9/ Q2_HEARD_Clinic_All_Clear)*100;
per_Q16B_Clinic_Plus_1 =(Q16B_Clinic_Plus_1/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_10 =(Q16B_Clinic_Plus_10/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_11 =(Q16B_Clinic_Plus_11/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_12 =(Q16B_Clinic_Plus_12/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_2 =(Q16B_Clinic_Plus_2/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_3 =(Q16B_Clinic_Plus_3/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_4 =(Q16B_Clinic_Plus_4/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_5 =(Q16B_Clinic_Plus_5/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_6 =(Q16B_Clinic_Plus_6/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_7 =(Q16B_Clinic_Plus_7/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_8 =(Q16B_Clinic_Plus_8/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Clinic_Plus_9 =(Q16B_Clinic_Plus_9/ Q2_HEARD_Clinic_Plus)*100;
per_Q16B_Dabur_Vatika_A_D_1 =(Q16B_Dabur_Vatika_A_D_1/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_10 =(Q16B_Dabur_Vatika_A_D_10/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_11 =(Q16B_Dabur_Vatika_A_D_11/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_12 =(Q16B_Dabur_Vatika_A_D_12/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_2 =(Q16B_Dabur_Vatika_A_D_2/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_3 =(Q16B_Dabur_Vatika_A_D_3/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_4 =(Q16B_Dabur_Vatika_A_D_4/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_5 =(Q16B_Dabur_Vatika_A_D_5/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_6 =(Q16B_Dabur_Vatika_A_D_6/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_7 =(Q16B_Dabur_Vatika_A_D_7/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_8 =(Q16B_Dabur_Vatika_A_D_8/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dabur_Vatika_A_D_9 =(Q16B_Dabur_Vatika_A_D_9/Q2_HEARD_Dabur_Vatika_A_D)*100;
per_Q16B_Dove_1 =(Q16B_Dove_1/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_10 =(Q16B_Dove_10/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_11 =(Q16B_Dove_11/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_12 =(Q16B_Dove_12/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_2 =(Q16B_Dove_2/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_3 =(Q16B_Dove_3/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_4 =(Q16B_Dove_4/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_5 =(Q16B_Dove_5/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_6 =(Q16B_Dove_6/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_7 =(Q16B_Dove_7/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_8 =(Q16B_Dove_8/ Q2_HEARD_Dove)*100;
per_Q16B_Dove_9 =(Q16B_Dove_9/ Q2_HEARD_Dove)*100;
per_Q16B_Essenza_1 =(Q16B_Essenza_1/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_10 =(Q16B_Essenza_10/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_11 =(Q16B_Essenza_11/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_12 =(Q16B_Essenza_12/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_2 =(Q16B_Essenza_2/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_3 =(Q16B_Essenza_3/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_4 =(Q16B_Essenza_4/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_5 =(Q16B_Essenza_5/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_6 =(Q16B_Essenza_6/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_7 =(Q16B_Essenza_7/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_8 =(Q16B_Essenza_8/Q2_HEARD_Essenza)*100;
per_Q16B_Essenza_9 =(Q16B_Essenza_9/Q2_HEARD_Essenza)*100;
per_Q16B_Fiama_1 =(Q16B_Fiama_1/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_10 =(Q16B_Fiama_10/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_11 =(Q16B_Fiama_11/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_12 =(Q16B_Fiama_12/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_2 =(Q16B_Fiama_2/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_3 =(Q16B_Fiama_3/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_4 =(Q16B_Fiama_4/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_5 =(Q16B_Fiama_5/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_6 =(Q16B_Fiama_6/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_7 =(Q16B_Fiama_7/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_8 =(Q16B_Fiama_8/ Q2_HEARD_Fiama)*100;
per_Q16B_Fiama_9 =(Q16B_Fiama_9/ Q2_HEARD_Fiama)*100;
per_Q16B_Garnier_1 =(Q16B_Garnier_1/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_10 =(Q16B_Garnier_10/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_11 =(Q16B_Garnier_11/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_12 =(Q16B_Garnier_12/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_2 =(Q16B_Garnier_2/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_3 =(Q16B_Garnier_3/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_4 =(Q16B_Garnier_4/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_5 =(Q16B_Garnier_5/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_6 =(Q16B_Garnier_6/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_7 =(Q16B_Garnier_7/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_8 =(Q16B_Garnier_8/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_9 =(Q16B_Garnier_9/ Q2_HEARD_Garnier)*100;
per_Q16B_Garnier_A_D_1 =(Q16B_Garnier_A_D_1/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_10 =(Q16B_Garnier_A_D_10/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_11 =(Q16B_Garnier_A_D_11/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_12 =(Q16B_Garnier_A_D_12/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_2 =(Q16B_Garnier_A_D_2/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_3 =(Q16B_Garnier_A_D_3/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_4 =(Q16B_Garnier_A_D_4/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_5 =(Q16B_Garnier_A_D_5/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_6 =(Q16B_Garnier_A_D_6/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_7 =(Q16B_Garnier_A_D_7/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_8 =(Q16B_Garnier_A_D_8/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Garnier_A_D_9 =(Q16B_Garnier_A_D_9/ Q2_HEARD_Garnier_A_D)*100;
per_Q16B_Head_Shoulder_1 =(Q16B_Head_Shoulder_1/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_10 =(Q16B_Head_Shoulder_10/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_11 =(Q16B_Head_Shoulder_11/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_12 =(Q16B_Head_Shoulder_12/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_2 =(Q16B_Head_Shoulder_2/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_3 =(Q16B_Head_Shoulder_3/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_4 =(Q16B_Head_Shoulder_4/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_5 =(Q16B_Head_Shoulder_5/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_6 =(Q16B_Head_Shoulder_6/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_7 =(Q16B_Head_Shoulder_7/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_8 =(Q16B_Head_Shoulder_8/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Head_Shoulder_9 =(Q16B_Head_Shoulder_9/Q2_HEARD_Head_Shoulder)*100;
per_Q16B_Lux_1 =(Q16B_Lux_1/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_10 =(Q16B_Lux_10/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_11 =(Q16B_Lux_11/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_12 =(Q16B_Lux_12/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_2 =(Q16B_Lux_2/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_3 =(Q16B_Lux_3/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_4 =(Q16B_Lux_4/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_5 =(Q16B_Lux_5/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_6 =(Q16B_Lux_6/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_7 =(Q16B_Lux_7/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_8 =(Q16B_Lux_8/ Q2_HEARD_Lux)*100;
per_Q16B_Lux_9 =(Q16B_Lux_9/ Q2_HEARD_Lux)*100;
per_Q16B_Pantene_1 =(Q16B_Pantene_1/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_10 =(Q16B_Pantene_10/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_11 =(Q16B_Pantene_11/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_12 =(Q16B_Pantene_12/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_2 =(Q16B_Pantene_2/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_3 =(Q16B_Pantene_3/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_4 =(Q16B_Pantene_4/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_5 =(Q16B_Pantene_5/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_6 =(Q16B_Pantene_6/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_7 =(Q16B_Pantene_7/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_8 =(Q16B_Pantene_8/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_9 =(Q16B_Pantene_9/ Q2_HEARD_Pantene)*100;
per_Q16B_Pantene_A_D_1 =(Q16B_Pantene_A_D_1/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_10 =(Q16B_Pantene_A_D_10/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_11 =(Q16B_Pantene_A_D_11/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_12 =(Q16B_Pantene_A_D_12/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_2 =(Q16B_Pantene_A_D_2/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_3 =(Q16B_Pantene_A_D_3/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_4 =(Q16B_Pantene_A_D_4/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_5 =(Q16B_Pantene_A_D_5/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_6 =(Q16B_Pantene_A_D_6/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_7 =(Q16B_Pantene_A_D_7/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_8 =(Q16B_Pantene_A_D_8/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Pantene_A_D_9 =(Q16B_Pantene_A_D_9/ Q2_HEARD_Pantene_A_D)*100;
per_Q16B_Sunsilk_1 =(Q16B_Sunsilk_1/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_10 =(Q16B_Sunsilk_10/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_11 =(Q16B_Sunsilk_11/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_12 =(Q16B_Sunsilk_12/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_2 =(Q16B_Sunsilk_2/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_3 =(Q16B_Sunsilk_3/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_4 =(Q16B_Sunsilk_4/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_5 =(Q16B_Sunsilk_5/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_6 =(Q16B_Sunsilk_6/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_7 =(Q16B_Sunsilk_7/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_8 =(Q16B_Sunsilk_8/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_9 =(Q16B_Sunsilk_9/ Q2_HEARD_Sunsilk)*100;
per_Q16B_Sunsilk_A_D_1 =(Q16B_Sunsilk_A_D_1/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_10 =(Q16B_Sunsilk_A_D_10/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_11 =(Q16B_Sunsilk_A_D_11/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_12 =(Q16B_Sunsilk_A_D_12/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_2 =(Q16B_Sunsilk_A_D_2/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_3 =(Q16B_Sunsilk_A_D_3/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_4 =(Q16B_Sunsilk_A_D_4/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_5 =(Q16B_Sunsilk_A_D_5/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_6 =(Q16B_Sunsilk_A_D_6/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_7 =(Q16B_Sunsilk_A_D_7/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_8 =(Q16B_Sunsilk_A_D_8/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Sunsilk_A_D_9 =(Q16B_Sunsilk_A_D_9/ Q2_HEARD_Sunsilk_A_D)*100;
per_Q16B_Ultra_Doux_1 =(Q16B_Ultra_Doux_1/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_10 =(Q16B_Ultra_Doux_10/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_11 =(Q16B_Ultra_Doux_11/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_12 =(Q16B_Ultra_Doux_12/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_2 =(Q16B_Ultra_Doux_2/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_3 =(Q16B_Ultra_Doux_3/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_4 =(Q16B_Ultra_Doux_4/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_5 =(Q16B_Ultra_Doux_5/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_6 =(Q16B_Ultra_Doux_6/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_7 =(Q16B_Ultra_Doux_7/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_8 =(Q16B_Ultra_Doux_8/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Ultra_Doux_9 =(Q16B_Ultra_Doux_9/ Q2_HEARD_Ultra_Doux)*100;
per_Q16B_Vivel_1 =(Q16B_Vivel_1/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_10 =(Q16B_Vivel_10/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_11 =(Q16B_Vivel_11/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_12 =(Q16B_Vivel_12/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_2 =(Q16B_Vivel_2/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_3 =(Q16B_Vivel_3/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_4 =(Q16B_Vivel_4/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_5 =(Q16B_Vivel_5/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_6 =(Q16B_Vivel_6/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_7 =(Q16B_Vivel_7/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_8 =(Q16B_Vivel_8/ Q2_HEARD_Vivel)*100;
per_Q16B_Vivel_9 =(Q16B_Vivel_9/ Q2_HEARD_Vivel)*100;
per_Q17_A_Chik =(Q17_A_Chik/ flag)*100;
per_Q17_A_Clinic_All_Clear =(Q17_A_Clinic_All_Clear/ flag)*100;
per_Q17_A_Clinic_Plus =(Q17_A_Clinic_Plus/ flag)*100;
per_Q17_A_Dabur_Vatika_A_D =(Q17_A_Dabur_Vatika_A_D/ flag)*100;
per_Q17_A_Dove =(Q17_A_Dove/ flag)*100;
per_Q17_A_Essenza =(Q17_A_Essenza/ flag)*100;
per_Q17_A_Fiama =(Q17_A_Fiama/ flag)*100;
per_Q17_A_Garnier =(Q17_A_Garnier/ flag)*100;
per_Q17_A_Garnier_A_D =(Q17_A_Garnier_A_D/ flag)*100;
per_Q17_A_Head_Shoulder =(Q17_A_Head_Shoulder/ flag)*100;
per_Q17_A_Lux =(Q17_A_Lux/ flag)*100;
per_Q17_A_Pantene =(Q17_A_Pantene/ flag)*100;
per_Q17_A_Pantene_A_D =(Q17_A_Pantene_A_D/ flag)*100;
per_Q17_A_Sunsilk =(Q17_A_Sunsilk/ flag)*100;
per_Q17_A_Sunsilk_A_D =(Q17_A_Sunsilk_A_D/ flag)*100;
per_Q17_A_Ultra_Doux =(Q17_A_Ultra_Doux/ flag)*100;
per_Q17_A_Vivel =(Q17_A_Vivel/ flag)*100;
per_Q17b_Chik_1 =(Q17b_Chik_1/Q17_A_Chik)*100;
per_Q17b_Chik_2 =(Q17b_Chik_2/Q17_A_Chik)*100;
per_Q17b_Chik_3 =(Q17b_Chik_3/Q17_A_Chik)*100;
per_Q17b_Chik_4 =(Q17b_Chik_4/Q17_A_Chik)*100;
per_Q17b_Chik_5 =(Q17b_Chik_5/Q17_A_Chik)*100;
per_Q17b_Chik_6 =(Q17b_Chik_6/Q17_A_Chik)*100;
per_Q17b_Chik_7 =(Q17b_Chik_7/Q17_A_Chik)*100;
per_Q17b_Chik_8 =(Q17b_Chik_8/Q17_A_Chik)*100;
per_Q17b_Clinic_All_Clear_1 =(Q17b_Clinic_All_Clear_1/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_2 =(Q17b_Clinic_All_Clear_2/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_3 =(Q17b_Clinic_All_Clear_3/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_4 =(Q17b_Clinic_All_Clear_4/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_5 =(Q17b_Clinic_All_Clear_5/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_6 =(Q17b_Clinic_All_Clear_6/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_7 =(Q17b_Clinic_All_Clear_7/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_All_Clear_8 =(Q17b_Clinic_All_Clear_8/Q17_A_Clinic_All_Clear)*100;
per_Q17b_Clinic_Plus_1 =(Q17b_Clinic_Plus_1/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_2 =(Q17b_Clinic_Plus_2/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_3 =(Q17b_Clinic_Plus_3/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_4 =(Q17b_Clinic_Plus_4/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_5 =(Q17b_Clinic_Plus_5/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_6 =(Q17b_Clinic_Plus_6/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_7 =(Q17b_Clinic_Plus_7/Q17_A_Clinic_Plus)*100;
per_Q17b_Clinic_Plus_8 =(Q17b_Clinic_Plus_8/Q17_A_Clinic_Plus)*100;
per_Q17b_Dabur_Vatika_A_D_1 =(Q17b_Dabur_Vatika_A_D_1/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_2 =(Q17b_Dabur_Vatika_A_D_2/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_3 =(Q17b_Dabur_Vatika_A_D_3/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_4 =(Q17b_Dabur_Vatika_A_D_4/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_5 =(Q17b_Dabur_Vatika_A_D_5/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_6 =(Q17b_Dabur_Vatika_A_D_6/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_7 =(Q17b_Dabur_Vatika_A_D_7/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dabur_Vatika_A_D_8 =(Q17b_Dabur_Vatika_A_D_8/Q17_A_Dabur_Vatika_A_D)*100;
per_Q17b_Dove_1 =(Q17b_Dove_1/Q17_A_Dove)*100;
per_Q17b_Dove_2 =(Q17b_Dove_2/Q17_A_Dove)*100;
per_Q17b_Dove_3 =(Q17b_Dove_3/Q17_A_Dove)*100;
per_Q17b_Dove_4 =(Q17b_Dove_4/Q17_A_Dove)*100;
per_Q17b_Dove_5 =(Q17b_Dove_5/Q17_A_Dove)*100;
per_Q17b_Dove_6 =(Q17b_Dove_6/Q17_A_Dove)*100;
per_Q17b_Dove_7 =(Q17b_Dove_7/Q17_A_Dove)*100;
per_Q17b_Dove_8 =(Q17b_Dove_8/Q17_A_Dove)*100;
per_Q17b_Essenza_1 =(Q17b_Essenza_1/Q17_A_Essenza)*100;
per_Q17b_Essenza_2 =(Q17b_Essenza_2/Q17_A_Essenza)*100;
per_Q17b_Essenza_3 =(Q17b_Essenza_3/Q17_A_Essenza)*100;
per_Q17b_Essenza_4 =(Q17b_Essenza_4/Q17_A_Essenza)*100;
per_Q17b_Essenza_5 =(Q17b_Essenza_5/Q17_A_Essenza)*100;
per_Q17b_Essenza_6 =(Q17b_Essenza_6/Q17_A_Essenza)*100;
per_Q17b_Essenza_7 =(Q17b_Essenza_7/Q17_A_Essenza)*100;
per_Q17b_Essenza_8 =(Q17b_Essenza_8/Q17_A_Essenza)*100;
per_Q17b_Fiama_1 =(Q17b_Fiama_1/Q17_A_Fiama)*100;
per_Q17b_Fiama_2 =(Q17b_Fiama_2/Q17_A_Fiama)*100;
per_Q17b_Fiama_3 =(Q17b_Fiama_3/Q17_A_Fiama)*100;
per_Q17b_Fiama_4 =(Q17b_Fiama_4/Q17_A_Fiama)*100;
per_Q17b_Fiama_5 =(Q17b_Fiama_5/Q17_A_Fiama)*100;
per_Q17b_Fiama_6 =(Q17b_Fiama_6/Q17_A_Fiama)*100;
per_Q17b_Fiama_7 =(Q17b_Fiama_7/Q17_A_Fiama)*100;
per_Q17b_Fiama_8 =(Q17b_Fiama_8/Q17_A_Fiama)*100;
per_Q17b_Garnier_1 =(Q17b_Garnier_1/Q17_A_Garnier)*100;
per_Q17b_Garnier_2 =(Q17b_Garnier_2/Q17_A_Garnier)*100;
per_Q17b_Garnier_3 =(Q17b_Garnier_3/Q17_A_Garnier)*100;
per_Q17b_Garnier_4 =(Q17b_Garnier_4/Q17_A_Garnier)*100;
per_Q17b_Garnier_5 =(Q17b_Garnier_5/Q17_A_Garnier)*100;
per_Q17b_Garnier_6 =(Q17b_Garnier_6/Q17_A_Garnier)*100;
per_Q17b_Garnier_7 =(Q17b_Garnier_7/Q17_A_Garnier)*100;
per_Q17b_Garnier_8 =(Q17b_Garnier_8/Q17_A_Garnier)*100;
per_Q17b_Garnier_A_D_1 =(Q17b_Garnier_A_D_1/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_2 =(Q17b_Garnier_A_D_2/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_3 =(Q17b_Garnier_A_D_3/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_4 =(Q17b_Garnier_A_D_4/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_5 =(Q17b_Garnier_A_D_5/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_6 =(Q17b_Garnier_A_D_6/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_7 =(Q17b_Garnier_A_D_7/Q17_A_Garnier_A_D)*100;
per_Q17b_Garnier_A_D_8 =(Q17b_Garnier_A_D_8/Q17_A_Garnier_A_D)*100;
per_Q17b_Head_Shoulder_1 =(Q17b_Head_Shoulder_1/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_2 =(Q17b_Head_Shoulder_2/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_3 =(Q17b_Head_Shoulder_3/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_4 =(Q17b_Head_Shoulder_4/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_5 =(Q17b_Head_Shoulder_5/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_6 =(Q17b_Head_Shoulder_6/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_7 =(Q17b_Head_Shoulder_7/Q17_A_Head_Shoulder)*100;
per_Q17b_Head_Shoulder_8 =(Q17b_Head_Shoulder_8/Q17_A_Head_Shoulder)*100;
per_Q17b_Lux_1 =(Q17b_Lux_1/Q17_A_Lux)*100;
per_Q17b_Lux_2 =(Q17b_Lux_2/Q17_A_Lux)*100;
per_Q17b_Lux_3 =(Q17b_Lux_3/Q17_A_Lux)*100;
per_Q17b_Lux_4 =(Q17b_Lux_4/Q17_A_Lux)*100;
per_Q17b_Lux_5 =(Q17b_Lux_5/Q17_A_Lux)*100;
per_Q17b_Lux_6 =(Q17b_Lux_6/Q17_A_Lux)*100;
per_Q17b_Lux_7 =(Q17b_Lux_7/Q17_A_Lux)*100;
per_Q17b_Lux_8 =(Q17b_Lux_8/Q17_A_Lux)*100;
per_Q17b_Pantene_1 =(Q17b_Pantene_1/Q17_A_Pantene)*100;
per_Q17b_Pantene_2 =(Q17b_Pantene_2/Q17_A_Pantene)*100;
per_Q17b_Pantene_3 =(Q17b_Pantene_3/Q17_A_Pantene)*100;
per_Q17b_Pantene_4 =(Q17b_Pantene_4/Q17_A_Pantene)*100;
per_Q17b_Pantene_5 =(Q17b_Pantene_5/Q17_A_Pantene)*100;
per_Q17b_Pantene_6 =(Q17b_Pantene_6/Q17_A_Pantene)*100;
per_Q17b_Pantene_7 =(Q17b_Pantene_7/Q17_A_Pantene)*100;
per_Q17b_Pantene_8 =(Q17b_Pantene_8/Q17_A_Pantene)*100;
per_Q17b_Pantene_A_D_1 =(Q17b_Pantene_A_D_1/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_2 =(Q17b_Pantene_A_D_2/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_3 =(Q17b_Pantene_A_D_3/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_4 =(Q17b_Pantene_A_D_4/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_5 =(Q17b_Pantene_A_D_5/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_6 =(Q17b_Pantene_A_D_6/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_7 =(Q17b_Pantene_A_D_7/Q17_A_Pantene_A_D)*100;
per_Q17b_Pantene_A_D_8 =(Q17b_Pantene_A_D_8/Q17_A_Pantene_A_D)*100;
per_Q17b_Sunsilk_1 =(Q17b_Sunsilk_1/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_2 =(Q17b_Sunsilk_2/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_3 =(Q17b_Sunsilk_3/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_4 =(Q17b_Sunsilk_4/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_5 =(Q17b_Sunsilk_5/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_6 =(Q17b_Sunsilk_6/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_7 =(Q17b_Sunsilk_7/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_8 =(Q17b_Sunsilk_8/Q17_A_Sunsilk)*100;
per_Q17b_Sunsilk_A_D_1 =(Q17b_Sunsilk_A_D_1/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_2 =(Q17b_Sunsilk_A_D_2/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_3 =(Q17b_Sunsilk_A_D_3/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_4 =(Q17b_Sunsilk_A_D_4/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_5 =(Q17b_Sunsilk_A_D_5/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_6 =(Q17b_Sunsilk_A_D_6/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_7 =(Q17b_Sunsilk_A_D_7/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Sunsilk_A_D_8 =(Q17b_Sunsilk_A_D_8/Q17_A_Sunsilk_A_D)*100;
per_Q17b_Ultra_Doux_1 =(Q17b_Ultra_Doux_1/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_2 =(Q17b_Ultra_Doux_2/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_3 =(Q17b_Ultra_Doux_3/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_4 =(Q17b_Ultra_Doux_4/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_5 =(Q17b_Ultra_Doux_5/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_6 =(Q17b_Ultra_Doux_6/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_7 =(Q17b_Ultra_Doux_7/Q17_A_Ultra_Doux)*100;
per_Q17b_Ultra_Doux_8 =(Q17b_Ultra_Doux_8/Q17_A_Ultra_Doux)*100;
per_Q17b_Vivel_1 =(Q17b_Vivel_1/Q17_A_Vivel)*100;
per_Q17b_Vivel_2 =(Q17b_Vivel_2/Q17_A_Vivel)*100;
per_Q17b_Vivel_3 =(Q17b_Vivel_3/Q17_A_Vivel)*100;
per_Q17b_Vivel_4 =(Q17b_Vivel_4/Q17_A_Vivel)*100;
per_Q17b_Vivel_5 =(Q17b_Vivel_5/Q17_A_Vivel)*100;
per_Q17b_Vivel_6 =(Q17b_Vivel_6/Q17_A_Vivel)*100;
per_Q17b_Vivel_7 =(Q17b_Vivel_7/Q17_A_Vivel)*100;
per_Q17b_Vivel_8 =(Q17b_Vivel_8/Q17_A_Vivel)*100;
per_Q17b1_Fiama_1 =(Q17b1_Fiama_1/Q17_A_Fiama)*100;
per_Q17b1_Fiama_2 =(Q17b1_Fiama_2/Q17_A_Fiama)*100;
per_Q17b1_Fiama_3 =(Q17b1_Fiama_3/Q17_A_Fiama)*100;
per_Q17b1_Fiama_4 =(Q17b1_Fiama_4/Q17_A_Fiama)*100;
per_Q17b1_Fiama_5 =(Q17b1_Fiama_5/Q17_A_Fiama)*100;
per_Q17b1_Fiama_6 =(Q17b1_Fiama_6/Q17_A_Fiama)*100;
per_Q17b1_Fiama_7 =(Q17b1_Fiama_7/Q17_A_Fiama)*100;
per_Q17b1_vivel_1 =(Q17b1_vivel_1/Q17_A_Vivel)*100;
per_Q17b1_vivel_2 =(Q17b1_vivel_2/Q17_A_Vivel)*100;
per_Q17b1_vivel_3 =(Q17b1_vivel_3/Q17_A_Vivel)*100;
per_Q17b1_vivel_4 =(Q17b1_vivel_4/Q17_A_Vivel)*100;
per_Q17b1_vivel_5 =(Q17b1_vivel_5/Q17_A_Vivel)*100;
per_Q17b1_vivel_6 =(Q17b1_vivel_6/Q17_A_Vivel)*100;
per_Q17b1_vivel_7 =(Q17b1_vivel_7/Q17_A_Vivel)*100;
per_Q5C_Spon_Chik = (Q5C_Spon_Chik / flag ) *100 ;
per_Q5C_Spon_Clinic_All_Clear = (Q5C_Spon_Clinic_All_Clear / flag ) *100 ;
per_Q5C_Spon_Clinic_Plus = (Q5C_Spon_Clinic_Plus / flag ) *100 ;
per_Q5C_Spon_Dabur_Vatika_A_D = (Q5C_Spon_Dabur_Vatika_A_D / flag ) *100 ;
per_Q5C_Spon_Dove = (Q5C_Spon_Dove / flag ) *100 ;
per_Q5C_Spon_Essenza = (Q5C_Spon_Essenza / flag ) *100 ;
per_Q5C_Spon_Fiama = (Q5C_Spon_Fiama / flag ) *100 ;
per_Q5C_Spon_Garnier = (Q5C_Spon_Garnier / flag ) *100 ;
per_Q5C_Spon_Garnier_A_D = (Q5C_Spon_Garnier_A_D / flag ) *100 ;
per_Q5C_Spon_Head_Shoulder = (Q5C_Spon_Head_Shoulder / flag ) *100 ;
per_Q5C_Spon_Lux = (Q5C_Spon_Lux / flag ) *100 ;
per_Q5C_Spon_Pantene = (Q5C_Spon_Pantene / flag ) *100 ;
per_Q5C_Spon_Pantene_A_D = (Q5C_Spon_Pantene_A_D / flag ) *100 ;
per_Q5C_Spon_Sunsilk = (Q5C_Spon_Sunsilk / flag ) *100 ;
per_Q5C_Spon_Sunsilk_A_D = (Q5C_Spon_Sunsilk_A_D / flag ) *100 ;
per_Q5C_Spon_Ultra_Doux = (Q5C_Spon_Ultra_Doux / flag ) *100 ;
per_Q5C_Spon_Vivel = (Q5C_Spon_Vivel / flag ) *100 ;
per_Q5C_TOM_Chik = (Q5C_TOM_Chik / flag ) *100 ;
per_Q5C_TOM_Clinic_All_Clear = (Q5C_TOM_Clinic_All_Clear / flag ) *100 ;
per_Q5C_TOM_Clinic_Plus = (Q5C_TOM_Clinic_Plus / flag ) *100 ;
per_Q5C_TOM_Dabur_Vatika_A_D = (Q5C_TOM_Dabur_Vatika_A_D / flag ) *100 ;
per_Q5C_TOM_Dove = (Q5C_TOM_Dove / flag ) *100 ;
per_Q5C_TOM_Essenza = (Q5C_TOM_Essenza / flag ) *100 ;
per_Q5C_TOM_Fiama = (Q5C_TOM_Fiama / flag ) *100 ;
per_Q5C_TOM_Garnier = (Q5C_TOM_Garnier / flag ) *100 ;
per_Q5C_TOM_Garnier_A_D = (Q5C_TOM_Garnier_A_D / flag ) *100 ;
per_Q5C_TOM_Head_Shoulder = (Q5C_TOM_Head_Shoulder / flag ) *100 ;
per_Q5C_TOM_Lux = (Q5C_TOM_Lux / flag ) *100 ;
per_Q5C_TOM_Pantene = (Q5C_TOM_Pantene / flag ) *100 ;
per_Q5C_TOM_Pantene_A_D = (Q5C_TOM_Pantene_A_D / flag ) *100 ;
per_Q5C_TOM_Sunsilk = (Q5C_TOM_Sunsilk / flag ) *100 ;
per_Q5C_TOM_Sunsilk_A_D = (Q5C_TOM_Sunsilk_A_D / flag ) *100 ;
per_Q5C_TOM_Ultra_Doux = (Q5C_TOM_Ultra_Doux / flag ) *100 ;
per_Q5C_TOM_Vivel = (Q5C_TOM_Vivel / flag ) *100 ;

run;
data v1.Shampoos_rollup_per_aw_nt_vars;
set v1.Shampoos_rollup_per_aw_nt;
keep
CEN
WK_Yrwk
WK_Yryr
per_HUL_int_std
per_HUL_premium
per_HUL_quality
per_HUL_relevant
per_HUL_trust
per_ITC_int_std
per_ITC_premium
per_ITC_quality
per_ITC_relevant
per_ITC_trust
per_Q14_Dove_TB
per_Q16A_Dove_1
per_Q16A_Dove_2
per_Q16A_Dove_3
per_Q16A_Dove_4
per_Q16A_Dove_5
per_Q16A_Dove_6
per_Q16A_Dove_7
per_Q16A_Dove_8
per_Q16A_Dove_9
per_Q16A_Dove_10
per_Q16A_Dove_11
per_Q16A_Dove_12
per_Q16A_Dove_13
per_Q16A_Dove_14
per_Q16A_Dove_15
per_Q16A_Dove_16
per_Q16B_Dove_1
per_Q16B_Dove_2
per_Q16B_Dove_3
per_Q16B_Dove_4
per_Q16B_Dove_5
per_Q16B_Dove_6
per_Q16B_Dove_7
per_Q16B_Dove_8
per_Q16B_Dove_9
per_Q16B_Dove_10
per_Q16B_Dove_11
per_Q16B_Dove_12
per_Q17_A_Dove
per_Q17b_Dove_1
per_Q17b_Dove_2
per_Q17b_Dove_3
per_Q17b_Dove_4
per_Q17b_Dove_5
per_Q17b_Dove_6
per_Q17b_Dove_7
per_Q17b_Dove_8
per_Q2_HEARD_Dove
per_Q2_MOST_Dove
per_Q2_USED_Dove
per_Q5C_Spon_Dove
per_Q5C_TOM_Dove
per_Q14_Fiama_TB
per_Q16A_Fiama_1
per_Q16A_Fiama_2
per_Q16A_Fiama_3
per_Q16A_Fiama_4
per_Q16A_Fiama_5
per_Q16A_Fiama_6
per_Q16A_Fiama_7
per_Q16A_Fiama_8
per_Q16A_Fiama_9
per_Q16A_Fiama_10
per_Q16A_Fiama_11
per_Q16A_Fiama_12
per_Q16A_Fiama_13
per_Q16A_Fiama_14
per_Q16A_Fiama_15
per_Q16A_Fiama_16
per_Q16B_Fiama_1
per_Q16B_Fiama_2
per_Q16B_Fiama_3
per_Q16B_Fiama_4
per_Q16B_Fiama_5
per_Q16B_Fiama_6
per_Q16B_Fiama_7
per_Q16B_Fiama_8
per_Q16B_Fiama_9
per_Q16B_Fiama_10
per_Q16B_Fiama_11
per_Q16B_Fiama_12
per_Q17_A_Fiama
per_Q17b1_Fiama_1
per_Q17b1_Fiama_2
per_Q17b1_Fiama_3
per_Q17b1_Fiama_4
per_Q17b1_Fiama_5
per_Q17b1_Fiama_6
per_Q17b1_Fiama_7
per_Q17b_Fiama_1
per_Q17b_Fiama_2
per_Q17b_Fiama_3
per_Q17b_Fiama_4
per_Q17b_Fiama_5
per_Q17b_Fiama_6
per_Q17b_Fiama_7
per_Q17b_Fiama_8
per_Q2_HEARD_Fiama
per_Q2_MOST_Fiama
per_Q2_USED_Fiama
per_Q5C_Spon_Fiama
per_Q5C_TOM_Fiama
per_Q14_Pantene_TB
per_Q16A_Pantene_1
per_Q16A_Pantene_2
per_Q16A_Pantene_3
per_Q16A_Pantene_4
per_Q16A_Pantene_5
per_Q16A_Pantene_6
per_Q16A_Pantene_7
per_Q16A_Pantene_8
per_Q16A_Pantene_9
per_Q16A_Pantene_10
per_Q16A_Pantene_11
per_Q16A_Pantene_12
per_Q16A_Pantene_13
per_Q16A_Pantene_14
per_Q16A_Pantene_15
per_Q16A_Pantene_16
per_Q16B_Pantene_1
per_Q16B_Pantene_2
per_Q16B_Pantene_3
per_Q16B_Pantene_4
per_Q16B_Pantene_5
per_Q16B_Pantene_6
per_Q16B_Pantene_7
per_Q16B_Pantene_8
per_Q16B_Pantene_9
per_Q16B_Pantene_10
per_Q16B_Pantene_11
per_Q16B_Pantene_12
per_Q17b_Pantene_1
per_Q17b_Pantene_2
per_Q17b_Pantene_3
per_Q17b_Pantene_4
per_Q17b_Pantene_5
per_Q17b_Pantene_6
per_Q17b_Pantene_7
per_Q17b_Pantene_8
per_Q17_A_Pantene
per_Q2_HEARD_Pantene
per_Q2_MOST_Pantene
per_Q2_USED_Pantene
per_Q5C_Spon_Pantene
per_Q5C_TOM_Pantene
per_Q14_Garnier_TB
per_Q16A_Garnier_1
per_Q16A_Garnier_2
per_Q16A_Garnier_3
per_Q16A_Garnier_4
per_Q16A_Garnier_5
per_Q16A_Garnier_6
per_Q16A_Garnier_7
per_Q16A_Garnier_8
per_Q16A_Garnier_9
per_Q16A_Garnier_10
per_Q16A_Garnier_11
per_Q16A_Garnier_12
per_Q16A_Garnier_13
per_Q16A_Garnier_14
per_Q16A_Garnier_15
per_Q16A_Garnier_16
per_Q16B_Garnier_1
per_Q16B_Garnier_2
per_Q16B_Garnier_3
per_Q16B_Garnier_4
per_Q16B_Garnier_5
per_Q16B_Garnier_6
per_Q16B_Garnier_7
per_Q16B_Garnier_8
per_Q16B_Garnier_9
per_Q16B_Garnier_10
per_Q16B_Garnier_11
per_Q16B_Garnier_12
per_Q17_A_Garnier
per_Q17b_Garnier_1
per_Q17b_Garnier_2
per_Q17b_Garnier_3
per_Q17b_Garnier_4
per_Q17b_Garnier_5
per_Q17b_Garnier_6
per_Q17b_Garnier_7
per_Q17b_Garnier_8
per_Q2_HEARD_Garnier
per_Q2_MOST_Garnier
per_Q2_USED_Garnier
per_Q5C_Spon_Garnier
per_Q5C_TOM_Garnier
;run;
