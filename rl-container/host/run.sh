#!/bin/bash

#ip r d default
sysctl -w net.ipv4.ip_forward=1

sleep infinity
