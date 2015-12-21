all:

install: all
	install -o root -g root -m 644 virtual-midi-piano-keyboard.conf $(DESTDIR)/virtual-midi-piano-keyboard.conf

