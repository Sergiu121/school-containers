#!/bin/bash

ip r d default
ip r a default via 11.11.11.1

sleep infinity
