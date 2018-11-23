#!/bin/bash
sudo kill $(ps -ef | grep dockerd | awk '{print $2}')