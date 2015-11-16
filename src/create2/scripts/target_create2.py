#!/usr/bin/env python
# this runs on the target linux machine attached to the create2, it subscribes to the instructions topic and acts accordingly


from create2.srv import * 
from create2 import Create2Class
import rospy

import signal
import sys

def signal_handler(signal, frame):
    print '\n' + "Ctrl+C detected, closing down gracefully..."
    create2.closeCreate2()
    sys.exit(0)

def handle_get_sensor_data(req):
	data = []
	if req.sensor == 1:
		cliffs = create2.readCliffSensors()
		for x in cliffs:
			data.append(str(cliffs[x]))
	elif req.sensor == 2:
		data.append(str(create2.readBumpers()))
	elif req.sensor == 3:
		data.append(str(create2.getEncoderCountR()))
		data.append(str(create2.getEncoderCountL()))
	elif req.sensor == 4:
		data.append(str(create2.readVoltage()))
	return GetSensorDataResponse(data)


def handle_drive(req):
	"""directly control Create2's left and right drive wheels
	Param: left and right motor velocities in mm/s
	Return: none
	"""
    #    rospy.loginfo( rospy.get_caller_id() + "LSUD: %f", left_ud )
    #   rospy.loginfo( rospy.get_caller_id() + "LSLR: %f", data.left_stick_left_right)
    #    rospy.loginfo( rospy.get_caller_id() + "RSUD: %f", right_ud )
    #   rospy.loginfo( rospy.get_caller_id() + "RSLR: %f", data.right_stick_left_right)
    #create2.driveDirect(left_ud*500, right_ud*500)
	create2.driveDirect(req.vel_left,req.vel_right)

def init():
	rospy.init_node('create2')
	s1 = rospy.Service('get_sensor_data', GetSensorData, handle_get_sensor_data)
	s2 = rospy.Service('drive', Drive, handle_drive)
	create2.getFirmware()
   # create2.onConnect("/dev/ttyUSB0")create2.getFirmware()
    #print "Battery voltage: " + str(create2.readVoltage()) + "mV"
    #print "Battery Charge: " + str(create2.readCharge()) + "mAh"
    #print "Battery Capacity: " + str(create2.readCapacity()) + "mAh"
    #print "Charging State: " + str(create2.getChargeState())
	print "Ready to get sensor data"
	rospy.spin()

if __name__ == '__main__':
    create2 = Create2Class.Create2Class("/dev/ttyUSB0") # Change "/dev/ttyUSB0" to reflect your serial cable path.
    signal.signal(signal.SIGINT, signal_handler)
    init()
