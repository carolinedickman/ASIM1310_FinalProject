
class Snake
{
 
  int length, width, Xpos, Ypos;
 
  Snake(int tempXpos, int tempYpos) //constructers
  {
    length= 15;
    width= 15;
 
    Xpos = tempXpos;
    Ypos = tempYpos;
  }
 
  void display() //smethod to display snake heads
  {
    fill(#FC7FE8);
    rect(Xpos, Ypos, length, width);
  } 
 
 
  void move() //method to move snake
  {
    if ( keyPressed)
    {
      if (key == CODED) { // if the key pressed are arrow keys do this
        if (keyCode == UP)  // press up key to make snake move up
        {
          Ypos-=10;
        }
        if (keyCode == DOWN)  //press down key to make snake move down
        {
          Ypos+=10;
        }
        if (keyCode== LEFT)  // press left key to make the snake move left
        {
 
          Xpos-=10;
        }
        if (keyCode== RIGHT) // if right key is pressed move snake right
        { 
          Xpos+=10;
        }
      }
    }
  }
 
 
  void grow () //grows the snake each time it eats the food
  {
    if (get(Xpos, Ypos) == color(255, 0, 0) ) //when the snake eats the food
    {
      length= length+10;
    }
  }
 
  void die () // if snake hits borders he dies
  {
    if ( Xpos> 300 || Xpos<1 || Ypos>300 || Ypos<1) // paremters of hitting borders
    {
    
      fill(#0E43C6); //color of text
      textSize(30); //size of text
      text("YOU LOST!", 100, 150); // displays game over on the screen
      display();
    }
  }
  }

//class Snake
//{
 
//  int length, width, Xpos, Ypos;
 
//  Snake(int tempXpos, int tempYpos) //constructers
//  {
//    length= 15;
//    width= 15;
 
//    Xpos = tempXpos;
//    Ypos = tempYpos;
//  }
 
//  void display() //smethod to display snake heads
//  {
//    fill(#FC7FE8);
//    rect(Xpos, Ypos, length, width);
//  } 
 
 
//  void move() //method to move snake
//  {
//    if ( keyPressed)
//    {
//      if (key == CODED) { // if the key pressed are arrow keys do this
//        if (keyCode == UP)  // press up key to make snake move up
//        {
//          Ypos-=10;
//        }
//        if (keyCode == DOWN)  //press down key to make snake move down
//        {
//          Ypos+=10;
//        }
//        if (keyCode== LEFT)  // press left key to make the snake move left
//        {
 
//          Xpos-=10;
//        }
//        if (keyCode== RIGHT) // if right key is pressed move snake right
//        { 
//          Xpos+=10;
//        }
//      }
//    }
//  }
 
 
//  void grow () //grows the snake each time it eats the food
//  {
//    if (get(Xpos, Ypos) == color(255, 0, 0) ) //when the snake eats the food
//    {
//      length= length+10;
//    }
//  }
 
//  void die () // if snake hits borders he dies
//  {
//    if ( Xpos> 500 || Xpos<1 || Ypos>500 || Ypos<1) // paremters of hitting borders
//    {
    
//      fill(#0E43C6); //color of text
//      textSize(50); //size of text
//      text("YOU LOST!", 120, 250); // displays game over on the screen
//      display();
//    }
//  }
//}