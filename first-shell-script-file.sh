#!/bin/bash

############################
# Author: Mukthadeer
# Date: 09-08-2026
#
# This file is for to check on the Node health
#
# Version 1
############################


set -x # debug mode
set -e # if any error on command exit
set -o pipefail

nproc # processor core

df -h # memory disk

free -g # size

top # total cpu, memory and disk

ps -ef | grep ubuntu | awk -F" " '{print $2}'
