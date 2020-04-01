data null;
  length id2 $12;
  id = 'LOLOBRIDGIDA195703F';
  id2 = reverse((substr(reverse(id),1,7)));
  put _all_;
run;
