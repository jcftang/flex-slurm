VERSION=$(shell cat VERSION)

# If ikiwiki is available, build static html docs suitable for being
# shipped in the software package.
ifeq ($(shell which ikiwiki),)
IKIWIKI=@echo "** ikiwiki not found, skipping building docs" >&2; true
## NO_IKIWIKI=1
else
IKIWIKI=ikiwiki
endif

all: docs 

docs:
	$(IKIWIKI) doc html -v --wikiname flex-slurm --plugin=goodstuff \
		--no-usedirs --disable-plugin=openid --plugin=sidebar \
		--disable-plugin=shortcut \
		--disable-plugin=smiley \
		--plugin=comments --set comments_pagespec="*" \
		--exclude='news/.*'
ifdef NO_IKIWIKI
	$(MAKE) import-docs
endif

clean:
	rm -rf html doc/.ikiwiki

dist:
	git archive --format tar --prefix=$$(cat VERSION)/ HEAD | gzip > $$(cat VERSION).tar.gz
	git archive --format tar --prefix=$$(cat VERSION)-html/ html | gzip > $$(cat VERSION)-html.tar.gz

dist-withdocs: docs
	git archive --format tar --prefix=$$(cat VERSION)/ HEAD | tar xv -
	if [ -d html ]; then \
		rsync -a --delete html/ $$(cat VERSION)/html/; \
	fi
	tar czvf $$(cat VERSION).tar.gz $$(cat VERSION)/
	echo rm -rf $$(cat VERSION)

release: dist docs
	mkdir -p release/$$(cat VERSION)
	cp $$(cat VERSION).tar.gz release/$$(cat VERSION)
	cp $$(cat VERSION)-html.tar.gz release/$$(cat VERSION)
	cp -a html release/$$(cat VERSION)

# update the local 'man' and 'html' branches with pregenerated output files, for
# people who don't have ikiwiki (and maybe to aid in google searches or something)
export-docs: docs
#	git update-ref refs/heads/man origin/man '' 2>/dev/null || true
#	GIT_INDEX_FILE=gitindex.tmp; export GIT_INDEX_FILE; \
#	rm -f $${GIT_INDEX_FILE} && \
#	git add -f Documentation/*.1 && \
#	git update-ref refs/heads/man \
#		$$(echo "Autogenerated man pages for $$(git describe)" \
#			| git commit-tree $$(git write-tree --prefix=Documentation) \
#				-p refs/heads/man) && \
	git update-ref refs/heads/html origin/html '' 2>/dev/null || true
	GIT_INDEX_FILE=gitindex.tmp; export GIT_INDEX_FILE; \
	rm -f $${GIT_INDEX_FILE} && \
	git add -f html/* && \
	git update-ref refs/heads/html \
		$$(echo "Autogenerated html pages for $$(git describe)" \
			| git commit-tree $$(git write-tree --prefix=html) \
				-p refs/heads/html)

# don't have ikiwiki but still want to be able to install the docs.
import-docs: clean
	mkdir -p html
	git archive origin/html | (cd html; tar -xvf -)

push-docs: export-docs
	git push origin html

.PHONY: docs
