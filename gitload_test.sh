#!/bin/bash -e
for iteration in {16..1016}; do cp hello.c hello$iteration.c;  sed -i 's/Devops/${iteration}/g' hello$iteration.c; git add hello$iteration.c; git commit -m "branch$iteration.c"; git pull check master; git push check master; done
