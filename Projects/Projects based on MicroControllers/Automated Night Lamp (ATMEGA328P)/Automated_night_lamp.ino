// Automated Night Lamp using ATMEGA328P + LDR + Relay + Buzzer
// Developed in Arduino IDE (Embedded C)

// Pin configuration
const int ldrPin = A0;       // LDR connected to analog pin A0
const int lampPin = 8;       // Relay/LED connected to digital pin 8
const int buzzerPin = 9;     // Buzzer connected to digital pin 9

// Threshold for light intensity (tune this as per environment)
int threshold = 500;

void setup() {
  pinMode(lampPin, OUTPUT);
  pinMode(buzzerPin, OUTPUT);
  digitalWrite(lampPin, LOW);   // Lamp initially OFF
  digitalWrite(buzzerPin, LOW); // Buzzer initially OFF
  Serial.begin(9600);           // For debugging LDR values
}

void loop() {
  int ldrValue = analogRead(ldrPin);
  Serial.println(ldrValue); // Debugging: print light intensity

  if (ldrValue < threshold) {
    // Night detected
    digitalWrite(lampPin, HIGH);   // Turn ON lamp
    digitalWrite(buzzerPin, LOW);  // Ensure buzzer OFF
  } else {
    // Day detected
    digitalWrite(lampPin, LOW);    // Turn OFF lamp
    digitalWrite(buzzerPin, HIGH); // Turn ON buzzer
    delay(1000);                   // Buzzer beeps for 1 sec
    digitalWrite(buzzerPin, LOW);  // Buzzer OFF again
  }

  delay(500); // Small delay for stability
}
