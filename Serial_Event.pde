void serialEvent(Serial ArduinoPort){
 data=ArduinoPort.readStringUntil('\n');
 data=trim(data);

if(data.charAt(0)=='T'){
  data=data.substring(1);
  temp_avg=float(data);
  temp_flag=true;
  start_pressed=false;
}
if(data.charAt(0)=='A'){
  data=data.substring(1);
  ambient_temp=float(data);
}
}
