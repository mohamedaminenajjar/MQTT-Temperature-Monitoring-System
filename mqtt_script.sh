#!/bin/bash
#define a broker IP and topic
BROKER_IP="192.168.1.25"
TOPIC="temp/topic"
#start the mosquitto service 
if sudo systemctl start mosquitto; then
	echo "mosquitto start with success"
else 
	echo "mosquitto start failed"
fi
#subscribe to the topic and store the first message recieved in a variabe
while true 
do
	if MQTT_TEMP_MSG=$(mosquitto_sub -h $BROKER_IP -t $TOPIC -c 1); then
		echo "MQTT_TEMP_MSG"	
		if mosquitto_pub -h $BROKER_IP -t $TOPIC -m "led on"; then
			echo "led on"
		else
			echo "transmission failed"
		fi
	else
		echo "subscribe failed"
	fi
done