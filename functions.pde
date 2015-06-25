void home_screen() {
  iphone();
 // fill(0,0,255);
 // rect(45, 90, 50, 60, 5, 5, 5, 5);
  image(temp_icon, 47, 95, 50, 50);
  fill(0);
  textFont(font,48);
  textSize(16);
  text("Tapansh", 40, 166,16);
  //println(mouseX);
  //println(mouseY);
}

void pop_up(){

id = showInputDialog("Please enter Patient ID");

p_id=true;
}
void app_screen() {
  screen_color=color(255,0,0);
  iphone();
  button1.draw();
  button2.draw();
  button3.draw();
  textSize(48);
 ellipse(192,275,10,10);
  text("37 C",130,300);
   println(mouseX);
  println(mouseY);
}

void data_screen(){
  screen_color=color(255,255,255);
 iphone();
 textSize(18);
 text("Patient id= "+id,50,100);
 if(!temp_flag){
 button4.draw();
 text("Hold the sensor",50,300);
 text("facing the target",55,350);
 if(!start_pressed)
 text("Press Start",55,400);
 }
 else{
 textSize(40);
 text(temp_avg,40,300);
 text("*C",220,300);
 }
 if(start_pressed){
 text("Measuring..",100,200);
  }
 
 
 
}

void mousePressed() {
  if (mouseX>=47&&mouseY>=95&&mouseX<=95&&mouseY<=160&&screen==0) {
    screen=1;
    println("fired");
  }
  if(button1.over()&& screen==1){
  screen=3;
  }
  if(button2.over()&& screen==1){
    if(!p_id){
          pop_up();
          }
    screen=2;
  }
  if(button4.over()&& screen==2){
      ArduinoPort.write(49);
      start_pressed=true;
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
