void send_temp(){
  for(int i =0;i<=49;i++){
      float temp_c=mlx.readObjectTempC();
      ave.push(temp_c);
      delay(200);
   }
   float avg =ave.mean();
   SendToProcessing('T',avg);
  
  }
void SendToProcessing(char a,float data){
  Serial.print(a);
  Serial.println(data);
  
  }
