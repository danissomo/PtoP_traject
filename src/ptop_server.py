#!/usr/bin/python3
import rtde_control
from tools import *
from planner import *
import rospy
import PtoP_traject.srv._PtoP_traject as ptpClass
import numpy as np
import std_msgs.msg._Float64MultiArray as rosarray
def handler(args):
    print("Info: service call with arguments: ")
    print(args)
    count_of_divide = 10
    rtde_c = rtde_control.RTDEControlInterface("127.0.0.1")
    tp = trajectPlanner(debug=False)
    cart_a = tp.a_PointToPoint(args.point1, args.point2, count_of_divide)

    ik = rtde_kinematic(rtde_c, debug=False)
    joint_Q = ik.get_joint_pose(cart_a)
    #rtde_c.quit()
    np_list = np.array(joint_Q).flatten().tolist()
   
    return  ptpClass.PtoP_trajectResponse(np_list)

def main():
    rospy.init_node("trajectory_server")
    s = rospy.Service("pointToPoint_traject", ptpClass.PtoP_traject, handler)
    s.spin()

if __name__ == "__main__":
    main()
