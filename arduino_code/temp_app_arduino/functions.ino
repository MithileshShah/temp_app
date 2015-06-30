void send_temp(){
  for(int i =0;i<=99;i++){
      float temp_c=mlx.readObjectTempF();
      
      ave.push(temp_c);
      delay(100);
   }
   float avg =ave.mean();
   SendToProcessing('T',avg);
   
  }
void SendToProcessing(char a,float data){
  Serial.print(a);
  Serial.println(data);
  
  }
