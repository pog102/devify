TARGET      = devify

PREFIX     ?= /usr/local
INSTALL     = install -Dm755
RM         ?= rm -f

all: $(TARGET)

install: $(TARGET)
	
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	$(INSTALL) $(TARGET) $(DESTDIR)$(PREFIX)/bin/$(TARGET)
	install -Dm644 devify.rules $(DESTDIR)$(PREFIX)/lib/udev/rules.d/99-devify.rules
	mkdir -p $(DESTDIR)$(PREFIX)/share/icons
	install -d $(DESTDIR)$(PREFIX)/share/icons/MonoDev
	install -Cm644 icons/* $(DESTDIR)$(PREFIX)/share/icons/MonoDev

uninstall: $(TARGET)

	rm $(DESTDIR)$(PREFIX)/bin/$(TARGET)
	rm -rf $(DESTDIR)$(PREFIX)/share/icons/MonoDev
	rm $(DESTDIR)$(PREFIX)/lib/udev/rules.d/99-devify.rules

clean:
	$(RM) ./devify
