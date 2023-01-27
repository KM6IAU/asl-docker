#FROM	devuan/devuan:stable
FROM    amd64/debian:buster

ENV 	DEBIAN_FRONTEND="noninteractive"

RUN 	apt-get -y update
RUN 	apt-get -y install \
	linux-headers-amd64 \
	libasound2-dev \
	libpq-dev \
	unixodbc-dev \
	libpri-dev \
	libvpb-dev \
	libnewt-dev \
	libspeex-dev \
	libspeexdsp-dev \
	libcurl4-openssl-dev \
	libpopt-dev \
	libiksemel-dev \
	freetds-dev \
	libvorbis-dev \
	libsnmp-dev \
	libcap-dev \
	libi2c-dev \
	libjansson-dev \
	build-essential \
	libtonezone-dev \
	git \
	cmake \
	g++ \
	libboost-all-dev \
	libgmp-dev \
	swig \
	python3-numpy \
	nano

RUN 	git clone https://github.com/AllStarLink/ASL-Asterisk.git
RUN 	git clone https://github.com/AllStarLink/ASL-DAHDI.git

CMD 	["bash"]
#EXEC	["/usr/sbin/asl-menu"]

