#!/bin/bash

echo "Started at $(date)" > output.log

uptime >> output.log

df -h >> output.log

echo "Finished at $(date)" >> output.log
