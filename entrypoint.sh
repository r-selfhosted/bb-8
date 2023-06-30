#!/bin/bash

cd /usr/src/monitorss/
/usr/local/bin/node bot.js &
sleep 15
/usr/local/bin/node web.js
