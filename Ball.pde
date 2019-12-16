public class Ball {

  private float x;
  private float y;
  private float dx ;
  private float dy ;
  private final float size;
  private int count = 0;

  
  Ball(float x, float y, float dx, float dy, float size) {
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.size = size;
  }
  
  public void collide(){
    for(int i = 0; i < blocks.size(); i++){
        Block block = blocks.get(i);
       if(block.checkCollisionWithBlocks(block)){
       blocks.remove(block);
       count++;
    }
   }
 }
  
//WIN
  public void checkWin(){
    if(count == 10){
      background(#A0A0A0);
       fill(0,255, 0);
       textSize(60);
        text("Congrats.. You Won!", 170, 300);
        noLoop();
      }
  }
  
//LOOSE 
  public void checkCollisionWithBaseLine() {
    if (getY() > height) {
      fill(255, 0, 0);
      textSize(60);
      text("Game Over!", 350, 300);
      noLoop();
    }
  }
  
//SHOW- BLOCK COUNT
  public void showFiredBlocks(){
      fill(0,255,0);
      textSize(25);
      text("Block Fired :" +count + "/10", 700, 50);
  }

//Display-ball
  public void displayBall() {
    ellipse(x, y, size, size);
  }

 public void update() {
    move();
    checkCollisionsWithWalls();
  }

  public void move() {
    x = x + dx ;
    y = y + dy ;
  }

//return after Collision
 public void checkCollisionsWithWalls() {

    if (isCollidingWithSideWalls()) {
      setChangeValueY(getChangeValueY() * -1);
    }

    if (isCollidingVertically()) {
      setChangeValueX(getChangeValueX() * -1);
    }
  }

//Ckeck-Collision
  public boolean isCollidingVertically() {
    if (getX() + getSize()/2 > width  || getX() - getSize()/2 < 0) {
      return true;
    }
    return false;
  }

  public boolean isCollidingWithSideWalls() {
    if (getY() - getSize()/2 < 0) {
      return true;
    }
    return false;
  }

//setters-gettetrs

  public void setX( float  x) {
    this.x = x ;
  }

  public void setY( float  y) {
    this.y = y ;
  }


  public float getX() {
    return this.x;
  }

  public float getY() {
    return this.y;
  }

  public float getChangeValueX() {
    return this.dx;
  }

  public float getChangeValueY() {
    return this.dy;
  }

  public void setChangeValueX(float dx) {
    this.dx = dx;
  }

  public void setChangeValueY(float dy) {
    this.dy = dy;
  }

  public float getSize() {
    return this.size;
  }
}
