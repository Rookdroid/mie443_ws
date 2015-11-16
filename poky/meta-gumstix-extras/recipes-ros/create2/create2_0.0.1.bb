DESCRIPTION = "Create2 Driver Package"

INHERIT += "externalsrc"
EXTERNALSRC = "/home/geoff/mie443_ws/src/create2"
EXTERNALSRC_BUILD = "/home/geoff/mie443_ws/build"

SECTION = "devel"
LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://package.xml;beginline=9;endline=9;md5=5835f13f1e7d94eea32171d2a1e63043"
 
DEPENDS = "rospy roscpp catkin glib-2.0 mavlink-socket"
RDEPENDS_${PN} = "rospy roscpp python-pyserial gscam"

S = "/home/geoff/mie443_ws/src/create2" 

inherit catkin

