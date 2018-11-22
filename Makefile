all:	tests

tests:
	shellcheck -s bash eor
