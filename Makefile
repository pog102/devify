TARGET      = devify

PREFIX     ?= /usr
INSTALL     = install -Dm755
RM         ?= rm -f

DESTINATION_UDEV = $(DESTDIR)$(PREFIX)/lib/udev/rules.d/
DESTINATION_BIN = $(DESTDIR)$(PREFIX)/bin/
DESTINATION_ICONS = $(DESTDIR)$(PREFIX)/share/icons/MonoDev/
DESTINATION_SOUNDS = $(DESTDIR)$(PREFIX)/share/sounds/MonoDev/
DESTINATION_DESKTOP_ENTRY = $(DESTDIR)$(PREFIX)/share/applications/

all: $(TARGET)

install: $(TARGET)
	$(INSTALL) $(TARGET) $(DESTINATION_BIN)$(TARGET)
	$(INSTALL) $(TARGET).desktop $(DESTINATION_DESKTOP_ENTRY)$(TARGET).desktop
	install -Dm644 devify.rules $(DESTINATION_UDEV)99-devify.rules
	install -d $(DESTINATION_ICONS)
	install -d $(DESTINATION_SOUNDS)
	install -Cm644 icons/* $(DESTINATION_ICONS)
	install -Cm644 sounds/* $(DESTINATION_SOUNDS)
	$(RM) /usr/local/bin/$(TARGET)
	rm -rf /usr/local/share/icons/MonoDev
	rm -rf /usr/local/share/sounds/MonoDev

uninstall:
	$(RM) $(DESTINATION_BIN)$(TARGET)
	$(RM) $(DESTINATION_DESKTOP_ENTRY)$(TARGET).desktop
	$(RM) -r $(DESTINATION_ICONS)
	$(RM) -r $(DESTINATION_SOUNDS)
	$(RM) $(DESTINATION_UDEV)99-devify.rules
	$(RM) /usr/local/bin/$(TARGET)
	rm -rf /usr/local/share/icons/MonoDev
	rm -rf /usr/local/share/sounds/MonoDev

clean:
	$(RM) ./devify
