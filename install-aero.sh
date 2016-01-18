#!/bin/bash

wget -O aerospike.tgz 'http://aerospike.com/download/server/latest/artifact/el6'

tar -xvf aerospike.tgz

cd aerospike-server-community-*-el6
sudo ./asinstall

sudo service aerospike start