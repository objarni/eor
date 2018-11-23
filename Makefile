all:	tests

install-deps:
	sudo apt-get install colordiff entr

install-deps-dev: install-deps
	sudo apt-get install shellcheck

tests:
	#shellcheck -s bash eor
	cd test && make -s
