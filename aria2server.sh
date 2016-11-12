#!/usr/bin/bash
# script that executes aria command that can be used by supervisor and aria.conf in debian linux (tested ubuntu 16.04)
aria2c --enable-rpc --rpc-listen-all --rpc-secret helloworld
