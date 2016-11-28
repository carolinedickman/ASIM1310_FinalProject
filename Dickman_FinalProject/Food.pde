

class Food
{
  int xPos, yPos; 
  int diam; // constructers
 
 
  Food( int tempXpos, int tempYpos) //constructers
  {
    xPos= tempXpos; 
    yPos= tempYpos;
    diam= 20;
 
  }
 
  void dissappear()
  {
    if (get(xPos, yPos) == color(0, 0, 255) ) //when food gets eaten
    {
      delay(500);
      xPos = (int) random(300); // randomly placing food
      yPos = (int) random(300);
    }
  }   
  void display() //method to make the food appear on screen
  {
    noStroke(); 
    fill(#F8FC75); //color of food
    ellipse(xPos, yPos, diam, diam); // size and location of food
  }
}//class Food
//{
//  int xPos, yPos; 
//  int diam; // constructers
 
 
//  Food( int tempXpos, int tempYpos) //constructers
//  {
//    xPos= tempXpos; 
//    yPos= tempYpos;
//    diam= 20;
 
//  }
 
//  void dissappear()
//  {
//    if (get(xPos, yPos) == color(0, 0, 255) ) //when food gets eaten
//    {
//      delay(500);
//      xPos = (int) random(950); // randomly placing food
//      yPos = (int) random(750);
//    }
//  }   
//  void display() //method to make the food appear on screen
//  {
//    noStroke(); 
//    fill(#F8FC75); //color of food
//    ellipse(xPos, yPos, diam, diam); // size and location of food
//  }
//}