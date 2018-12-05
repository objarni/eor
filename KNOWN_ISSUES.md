KNOWN ISSUES
============

* 2>&1 is not deterministic
* after.txt and before.txt cmd.line execution is not exactly the
   same (e.g use of both bash in one and and sh in other is inconsistent!)
   new files will not be included in entr scan (entr -d flag?)
* after.txt/before.txt in /tmp folder feels like a hack
* watch has a -d flag; possible to get rid of before/after altogether?
* too many dependencies: bash, sh, entr, colordiff
* not possible to express complex patterns for grep/entr
* entr will not detect new files matching pattern
  (investigate -d flag behaviour)
* the pattern is really part of the target mentally, but not
  in current implementation
  - bash magic parsing of Makefile.eor / convention in Makefile?