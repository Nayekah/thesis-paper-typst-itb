TINYMIST ?= tinymist
TYPSTYLE ?= typstyle
ENTRY := paper/main.typ
OUTPUT := build/main.pdf
TYPST_SOURCES := paper

.PHONY: build watch format format-check clean

build:
	$(TINYMIST) compile --root . $(ENTRY) $(OUTPUT)

watch:
	$(TINYMIST) compile --when onSave --root . $(ENTRY) $(OUTPUT)

format:
	$(TYPSTYLE) --line-ending=crlf -i $(TYPST_SOURCES)

format-check:
	$(TYPSTYLE) --check --line-ending=crlf $(TYPST_SOURCES)

clean:
	$(RM) $(OUTPUT)

