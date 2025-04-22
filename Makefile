DOC_DIR = doc

all: test

test:
	v test .

doc:
	v doc -f html -m . -o $(DOC_DIR)

serve: clean doc
	v -e "import net.http.file; file.serve(folder: '$(DOC_DIR)')"

build:
	v -path "$$(realpath $$PWD/../)|@vlib|@vmodules" \
		-prod -parallel-cc -cflags -static -cflags -s -d no_segfault_handler \
		cmd/datasize -o datasize

clean:
	rm -r $(DOC_DIR) >/dev/null 2>&1 || true
	rm datasize >/dev/null 2>&1|| true
