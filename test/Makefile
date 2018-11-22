all:	test

test:
	sed -e '/^	@echo baz/d' -i Makefile
	(sleep 3 ; /bin/echo -e "\t@echo baz" >> Makefile) &
	echo y | WATCH_OPTS="-gt" eor "-s execute-tests" > execute-tests.output
	sed -ur -e 's#[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}[.][0-9]+##g' \
			  -e "s#make [1]: \\(Leaving|Entering\\) directory [^\n]+##g" \
			  -i execute-tests.output
	sed -e '/^	@echo baz/d' -i Makefile
	diff -BZuN execute-tests.output execute-tests.expect

execute-tests:
	@echo foo
	@echo bar 1>&2
