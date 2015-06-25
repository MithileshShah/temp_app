#include <Average.h>

#include<Wire.h>
#include <Adafruit_MLX90614.h>
 Average<float> ave(50);
Adafruit_MLX90614 mlx = Adafruit_MLX90614();
float temp_c,temp_avg;
int data=0;
boolean flag;// flag to check target is stable;
void setup() {
  Serial.begin(9600);
  Serial.flush();
  mlx.begin();
  

}

void loop() {
   while(Serial.available()==0);

   int val =Serial.read() - 48;

   if (val == 1){
    send_temp();
    
    }
    
    }


