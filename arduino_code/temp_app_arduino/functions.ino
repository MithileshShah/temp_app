void check_target(){
  int count=0,temp;
  temp_c=mlx.readObjectTempC();
  float u_limit=temp_c+0.20;
  float l_limit=temp_c-0.20;
  delay(1000);
  while(count <=50){
    temp=mlx.readObjectTempC();
    if(temp>u_limit && temp<l_limit){
        count++;
        delay(500);
    }
    else{
      break;
      }
    }
    if(count==50){
      serial.print("OK.")
      }
    
    
    }

  
  
  
  }

void send_temp(){
    float temp_data[50];
    temp_c=mlx.readObjectTempC();
    for(int i=0;i<=49;i++){
    temp_data[i]=temp_c;
    }
    temp_avg=mean(temp_data,50);
    Serial.print(temp_avg+".");
 }
