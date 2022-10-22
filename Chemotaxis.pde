Runner[] you = new Runner[100];
void setup(){
  size(400,400);
  for (int i = 0; i < you.length; i++){
    you[i] = new Runner();
  }
}
void draw(){
  background(0,0,0);
  for (int i = 0; i < you.length; i++){
    you[i].show();
    you[i].running();
   }
}
class Runner
{
  int myX;
  int myY; 
  int myColor;
  Runner()
  {
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myX = 200;
    myY = 200;
  }
  void running()
  {
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY + (int)(Math.random()*5)-2;  
  }
  void show()
  {
  fill(myColor);
  ellipse(myX, myY, 20,20);
  }
}
