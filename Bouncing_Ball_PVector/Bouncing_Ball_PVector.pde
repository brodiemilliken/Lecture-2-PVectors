Ball[] balls;

void setup(){
  fullScreen();
  balls = new Ball[100];
  
  for (int i = 0; i < balls.length; i++){
    float x = random(0,width);
    float y = random(0,height);
    float speed = random(5,20);
    float dir = random(0,TWO_PI);
    int w = (int)random(10,50);
    balls[i] = new Ball(x,y,speed,dir,w);
  }
  
}

void draw(){
  background(0); 
  for (int i = 0; i < balls.length; i++){
    balls[i].gravity();
    balls[i].bounce();
    balls[i].move();
    balls[i].show();
  }
  
}
