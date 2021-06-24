import processing.serial.*;
Serial myPort;
int val; 

void setup() {
 size(200, 200);
 ellipseMode(CENTER);
 String portName = Serial.list()[2]; 
 myPort = new Serial(this, portName, 9600);
}

void draw() {
 background(255);
 
 if (mouseOverRect() == true) {
   fill(255,0,0); 
   myPort.write('H'); 
 }
 
 else {
   fill(0,255,0); 
   myPort.write('L');
 }
 
  ellipse(100, 100, 140, 140);
}

boolean mouseOverRect() { // Test if mouse is over square
 return ((mouseX >= 50) && (mouseX <= 150) && (mouseY >= 50) && (mouseY
<= 150));
}
