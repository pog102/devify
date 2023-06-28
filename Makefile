.PHONY: install
install:
	install -D devify $(DESTDIR)$(PREFIX)/bin/devify
	install -Dm644 devify.rules $(DESTDIR)$(PREFIX)/lib/udev/rules.d/99-devify.rules
	install -d $(DESTDIR)/usr/share/icons/MonoDev
	install -Cm644 icons/* $(DESTDIR)/usr/share/icons/MonoDev
