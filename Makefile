PREFIX := /usr/local
ETCDIR := /usr/local/etc
MANDIR := /usr/share/man
LICENSEDIR := /usr/share/licenses

install: ## Install butter
	@install -Dm 0755 butter $(PREFIX)/bin/butter
	@install -dm 0755 $(PREFIX)/lib/butter/
	@install -m  0644 lib-btr/* $(PREFIX)/lib/butter/
	@install -Dm 0644 butterrc $(ETCDIR)/butterrc
	@install -Dm 0444 butter.7 $(MANDIR)/man7/butter.7
	@install -Dm 0444 butter.8 $(MANDIR)/man8/butter.8
	@install -Dm 0444 butterrc.5 $(MANDIR)/man5/butterrc.5
	@install -Dm 0444 LICENSE $(LICENSEDIR)/butter/LICENSE

uninstall : ## Uninstall butter
	@rm    $(PREFIX)/bin/butter
	@rm -r $(PREFIX)/lib/butter/
	@rm    $(MANDIR)/man7/butter.7 $(MANDIR)/man8/butter.8 $(MANDIR)/man5/butterrc.5
	@rm    $(LICENSEDIR)/butter/LICENSE
