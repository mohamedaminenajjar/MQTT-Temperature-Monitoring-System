# 🌡️ ESP32 and Raspberry Pi MQTT Temperature Monitoring System 📡

Welcome to the **IoT Temperature Monitoring System** project! This setup uses an **ESP32** and a **Raspberry Pi** to communicate via MQTT, demonstrating how you can collect and react to sensor data in real-time.

## 📖 Project Overview

This project demonstrates a simple IoT setup where:
- **ESP32** (Client): Reads temperature data from a **DHT11 sensor** and sends it to an MQTT broker.
- **Raspberry Pi** (Broker): Acts as the **MQTT broker**, receives the data, and sends a response to the ESP32.
- The **ESP32** turns on an **LED** when it receives a response from the Raspberry Pi.

---

## 🧰 Project Components
- **ESP32 (Client)**: Reads temperature data from a DHT11 sensor and publishes it to an MQTT topic.
- **Raspberry Pi (Broker)**: Receives temperature data and sends a response back to the ESP32.
- **DHT11 Sensor**: Measures temperature.
- **LED**: Connected to ESP32, lights up when the Raspberry Pi responds with a "led on" message.

---

## 🌟 Features
- Real-time **MQTT communication** between the ESP32 and Raspberry Pi.
- Publishes temperature data from the ESP32 to Raspberry Pi.
- **LED** on the ESP32 lights up when it receives the "led on" message from the Raspberry Pi.

---

## 🔌 Hardware Requirements
- ESP32 board
- **DHT11** temperature and humidity sensor
- **Raspberry Pi** (with Mosquitto MQTT broker installed)
- **LED** and a resistor

---

## 💻 Software Requirements
- **Arduino IDE** (with ESP32 board package installed)
- **Mosquitto MQTT broker** (installed on the Raspberry Pi)
- Wi-Fi connection

---

## 🔧 Project Setup

### ⚙️ ESP32 Setup

1. **Install Libraries** in Arduino IDE:
   - `WiFi.h`: For Wi-Fi connectivity.
   - `PubSubClient.h`: For MQTT communication.
   - `DHT.h`: For interfacing with the DHT11 sensor.

2. **Configure the ESP32 Code**:
   - Set your **Wi-Fi credentials** in the `ssid` and `password` variables.
   - Set the **IP address of your Raspberry Pi** as `mqtt_server`.
   
3. **Connect DHT11 and LED to ESP32**:
   - **DHT11 Data Pin**: Pin 26 of ESP32.
   - **LED**: Connected to GPIO pin 2.
   
4. **Upload Code** to the ESP32 using Arduino IDE.

---

### 🍓 Raspberry Pi Setup

1. **Install Mosquitto MQTT Broker**:
   ```bash
   sudo apt update
   sudo apt install mosquitto mosquitto-clients
2. **Enable and Start the Mosquitto Service**:
   ```bash
   sudo systemctl enable mosquitto
   sudo systemctl start mosquitto
3. **Make Script Executable**:
   ```bash
   chmod +x mqtt_broker.sh
4. **Run the Script**:
   ```bash
   ./mqtt_broker.sh
## Contact 📧

For any questions or inquiries, please contact:
- Email: [mohamedamine.najjar@isimg.tn](https://mail.google.com/mail/u/0/?fs=1&tf=cm&source=mailto&to=mohamedamine.najjar@isimg.tn)
- LinkedIn: [Mohamed Amine Najjar](https://www.linkedin.com/in/mohamed-amine-najjar-2808a726b/)

---

Happy coding! 😊


