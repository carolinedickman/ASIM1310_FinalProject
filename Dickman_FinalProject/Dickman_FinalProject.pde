int r= (int)random(400);

Snake snake1=new Snake(); // starts snake in the middle of the screen
Food food1=new Food(r,r); // starts the food in a random location
 
void setup()
{
  size(500,500);
 frameRate(12); //speed
 
}
 
void draw()
{
  background(#97F2FA);
  food1.display();
  snake1.display();
 
  food1.dissappear();
  snake1.move();
 
 if( dist(food1.xpos, food1.ypos, snake1.xpos.get(0), snake1.ypos.get(0)) < snake1.length2 ){
    food1.newFood();
    snake1.grow();
  }
 }
 
 void keyPressed(){
  if(key == CODED){
    if(keyCode == LEFT){
      snake1.dir = "left";
    }
    if(keyCode == RIGHT){
      snake1.dir = "right";
    }
    if(keyCode == UP){
      snake1.dir = "up";
    }
    if(keyCode == DOWN){
      snake1.dir = "down";
    }
  }
 }