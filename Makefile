CC := gcc
CFLAGS := -O2 -Wall -Werror -Wno-error=unused-result -pedantic -std=gnu99
INSTALL := install -Dm755

.PHONY: clean install

tiramisu: tiramisu.c
    $(CC) $(CFLAGS) tiramisu.c -o tiramisu

install: tiramisu
    mkdir -p "$(DESTDIR)/usr/lib/tiramisu"
    dd count=1 bs=512 if=/dev/urandom of="$(DESTDIR)/usr/lib/tiramisu/random.seed"

    $(INSTALL) tiramisu "$(DESTDIR)/usr/bin/tiramisu"
    $(INSTALL) bin/shutdown "$(DESTDIR)/usr/bin/shutdown"
    $(INSTALL) bin/reboot "$(DESTDIR)/usr/bin/reboot"

clean:
    rm tiramisu
