class Ball{
  PVector pos, vel, acc; //Our most fundamental vectors for any object
  int wid;
  
  public Ball(float x, float y, float speed, float dir, int w){
    pos = new PVector(x,y); //Instantiate our position vector at the balls position
    vel = new PVector(speed * cos(dir), speed * sin(dir)); //Instantiate our velocity vector
    acc = new PVector(0,0); //Instantiate our acceleration vector
    wid = w;
  }
  
  void show(){
    fill(255);
    ellipse(pos.x,pos.y,wid,wid);
  }
  
  void move(){
    vel.add(acc); //velocity adds acceleration
    pos.add(vel); //position adds velocity
    acc.set(0,0); //revert acceleration back to 0
  }
  
  void bounce(){
    if (pos.x - wid/2 <= 0 || pos.x + wid/2 >= width) vel.x = -vel.x;
    if (pos.y - wid/2 <= 0 || pos.y + wid/2 >= height) vel.y = -vel.y;
  }
  
  void gravity(){
    acc.add(0,0.5);
  }
  
}
