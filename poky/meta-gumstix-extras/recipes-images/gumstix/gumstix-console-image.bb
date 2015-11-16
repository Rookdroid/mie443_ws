DESCRIPTION = "A basic console image for Gumstix boards."
LICENSE = "MIT"

IMAGE_FEATURES += "splash package-management ssh-server-openssh"
# Uncomment below to include dev tools and packages
# IMAGE_FEATURES += "tools-sdk dev-pkgs"

IMAGE_LINGUAS = "en-us"

inherit core-image

# Gumstix machines individually RDEPEND on the firware they need but we repeat
# it here as we might want to use the same image on multiple different machines.
FIRMWARE_INSTALL = " \
  linux-firmware-sd8686 \
  linux-firmware-sd8787 \
  linux-firmware-wl18xx \
"

SYSTEM_TOOLS_INSTALL = " \
  alsa-utils \
  cpufrequtils \
  systemd-analyze \
  tzdata \
"

DEV_TOOLS_INSTALL = " \
  memtester \
  mtd-utils-ubifs \
  u-boot-mkimage \
"

NETWORK_TOOLS_INSTALL = " \
  curl \
  dnsmasq \
  hostapd \
  iproute2 \
  iputils \
  iw \
  ntp \
  uim \
"

MEDIA_TOOLS_INSTALL = " \
  media-ctl \
  raw2rgbpnm \
  v4l-utils \
  yavta \
"

GRAPHICS_LIBS = " \
  mtdev \ 
  tslib \
"  

UTILITIES_INSTALL = " \
  coreutils \
	camera-info-manager-py \
	diffutils \
	findutils \
	git \
	git-perltools \
	gpsd \
	grep \
	joy \
	gzip \
	less \
	nano \
	packagegroup-cli-tools \
	packagegroup-cli-tools-debug \
	packagegroup-ros-comm \
	python-distutils \
	python-email \
	python-rosinstall \
	python-pyserial \
	python-wstool \
	create2 \
	sudo \
	std-msgs \
	message-generation \
	message-runtime \
	tar \
	vim \
	wget \
	zip \
"

GSCAM_INSTALL = " \
	gscam \
	nodelet \
	cv-bridge \
	roscpp \
	theora-image-transport \
	sensor-msgs \
	camera-calibration-parsers \
	camera-info-manager \
	gst-plugins-good-video4linux2 \
	gst-plugins-base-app \
"
 
IMAGE_INSTALL += " \
  ${FIRMWARE_INSTALL} \
  ${SYSTEM_TOOLS_INSTALL} \
  ${DEV_TOOLS_INSTALL} \
  ${NETWORK_TOOLS_INSTALL} \
  ${MEDIA_TOOLS_INSTALL} \
  ${GRAPHICS_LIBS} \
  ${UTILITIES_INSTALL} \
	${GSCAM_INSTALL} \
"

# Create a generic 'gumstix' user account, part of the gumstix group,
# using '/bin/sh' and with a home directory '/home/gumstix' (see
# /etc/default/useradd).  We set the password to 'gumstix' and add them
# to the 'sudo' group.
inherit extrausers
EXTRA_USERS_PARAMS = " \
    useradd -P gumstix -G sudo gumstix; \
"