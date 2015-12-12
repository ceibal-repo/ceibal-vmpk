all:

install: all
	if [ `id -u "ceibal" >/dev/null 2>&1` ]; then
		usuario=ceibal
	elif [ `id -u "estudiante" >/dev/null 2>&1` ];then
		usuario=estudiante
	elif id -u "olpc" >/dev/null 2>&1;then
	    usuario=olpc
	elif id -u "profesor" >/dev/null 2>&1;then
	    usuario=profesor
	else
	    usuario=$(SUDO_USER)
	fi
	install -o $(usuario) -g $(usuario) -m 755 -d $(DESTDIR)/home/
	install -o $(usuario) -g $(usuario) -m 755 -d $(DESTDIR)/home/$(usuario)
	install -o $(usuario) -g $(usuario) -m 755 -d $(DESTDIR)/home/$(usuario)/.config
	install -o $(usuario) -g $(usuario) -m 755 -d $(DESTDIR)/home/$(usuario)/.config/vmpk.sourceforge.net
	install -o $(usuario) -g $(usuario) -m 644 virtual-midi-piano-keyboard.conf $(DESTDIR)/home/$(usuario)/.config/vmpk.sourceforge.net/"Virtual MIDI Piano Keyboard.conf" 
