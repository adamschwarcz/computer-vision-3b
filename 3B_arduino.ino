char val; // Data received from the serial port
int speakerPin = 8;

void setup() {
 pinMode(speakerPin, OUTPUT);
 Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  while (Serial.available()) { // If data is available to read,
    val = Serial.read(); // read it and store it in val
  }

  if (val == 'H') { // If H was received
    tone(speakerPin, 330, 200); // plays a tone of 262Hz for 200ms
   } 
  
   else {
    tone(speakerPin, 0, 200); // plays a tone of 262Hz for 200ms
   }
   
   delay(100); // Wait 100 milliseconds for next reading
}
