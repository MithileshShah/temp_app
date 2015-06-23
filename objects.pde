class PButton {
  int x, y,bwidth;
  String label;

  PButton(int x, int y,int bwidth, String label) {
    this.x=x;
    this.bwidth=bwidth;
    this.y=y;
    this.label=label;
  }
  void draw(){
    fill(200);
    if(over()){
      fill(255);
    }
  rect(x,y,bwidth,35);
  fill(0);
  textSize(25);
  text(label,x,y+25);
  
  }
  boolean over(){
    if(mouseX >= x && mouseY >= y && mouseX <= x + bwidth && mouseY <= y + 20){
  return true;
    }
    return false;
  }
}

