#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Shoma Furuya
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0

### TEST ###
out=$(./plus < nums)
[ "${out}" = 55 ] || ng ${LINENO}

out=$(seq 5 | sed 's/$/.1/' | ./plus)
[ "${out}" = 15.5 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
