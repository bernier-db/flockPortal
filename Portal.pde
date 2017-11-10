class Portal{
  int x, y, w, h;  
  boolean visible = false,
          isEntry;
  Portal(boolean _isEntry){
    w=30;
    h=30;
    isEntry = _isEntry;
    init();
  }
  
  void init(){
    y = (int)random(0, height-this.h);
    x = (int)random(0, width-this.w);
    
  }
  
  void toggleVisible(){
    visible = !visible;
    
    if(visible)
      init();
  }
  
  
  void display(){
    if(visible){
      if (isEntry)stroke(0,0,255);
      else stroke(255,100,0);
     // strokeWeight(5);
      rect(x,y,w,h);
    }  
  }
  
  
}