install:
	mkdir -pv /usr/bonsai/ && echo "* /usr/bonsai/ was created" || exit 1
	cp -R pkgtree _setup.sh _build.sh /usr/bonsai && echo "* _setup.sh , build.sh and pkgtree copied to /usr/bonsai" || exit 2
	cp bonsai /usr/bin/bonsai && echo "* Bonsai package manager was installed" || exit 3

uninstall:
	rm -r /usr/bonsai && echo "* /usr/bonsai deleted (and all its content)" || exit 1
	rm /usr/bin/bonsai && echo "* Bonsai package manager was uninstalled" || exit 2

.PHONY:
	install,uninstall
