all:	test

test:
	rm -f execute-tests.output
	sed -E -e '/^	@echo baz/d' -i Makefile
	(sleep 3 ; /bin/echo -e "\t@echo baz" >> Makefile) &
	echo y | WATCH_OPTS="-gt" ../eor -s execute-tests > execute-tests.output
	sed -E -u -e 's#[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}[.][0-9]+##g' \
		   	 -e "s#[+-][+-][+-] /tmp/eor-[0-9]+-before.txt##g" \
		    	 -e "s#[+-][+-][+-] /tmp/eor-[0-9]+-after.txt##g" \
		    	 -i execute-tests.output
	sed -E -e '/^	@echo baz/d' -i Makefile
	diff -BZuN execute-tests.expect execute-tests.output 

execute-tests: 
	@echo foo
	@echo bar 1>&2
