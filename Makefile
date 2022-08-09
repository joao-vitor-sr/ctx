PROG=ctx
PREFIX=/usr/local
BINDIR=${PREFIX}/bin
DOCDIR=${PREFIX}/share/doc/ctx
MANDIR=${PREFIX}/share/man
LICENSEDIR=${PREFIX}/share/licenses/ctx

doc:
	mkdir -p ${DESTDIR}${MANDIR}/man1
	mkdir -p ${DESTDIR}${LICENSEDIR}
	chmod 644 docs/man/ctx.1 LICENSE
	cp docs/man/ctx.1 ${DESTDIR}${MANDIR}/man1
	cp LICENSE ${DESTDIR}${LICENSEDIR}

install:
	chmod 755 ${PROG}
	mkdir -p ${DESTDIR}${BINDIR}
	cp ${PROG} ${DESTDIR}${BINDIR}/${PROG}

uninstall:
	rm -f ${DESTDIR}${MANDIR}/man1/ctx.1
	rm -rf ${DESTDIR}${DOCDIR}
	rm -rf ${DESTDIR}${LICENSEDIR}
	rm -f ${DESTDIR}${BINDIR}/${PROG}
	rm -rf ${DESTDIR}${YTFZF_SYSTEM_ADDON_DIR}

.PHONY: install uninstall doc
