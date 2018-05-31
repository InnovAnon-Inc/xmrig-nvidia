#! /bin/bash
set -exo nounset

#[ $# -eq 1 ] || exit 1

[ -x build/xmrig-nvidia ] || ./build.sh

sudo nice -n -20 \
	build/xmrig-nvidia --donate-level=0 \
	--config=./workstation.json
#	--config=$1

#	-u 43To46Y9AxNFkY5rsMQaLwbRNaxLZVvc4LJZt7Cx9Dt23frL6aut2uC3PsMiwGY5C5fKLSn6sWyoxRQTK1dhdBpKAX8bsUW \
#	-p work01 -o us-backup.supportxmr.com
