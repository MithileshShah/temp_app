import static javax.swing.JOptionPane.*;// java gui library
import processing.serial.*;
Serial ArduinoPort;

int screen=0;float temp_avg=0.0;
color screen_color=color(255, 255, 255);
PImage temp_icon;
PFont font; String id="0";
boolean p_id=false;//flag to check patient id
boolean start_pressed=false,error=false,temp_flag=false;
String temp_c="", data="";
PButton button1;//Patient History
PButton button2;//Get Temperature
PButton button3;//Call Doctor
PButton button4;//Start measurement
//Pbutton button4;

void setup() {
  size(350, 700);
  ArduinoPort = new Serial(this, "COM4", 9600);
  ArduinoPort.clear();
  ArduinoPort.bufferUntil('\n');

  button2 = new PButton(20, 100, 250, " Get Temperature ");
  button1= new PButton(20, 200, 200, " Patient Data");
  button3=new PButton(20, 400, 200, " Call Doctor");
  button4=new PButton(100,500,100," Start ");
  temp_icon=loadImage("temp_icon.png");
  font=loadFont("CourierNewPSMT-48.vlw");
}

void draw() {
  switch(screen) {

  case 0: 
    home_screen();
    break;

  case 1:
    app_screen();
    break;

  case 2:
    data_screen();
    break;
  }
}

