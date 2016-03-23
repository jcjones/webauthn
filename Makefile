.PHONY: force publish all
all: index.html

LIBDIR ?= lib
include $(LIBDIR)/compat.mk
include $(LIBDIR)/config.mk
include $(LIBDIR)/id.mk
include $(LIBDIR)/ghpages.mk

force:
	bikeshed -f spec ./index.src.html

index.html: index.src.html biblio.json
	bikeshed spec ./index.src.html