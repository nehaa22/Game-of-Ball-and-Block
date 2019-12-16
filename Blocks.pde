public class Block{
  
  private  float xCoordinate;;
  private  float yCoordinate;
  private  float widthOfBlock;
  private  float heightOfBlock;
  private  float cornerRadiusOfBlock = 7;


  Block(float xCoordinate, float yCoordinate, float widthOfBlock, float heightOfBlock) {
    this.xCoordinate = xCoordinate;
    this.yCoordinate = yCoordinate;
    this.widthOfBlock = widthOfBlock;
    this.heightOfBlock = heightOfBlock;
  }
  
// setters-getters
  public float getXCoordinate() {
    return this.xCoordinate;
  }

  public float getYCoordinate() {
    return this.yCoordinate;
  }
  
  public float getHeightOfBlock() {
    return this.heightOfBlock;
  }

//displayBlock  
  public void displayBlocks() {
    fill(255);
    rectMode(CENTER);
    rect(xCoordinate, yCoordinate, widthOfBlock, heightOfBlock, cornerRadiusOfBlock);
  }
  
// ckeck collision with Block
 public boolean checkCollisionWithBlocks(Block block){
    if (((ball.getX() >= (block.getXCoordinate())-widthOfBlock/2) && (ball.getX() < (block.getXCoordinate())+widthOfBlock/2))) {
               if ( ball.getY() == block.getYCoordinate() - block.heightOfBlock) {
                 return true;
               }
       }
            return false;
   }
}
  
