#!/bin/sh



killall conky  || true
conky -d
conky -c conky2.conf -a top_left -x 5150 -y -1060 -d || true
conky -c conky3.conf -a top_left -x 5380 -y  0 -d || true

