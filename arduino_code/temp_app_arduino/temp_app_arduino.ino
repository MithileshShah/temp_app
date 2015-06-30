#include <Average.h>// library for averaging 

#include<Wire.h>//I2C library

#include <Adafruit_MLX90614.h>

 Average<float> ave(100);//array to hold temperature values
Adafruit_MLX90614 mlx = Adafruit_MLX90614();
float temp_c,temp_avg,ambient_temp;
int data=0;
boolean flag;// flag to check target is stable;
void setup() {
  Serial.begin(9600);
  Serial.flush();
  mlx.begin();
  ambient_temp=mlx.readAmbientTempC();
  SendToProcessing('A',ambient_temp);

}

void loop() {
   while(Serial.available()==0);

   int val =Serial.read() - 48;

   if (val == 1){
    send_temp();
    
    }
    
    }


