float a = 0;
ArrayList<Box> sponge = new ArrayList<Box>();
Box b = new Box(0, 0, 0, 200);
void setup(){
  size(400, 400, P3D);
  sponge.add(b);
}
void mousePressed() {
  ArrayList<Box> next = new ArrayList<Box>();
  for(Box curB : sponge){
    next.addAll(curB.generate());
  }
  sponge = next;
}
void draw() {
  background(51);
  stroke(255);
  noFill();
  
  translate(width/2, height/2);
  rotateX(a);
  rotateY(a);
  rotateZ(a);
  for(Box curB : sponge){
    curB.show();
  }
  
  a += 0.01;
}
