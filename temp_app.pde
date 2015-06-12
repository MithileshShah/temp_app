PImage iphone_front;



void setup() {
  size(340,700);
  background(0);
  iphone_front=loadImage("iphone_front.jpg");
}

void draw() {
image(iphone_front,0,0);  
fill(255);
ellipse(170,669,53,53);
fill(0);
ellipse(170,669,25,25);
println(mouseX);
println(mouseY);
}

