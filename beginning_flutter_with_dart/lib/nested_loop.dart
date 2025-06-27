 void labelsLoop(){
    outerloop: for(var x =1; x<=3; x++){
      print("one cycle of outerloop with $x starts and the whole loop runs");
      innerloop: for(var y= 1; y<=3; y++){
        if (x==1 && y==1){
          print("since outerloop $x and innerloop $y are both 1, it gives no output");
          break innerloop;

        }
        print(y);

        
      }
      print("one cycle of outerloop ends with $x");


    }
 }