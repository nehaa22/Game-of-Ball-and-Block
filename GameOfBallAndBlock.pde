
Ball ball = new Ball(40,30, 5, 5, 20);
private Base base = null;
private final int capacity = 10;
private ArrayList<Block> blocks; 
    
void setup() {
  
  size(1000, 600);
  base = new Base(mouseX, height-100, 125, 15);
  blocks = new ArrayList<Block>(capacity);
  for(int i = 0; i < capacity; i++){
    blocks.add(new Block(i * 100+40  , 100, 68, 10));
  }
}

void draw() {
  background(#A0A0A0);
  fill(255);
  
  ball.displayBall();
  ball.update();
  ball.checkCollisionWithBaseLine();
  ball.collide();
  ball.checkWin();
  ball.showFiredBlocks();
  
  base.moveHorizontally(mouseX);
  base.displayBase();
  base.checkCollisionWithBase();
  
  for(Block block : blocks){
   block.displayBlocks();
  }
} 
