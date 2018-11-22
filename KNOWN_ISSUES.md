KNOWN ISSUES
============

* not possible to express make target as parameter to script
* 2>&1 is not deterministic
* after.txt and before.txt cmd.line execution is not exactly the
   same (e.g use of both bash in one and and sh in other is inconsistent!)
   new files will not be included in entr scan (entr -d flag?)
* too many dependencies: bash, sh, entr
* after.txt/before.txt in /tmp folder feels like a hack
