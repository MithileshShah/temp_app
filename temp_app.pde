import static javax.swing.JOptionPane.*;// java gui library


int screen=0;color screen_color=color(255,255,255);
PImage temp_icon;
PFont font;
boolean p_id=false;
PButton button1;//Patient History
PButton button2;//Get Temperature
PButton button3;//Call Doctor
//Pbutton button4;
void setup() {
  size(350,700);
  
  button2 = new PButton(20, 100,250, " Get Temperature ");
  button1= new PButton(20,200,200," Patient Data");
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
