#!/bin/bash

set -x

rpm -q --whatrequires insserv | grep -F -i yast2 && echo "AUTOYAST FAIL" && exit 1
rpm -q --whatrequires insserv-compat | grep -F -i yast2 && echo "AUTOYAST FAIL" && exit 2
grep -r -q "/sbin/insserv" /usr/share/YaST2/ && echo "AUTOYAST FAIL" && exit 3

echo "AUTOYAST OK"
