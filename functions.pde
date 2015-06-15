void home_screen() {
  iphone();
  rect(45, 90, 50, 60, 5, 5, 5, 5);
  image(temp_icon, 47, 95, 50, 50);
  text("temp_app", 42, 165);
  println(mouseX);
  println(mouseY);
}

void app_screen() {
  screen_color=color(255,0,0);
  iphone();
  textFont(font,48);
 ellipse(192,275,10,10);
  text("37 C",130,300);
}

void mousePressed() {
  if (mouseX>=47&&mouseY>=95&&mouseX<=95&&mouseY<=160&&screen==0) {
    screen=1;
    println("fired");
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
