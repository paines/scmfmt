#!/bin/sh

set -e
cd '/home/al/src/scmfmt'

mkdir -p ${DESTDIR}'/usr/bin'
rm -f ${DESTDIR}'/usr/bin/scmfmt'
install -m 755 '/home/al/src/scmfmt/scmfmt' ${DESTDIR}'/usr/bin/scmfmt'

mkdir -p ${DESTDIR}'/var/lib//chicken/11'
rm -f ${DESTDIR}'/var/lib//chicken/11/scmfmt.egg-info'
cat >${DESTDIR}'/var/lib//chicken/11/scmfmt.egg-info' <<ENDINFO
((installed-files "/usr/bin/scmfmt")
 (synopsis "Chicken Scheme code fromattor to use from stdin/stdout")
 (author "Anes Lihovac")
 (license "BSD")
 (category tools)
 (dependencies henrietta-cache salmonella)
 (component-options (csc-options "-O3" "-d0"))
 (components (program scmfmt)))
ENDINFO
