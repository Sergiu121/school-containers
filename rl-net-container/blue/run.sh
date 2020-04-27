#!/bin/bash

ip r d default
ip r a default via 13.13.13.1

sleep infinity
