CHANGELOG
=========
Early November 2018:
  * make without target works (somewhat)
  * prompt to see output of first run
20th November 2018:
  * possible to specify make target
26th November 2018:
  * Makefile should now be named Makefile.eor,
    enabling versioning of eor specific Makefiles
  * Possible to specify 2nd argument to eor which
    will be used to grep with, to reduce number
    of scanned files (circumvent inotify 1024 file
    handles limitation)
