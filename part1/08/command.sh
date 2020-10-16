#!/bin/bash

touch logs.txt
docker run -v $(pwd)/logs.txt:/usr/app/logs.txt -it --rm devopsdockeruh/first_volume_exercise
