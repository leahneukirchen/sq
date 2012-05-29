all: fonts.dir

fonts.dir: sq.pcf sqb.pcf
	mkfontdir

%.pcf: %.bdf
	bdftopcf -o $@ $<

clean:
	rm -f *.pcf fonts.dir
