int r= (int)random(400);
int highscore;
 
Snake snake1=new Snake(250,250); // starts snake in the middle of the screen
Food food1=new Food(r,r); // starts the food in a random location
 
void setup()
{
  size(500,500);
 frameRate(30);
 highscore= 0;
 
}
 
void draw()
{
  background(#97F2FA);
  food1.display();
  snake1.display();
 
  food1.dissappear();
  snake1.move();
  snake1.grow();
  snake1. die();
 
  }