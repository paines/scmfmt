#!/bin/sh

set -e
PATH='/usr/bin':$PATH
export CHICKEN_CC='x86_64-linux-gnu-gcc'
export CHICKEN_CXX='x86_64-linux-gnu-g++'
export CHICKEN_CSC='/usr/bin/csc'
export CHICKEN_CSI='/usr/bin/csi'
cd '/home/al/src/scmfmt'

'/usr/bin/chicken-do' '/home/al/src/scmfmt/scmfmt' : 'scmfmt.scm' '/home/al/src/scmfmt/scmfmt.egg'    : '/usr/bin/csc' -setup-mode -host -I /home/al/src/scmfmt -C -I/home/al/src/scmfmt '-O3' '-d0' 'scmfmt.scm'  -o '/home/al/src/scmfmt/scmfmt'
