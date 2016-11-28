

float longlarg = 15; //widht , height
float xy[] = {0, 15, 30, 45, 60, 75, 90, 105, 120, 135, 150, 165, 180, 
 195, 210, 225, 240, 255, 270, 285, 300};
// Here is the coordonates for drawing rectangles
 int r= (int)random(300);
int highscore;
 
Snake snake1=new Snake(150,150); // starts snake in the middle of the screen
Food food1=new Food(r,r); // starts the food in a random location
 
int[][] gridData = new int [21][21]; // 
 
void setup() {
  size(300, 300);
   frameRate(30);
 highscore= 0;
 
  for (int x=0; x<20; x++) {
    for (int y=0; y<20; y++) {
      gridData[x][y]=0;
    }
  }
  gridData[15][2]=1;
}
 
void draw() {
 
  background(#97F2FA);
  fill(#97F2FA);
  stroke(20);
  strokeWeight(1);
 
 
  for (int x=0; x<20; x++) {
    for (int y=0; y<20; y++) {
      stroke(255);
 
      fill(#97F2FA);
 
      if (gridData[x][y]==1)
        fill(#FC75DF);
      rect(x*15, y*15, longlarg, longlarg);
    }
  }
  food1.display();
  snake1.display();
 
  food1.dissappear();
  snake1.move();
  snake1.grow();
  snake1. die();
 
 
  //
}////int r= (int)random(400);
//int highscore;
 
//Snake snake1=new Snake(250,250); // starts snake in the middle of the screen
//Food food1=new Food(r,r); // starts the food in a random location
 
//void setup()
//{
//  size(500,500);
// frameRate(30);
// highscore= 0;
 
//}
 
//void draw()
//{
//  background(#97F2FA);
//  food1.display();
//  snake1.display();
 
//  food1.dissappear();
//  snake1.move();
//  snake1.grow();
//  snake1. die();
 
// //void drawText () {// SCORE
// // fill(255);
// // rect(0,0,50,50);
// // textSize(30);
// // fill(0);  //color of text (treat text like shape)
// // text(score,20,40); //key pressed with be 20 pixels over and 40 down
//  }