#include <Arduino.h>

// SpecterSense: ESP32-S3 + HLK-LD2410 mmWave Radar UART Driver
#define RADAR_RX_PIN 18  // ESP32-S3 RX1 connected to LD2410 TX
#define RADAR_TX_PIN 17  // ESP32-S3 TX1 connected to LD2410 RX
#define RADAR_BAUD   256000

HardwareSerial RadarSerial(1);

void setup() {
  Serial.begin(115200);
  RadarSerial.begin(RADAR_BAUD, SERIAL_8N1, RADAR_RX_PIN, RADAR_TX_PIN);
  Serial.println("[SpecterSense] Initializing 24GHz mmWave Radar Subsystem...");
}

void loop() {
  if (RadarSerial.available()) {
    uint8_t incomingByte = RadarSerial.read();
    // Parse FMCW target distance gates and micro-motion respiration data
    Serial.write(incomingByte);
  }
}
