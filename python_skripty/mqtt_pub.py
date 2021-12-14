import paho.mqtt.publish as publish

publish.single("Rychtar/uzak", "21", hostname="mqtt.eclipseprojects.io")

print("Done")



