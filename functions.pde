void home_screen() {
  iphone();
 // fill(0,0,255);
 // rect(45, 90, 50, 60, 5, 5, 5, 5);
  image(temp_icon, 47, 95, 50, 50);
  fill(0);
  textFont(font,48);
  textSize(16);
  text("temp_app", 35, 166,16);
  //println(mouseX);
  //println(mouseY);
}

void pop_up(){

final String id = showInputDialog("Please enter Patient ID");
println(id);
p_id=true;
}
void app_screen() {
  screen_color=color(255,0,0);
  iphone();
  button1.draw();
  button2.draw();
  textSize(48);
 ellipse(192,275,10,10);
  text("37 C",130,300);
}

void mousePressed() {
  if (mouseX>=47&&mouseY>=95&&mouseX<=95&&mouseY<=160&&screen==0) {
    screen=1;
    println("fired");
  }
  if(button1.over()){
    if(!p_id){
          pop_up();
          }
  
  }
} 
void iphone() {
    fill(0);
    rect(2, 2, 345, 690, 50, 50, 50, 50);//main black cover
    fill(screen_color);
    rect(14, 77, 320, 540, 10, 10, 10, 10);//white screen
    fill(255);
    ellipse(130, 40, 15, 15);//camera
    rect(150, 35, 54, 8, 5, 5, 5, 5);//speaker
    ellipse(172, 655, 50, 50);//button
    fill(0, 0, 255);
    ellipse(174, 20, 10, 10);//proximity
    fill(0);
    ellipse(172, 655, 20, 20);//button
  }
