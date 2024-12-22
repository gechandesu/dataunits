SRC_DIR ?= src
DOC_DIR ?= doc
TESTS_DIR ?= .

all: test

test:
	v test $(TESTS_DIR)

doc:
	v doc -f html -m ./$(SRC_DIR) -o $(DOC_DIR)

serve: clean doc
	v -e "import net.http.file; file.serve(folder: '$(DOC_DIR)')"

build:
	v -path "$$(realpath $$PWD/../)|@vlib|@vmodules" \
		-prod -skip-unused -parallel-cc -cflags -static -cflags -s -d no_segfault_handler \
		cmd/dataunit.v -o dataunit

clean:
	rm -r $(DOC_DIR) || true
	rm dataunit || true
