

PREFIX=$(HOME)/local

.PHONY: fetch configure build install 
all: fetch configure build install 

fetch:
	wget http://pyyaml.org/download/libyaml/yaml-0.1.5.tar.gz
	tar zxvf yaml-0.1.5.tar.gz

configure:
	./configure --prefix=$(PREFIX)

build:
	make

install:
	make install
