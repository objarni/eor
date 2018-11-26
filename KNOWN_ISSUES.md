KNOWN ISSUES
============

* not possible to express make target as parameter to script
* eor uses conventional Makefile instead of it's own, making in-repo/versioning
  of the Makefile cumbersome (Makefile.eor via flag -f ?)
* since a general find | entr expression is used, the number of scanned
  files typically is measured in 1000s, meaning the O/S hard limit
  for inotify is passed, meaning you basically have to put your Makefile
  out-of-source and make som symbolic links. This is probably the most
  annoying fact with current implementation
* 2>&1 is not deterministic
* after.txt and before.txt cmd.line execution is not exactly the
   same (e.g use of both bash in one and and sh in other is inconsistent!)
   new files will not be included in entr scan (entr -d flag?)
* too many dependencies: bash, sh, entr
* after.txt/before.txt in /tmp folder feels like a hack
