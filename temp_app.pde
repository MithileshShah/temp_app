int screen=0;color screen_color=color(255,255,255);
PImage temp_icon;
PFont font;

void setup() {
  size(350,700);
  temp_icon=loadImage("temp_icon.png");
  font=loadFont("CourierNewPSMT-48.vlw");
}

void draw() {
  switch(screen){
    
    case 0: home_screen();
            break;
  
   case 1:app_screen();
           break;
}
}
