#!/usr/bin/python3

from PtoP_traject.srv import *
import rospy
import numpy as np
import rtde_control 
import rtde_receive

try:
    foo = rospy.ServiceProxy('pointToPoint_traject', PtoP_traject)
    point1 = [0.5, 0.5, 0.5, 0.1,0.1,0.1]
    point2 =  [0.5, 0.5, 0.5, 0.1,0.5,0.1]
    flat = np.array(foo(point1, point2, 10).jointq)
    print(flat.reshape(-1, len(point2)) )
except rospy.ServiceException as e:
    print("Service call failed: %s"%e)

