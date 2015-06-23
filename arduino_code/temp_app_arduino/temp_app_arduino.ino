#include <Average.h>

#include<Wire.h>
#include <Adafruit_MLX90614.h>

Adafruit_MLX90614 mlx = Adafruit_MLX90614();
float temp_c,temp_avg;
int data=0;
void setup() {
  Serial.begin(9600);
  mlx.begin();
  

}

void loop() {
  switch(data){
    case 0:

    case 1:check_target();

    case 2:send_temp();
    
    
    }

}
