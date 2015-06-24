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
      SendToProcessing('A',0);
      }
    else{
      SendToProcessing('E',0);
      }
    
    }

  
  
  
  

void send_temp(){
    float temp_data[50];
    temp_c=mlx.readObjectTempC();
    for(int i=0;i<=49;i++){
    ave.push(temp_c);
    }
    temp_avg=ave.mean();
    SendToProcessing('T',temp_avg);
 }
void SendToProcessing(char a,int data){
  Serial.print(a);
  Serial.println(data);
  
  }
