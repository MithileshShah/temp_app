import static javax.swing.JOptionPane.*;// java gui library
import processing.serial.*;
import guru.ttslib.*;
Serial ArduinoPort;

TTS tts;
int screen=0;float temp_avg=0.0;
color screen_color=color(255, 255, 255);
PImage temp_icon;
String myfile="D:/data.csv";
PFont font; String id="0";
boolean p_id=false,save=false;//flag to check patient id
boolean start_pressed=false,error=false,temp_flag=false;
String temp_c="", data="";
String[] headings;
PrintWriter output;
PButton button1;//Patient History
PButton button2;//Get Temperature
PButton button3;//Call Doctor
PButton button4;//Start measurement
PButton button5;//save data

int d,m,y,h,min,s;
float ambient_temp;
void setup() {
  size(350, 700);
 ArduinoPort = new Serial(this, "COM6", 9600);
 ArduinoPort.clear();
 ArduinoPort.bufferUntil('\n');
  button2 = new PButton(50, 200, 250, " Get Temperature ");
  button1= new PButton(50, 300, 200, " Patient Data");
  button3=new PButton(50, 400, 200, " Call Doctor");
  button4=new PButton(100,500,100," Start ");
  button5=new PButton(100,400,100," Save");
  tts=new TTS();
  temp_icon=loadImage("temp_icon.png");
  font=loadFont("CourierNewPSMT-48.vlw");
  output=createWriter(myfile);
  output.print("Patient id ,");
  output.print("Temperature ,");
  output.print("Date ,");
  output.println("Time");
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
    
    case 3:
    patient_history();
    break;
  }
}

