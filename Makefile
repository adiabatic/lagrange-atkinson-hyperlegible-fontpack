BASENAMES := atkinson-hyperlegible
TARGETS := $(addsuffix .fontpack,${BASENAMES})

build: ${TARGETS}

${TARGETS}:
	zip --junk-paths --compression-method store --exclude \*.DS_Store \
		-r $@ "$(basename $@)"

clean:
	-rm ${TARGETS}
