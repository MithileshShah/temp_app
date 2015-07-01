void home_screen() {
  screen_color=color(255, 255, 255);
  iphone();
  // fill(0,0,255);
  // rect(45, 90, 50, 60, 5, 5, 5, 5);
  image(temp_icon, 47, 95, 50, 50);
  fill(0);
  textFont(font, 48);
  textSize(16);
  text("Tapansh", 40, 166, 16);
  //println(mouseX);
  //println(mouseY);
}

void pop_up() {

  id = showInputDialog("Please enter Patient ID");
  p_id=true;
}
void app_screen() {
  screen_color=color(255, 0, 0);
  iphone();
  button1.draw();
  button2.draw();
  button3.draw();
  textSize(48);
  text(ambient_temp + "*C",50,550);
  println(mouseX);
  println(mouseY);
}

void data_screen() {
  screen_color=color(255, 255, 255);
  iphone();
  textSize(18);
  text("Patient id= "+id, 50, 100);
  if (!temp_flag) {
    button4.draw();
    text("Hold the sensor", 50, 300);
    text("facing the target", 55, 350);
    if (!start_pressed)
      text("Press Start", 55, 400);
  } else {
    textSize(40);
    text(temp_avg, 40, 300);
    text("*F", 220, 300);
    button5.draw();
    //if(!save){
    //tts.speak(temp_avg + " Degree Farenheit");}
    if(temp_avg >= 100.000){
    text("Temperature too high",40,450);
    button3.draw();
    }
  }
  if (start_pressed) {
    text("Measuring..", 100, 200);
  }
}

void patient_history() {
  iphone();
  plot_graph();
}

void mousePressed() {
  if (mouseX>=47&&mouseY>=95&&mouseX<=95&&mouseY<=160&&screen==0) {
    screen=1;
    println("fired");
  }
  if (mouseX>=147&&mouseY>=630&&mouseX<=197&&mouseY<=680) {
    screen=0;
    println("Home Screen");
    temp_flag=false;
    start_pressed=false;
  }
  if (button1.over()&& screen==1) {
    screen=3;
  }
  if (button2.over()&& screen==1) {
    if (!p_id) {
      pop_up();
    }
    screen=2;
  }
  if (button4.over()&& screen==2) {
    ArduinoPort.write(49);
    start_pressed=true;
  }
  if (button5.over() && screen==2) {
    save=true;
    d=day();
    m=month();
    y=year();
    min=minute();
    h=hour();
    s=second();
    println("Saved");
    output.print(id);
    output.print(",");
    output.print(temp_avg);
    output.print(",");
    output.print(d+"/"+m+"/"+y+",");
    output.print(h+":"+min+":"+s);
    output.println(" ");
    output.flush();
    output.close();
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
void plot_graph() {
  fill(0);
  strokeWeight(2);
  line(50, 100, 50, 400);
  line(30, 350, 300, 350);
  textSize(20);
  text("Days", 155, 390);
  text("*C", 15, 240);
  text("32", 15, 335);
  text("46", 15, 125);
  text("1", 55, 380);
  text("7", 295, 380);
  text("Day:1:24/7/2015",50,480);
  text("Temperature : 43.45*C",50,550);
  for (int i=0; i<=14; i++) {
    line(40, 120+15*i, 55, 120+15*i);
  }
  for (int j=0; j<=6; j++) {
    line(60+40*j, 360, 60+40*j, 345);
  }
  ellipse(65, 160, 10, 10);
  ellipse(100, 220, 10, 10);
  ellipse(140, 230, 10, 10);
  ellipse(190, 260, 10, 10);
  ellipse(220, 220, 10, 10);
  ellipse(260, 280, 10, 10);
  ellipse(300, 250, 10, 10);
  line(65,160,100,220);
  line(100,220,140,230);
  line(140,230,190,260);
  line(190,260,220,220);
  line(220,220,260,280);
  line(260,280,300,250);
}

