#!/bin/sh
tmpdir=`mktemp -d`
wget --recursive --no-clobber --restrict-file-names=windows --local-encoding="UTF-8" --remote-encoding="UTF-8" --ignore-case -R "*.png,*.jpg,*.js,*.css" --domains jprof.by -P $tmpdir jprof.by
total=`find $tmpdir -type f|xargs grep -i -o java|wc -l`
echo Found $total occurrences of java
rm -rf $tmpdir
