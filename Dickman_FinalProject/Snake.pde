class Snake{
  
 
  int length;
  float length2;
    int links = 1;
  int pass = 1;
  String dir = "left";
  ArrayList <Float> xpos, ypos, clr;
  int size = 8;

 
  Snake() 
  {
    length= 1;
    length2= 17;
 
    xpos = new ArrayList();
    ypos = new ArrayList();
    
    xpos.add(random(width));
    ypos.add(random(height));
  }
 
  void display() 
  {
    while (pass == size){
      pass = pass + 1;
    }
    for(int i = 0; i < length; i++){
      if (i ==0){
        fill(#F554E0);
        rect(xpos.get(i), ypos.get(i), length2, length2);
      } else if (i > 0){
      fill(#F554E0);
      rect(xpos.get(i), ypos.get(i), length2, length2);
      }  
  }  
  } 
 
 
  void move(){
     for(int i = length - 1; i > 0; i = i -1 ){
      xpos.set(i, xpos.get(i - 1));
      ypos.set(i, ypos.get(i - 1)); 
     } 
     if(dir == "left"){
       xpos.set(0, xpos.get(0) - length2);
     }
     if(dir == "right"){
       xpos.set(0, xpos.get(0) + length2);
     }
     
     if(dir == "up"){
       ypos.set(0, ypos.get(0) - length2);
    
     }
     
     if(dir == "down"){
       ypos.set(0, ypos.get(0) + length2);
     }
     xpos.set(0, (xpos.get(0) + width) % width);
     ypos.set(0, (ypos.get(0) + height) % height);
     
      if( check() == true){
        length = 1;
        float xtemp = xpos.get(0);
        float ytemp = ypos.get(0);
        xpos.clear();
        ypos.clear();
        xpos.add(xtemp);
        ypos.add(ytemp);
        
        println("Game Over");
      }
    }
 
 
  void grow ()
  {
    xpos.add( xpos.get(length - 1) + length2);
    ypos.add( ypos.get(length - 1) + length2);
    length++;
  }
  
  boolean check(){
    for(int i = 1; i < length; i++){
      if(dist(xpos.get(0), ypos.get(0), xpos.get(i), ypos.get(i)) < length2){
        return true;
      } 
    } 
    return false;
  } 
}