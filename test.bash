#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Shoma Furuya
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

<< COMMENTOUT
### STRANGE INPUT ###
out=$(echo あ | ./plus) 
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus) 
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

COMMENTOUT

[ "$res" = 0 ] && echo OK
exit $res 


