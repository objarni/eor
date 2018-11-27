KNOWN ISSUES
============

* 2>&1 is not deterministic
* after.txt and before.txt cmd.line execution is not exactly the
   same (e.g use of both bash in one and and sh in other is inconsistent!)
   new files will not be included in entr scan (entr -d flag?)
* too many dependencies: bash, sh, entr, colordiff
* after.txt/before.txt in /tmp folder feels like a hack
* not possible to express complex patterns for grep/entr
* cannot see how many files are scanned on boot
* entr will not detect new files matching pattern
