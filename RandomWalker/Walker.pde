class Walker{
  float x,y;
  float tx,ty;
  
  float prevX,prevY;
  
  Walker(){
    tx=0;
    ty=1000;
    print(noise(tx));
    println();
    print(noise(ty));
    x=map(noise(0),0,1,0,width);
    
    y=map(noise(0),0,1,0,height);
  }
 
  void render(){
    stroke(0);
    line(prevX,prevY,x,y);
  }
  void step(){
  prevX=x;
  prevY=y;
  x=map(noise(tx),0,1,0,width);
   y=map(noise(ty),0,1,0,height);
   tx+=0.01;
   ty+=0.01;
  
  }
  
}
