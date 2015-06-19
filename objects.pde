class PButton {
  int x, y;
  String label;

  PButton(int x, int y, String label) {
    this.x=x;
    this.y=y;
    this.label=label;
  }
  void draw(){
    fill(200);
    if(over()){
      fill(255);
    }
  rect(x,y,textWidth(label),35);
  fill(0);
  textSize(25);
  text(label,x,y+25);
  
  }
  boolean over(){
    if(mouseX >= x-19 && mouseY >= y-12 && mouseX <= x + textWidth(label) && mouseY <= y + 15){
  return true;
    }
    return false;
  }
}

