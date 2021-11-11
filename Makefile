PREFIX := /usr/local/include
LIBRARY := $(wildcard *.h *.c)
TARGETS := $(LIBRARY:%=$(PREFIX)/%)

all:
	@echo "Woah there buddy, what do you want to do? install or uninstall?"

install: 
	cp $(LIBRARY) $(PREFIX)

uninstall:
	rm -f $(TARGETS)

.PHONY: all install uninstall
