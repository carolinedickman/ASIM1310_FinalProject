class Food
{
  float xpos, ypos; 
  int diam; 
 
 
  Food( int tempXpos, int tempYpos) 
  {
    xpos= tempXpos; 
    ypos= tempYpos;
    diam= 20;
 
  }
 
  void dissappear()
  {
    if (get(round(xpos), round(ypos)) == color(0, 0, 255) ) 
    {
      delay(500);
      xpos = (int) random(950); 
      ypos = (int) random(750);
    }
  }   
  void display() 
  {
    noStroke(); 
    fill(#F7FA72); //food color
    rect(xpos, ypos, diam, diam); 
  }
void newFood(){
  xpos = random(100, width - 100);
  ypos = random(100, height - 100);
}
}