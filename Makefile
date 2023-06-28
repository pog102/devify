TARGET      = devify
SRC        := src/notification.vala src/dbus.vala src/tiramisu.vala

PREFIX     ?= /usr/local
INSTALL     = install -Dm755
RM         ?= rm -f
PKG_CONFIG ?= pkg-config

VALAC      ?= valac
CFLAGS     += -Wall -Wno-unused-value
IFLAGS      = --pkg gio-2.0
LFLAGS      = `$(PKG_CONFIG) --libs glib-2.0 gio-2.0`


all: $(TARGET)

install: $(TARGET)



	mkdir -p $(DESTDIR)$(PREFIX)/bin
	$(INSTALL) $(TARGET) $(DESTDIR)$(PREFIX)/bin/$(TARGET)
	install -Dm644 devify.rules $(DESTDIR)$(PREFIX)/lib/udev/rules.d/99-devify.rules
	mkdir -p $(DESTDIR)$(PREFIX)/share/icons
	install -d $(DESTDIR)$(PREFIX)/share/icons/MonoDev
	install -Cm644 icons/* $(DESTDIR)$(PREFIX)/share/icons/MonoDev

clean:
	$(RM) ./devify
