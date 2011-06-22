PANDOC:=$(shell \
	if pandoc </dev/null 2>/dev/null; then \
		echo pandoc; \
		touch .docs-available; \
	else \
		echo "Warning: pandoc not installed; can't generate manpages." >&2; \
		echo '@echo Skipping: pandoc'; \
		rm -f .docs-available; \
	fi)


xxVERSION:=$(shell echo 0.0.0)
xxDATE:=$(shell date  "+%Y-%m-%d")

default: all

all: html

html: $(patsubst %.md,%.html,$(wildcard *.md))

%.html: %.md.tmp Makefile
	$(PANDOC) -s -r markdown -w html -o $@ $<
	
.PRECIOUS: %.md.tmp
%.md.tmp: %.md Makefile
	rm -f $@ $@.new
	sed -e 's,%xxVERSION%,${xxVERSION},g' \
	    -e 's,%xxDATE%,${xxDATE},g' <$< >$@.new
	mv $@.new $@

clean:
	rm -f *~ .*~ *.[0-9] *.new *.tmp *.html .docs-available
