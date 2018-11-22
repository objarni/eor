all:	tests

install-deps:
	sudo apt-get install colordiff entr

tests:
	shellcheck -s bash eor
	make -C test
