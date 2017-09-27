void setup()
{
  size(1000, 1000);
  noLoop();
  textSize(20);
}
void draw()
{
  background((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  int sumDots = 0;
  for (int y = 0; y <= 1000; y = y + 70)
  {
    for (int x = 0; x <= 1000; x = x + 70)
    {
      Die bob = new Die (x,y);
      bob.show();
      sumDots = sumDots + bob.num;
    }
  }
  text("Total:" + sumDots, 500,500);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int num, myX, myY;//variable declarations here
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll(); //variable initializations here
  }
  void roll()
  {
    num = (int)(Math.random()*6)+1;
  }
  void show()
  {
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    fill(255);
    rect(myX, myY, 50, 50);
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    if (num == 1)
    {
      ellipse(myX+25, myY+25, 5, 5);
    }
    else if (num == 2)
    {
      ellipse(myX+8,myY+8,5,5);
      ellipse(myX+42,myY+42,5,5);
    }
    else if (num==3)
    {
      ellipse(myX+8,myY+8,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+42,myY+42,5,5);
    }
    else if (num==4)
    {
      ellipse(myX+8,myY+8,5,5);
      ellipse(myX+42,myY+8,5,5);
      ellipse(myX+42,myY+42,5,5);
      ellipse(myX+8,myY+42,5,5);
    }
    else if (num==5)
    {
      ellipse(myX+8,myY+8,5,5);
      ellipse(myX+42,myY+8,5,5);
      ellipse(myX+42,myY+42,5,5);
      ellipse(myX+8,myY+42,5,5);
      ellipse(myX+25,myY+25,5,5);
    }
    else if (num==6)
    {
      ellipse(myX+8,myY+8,5,5);
      ellipse(myX+42,myY+8,5,5);
      ellipse(myX+42,myY+42,5,5);
      ellipse(myX+8,myY+42,5,5);
      ellipse(myX+8,myY+25,5,5);
      ellipse(myX+42,myY+25,5,5);
    }
  }
}
