#!/bin/bash

ip r d default
ip r a default via 12.12.12.1

sleep infinity
