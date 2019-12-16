class Base {

  private float xPosition;
  private final float yPosition;
  private final float widthBase;
  private final float heightBase;
  private final float cornerRadius = 7;

  Base(float xPosition, float yPosition, float widthBase, float heightBase) {
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    this.widthBase = widthBase;
    this.heightBase = heightBase;
  }
  
   public void moveHorizontally(int x) {
    this.xPosition = x;
  }
  
// setters-getters
 public float getXPosition() {
    return this.xPosition;
  }

  public float getYPosition() {
    return this.yPosition;
  }

//displayBase 
  public void displayBase() {
    fill(255);
    rectMode(CENTER);
    rect(xPosition, yPosition, widthBase, heightBase, cornerRadius);
  }
  
//collision with Base
  public void checkCollisionWithBase() { 
    if (((ball.getX() >= (base.getXPosition())-widthBase/2) && (ball.getX() < (base.getXPosition())+widthBase/2))) {
      if ( ball.getY() == base.getYPosition() - base.heightBase) {
        ball.setChangeValueY((ball.getChangeValueY() * -1));
      }
    }
  }
  
}
