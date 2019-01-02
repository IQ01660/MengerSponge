class Box {
  PVector pos;
  float r;
  
  public Box(float x, float y, float z, float _r) {
    this.pos = new PVector(x, y, z);
    this.r = _r;
  }
  
  public ArrayList<Box> generate() {
    ArrayList<Box> boxes = new ArrayList<Box>();
    for(int x = -1; x < 2; x++){
      for(int y = -1; y < 2; y++){
        for(int z = -1; z < 2; z++){
          float sum = abs(x) + abs(y) + abs(z);
          if(sum > 1) {
            float newR = this.r / 3;
            Box nextBox = new Box(this.pos.x + x*newR, this.pos.y + y*newR, this.pos.z + z*newR, newR);
            boxes.add(nextBox);
          }
        }
      }
    }
    return boxes;
  }
  
  public void show() {
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    fill(#E3B912, 120);
    box(r); 
    popMatrix();
  }
}
