#!/bin/bash

#ps -ef |grep mark | awk '{print $2}' | xargs kill -9
ps -ef |grep mark | grep main.py | awk '{print $2}' | xargs kill -9
ps -ef |grep mark | grep SC2 | awk '{print $2}' | xargs kill -9
