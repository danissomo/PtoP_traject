#!/usr/bin/python3
import rtde_control
import rtde_receive
from tools import *
from planner import *
import rospy
import PtoP_traject.srv._PtoP_traject as ptpClass

def handler(args):
    print("Info: service call with argument ", args)
    count_of_divide = 10
    rtde_c = rtde_control.RTDEControlInterface("127.0.0.1")
    tp = trajectPlanner(debug=False)
    cart_a = tp.a_PointToPoint(args.point1, args.point2, count_of_divide)

    ik = rtde_kinematic(rtde_c, debug=False)
    joint_Q = ik.get_joint_pose(cart_a)
    rtde_c.quit()
    return joint_Q

def main():
    rospy.init_node("trajectory_server")
    s = rospy.Service("pointToPoint_traject", ptpClass.PtoP_traject, handler)
    s.spin()
main()
