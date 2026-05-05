DITFILES := $(wildcard *.dit)
PNGFILES := $(DITFILES:.dit=.png)

.PHONY: all

all: $(PNGFILES)


%.png: %.dit
	ditaa  $< -o $@

clean:
	rm *.svg; rm *.png