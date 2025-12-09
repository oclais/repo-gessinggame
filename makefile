all: README.md index.md

README.md:
	echo '# Gessinggame' > README.md
	echo "Date : $(shell date)" >> README.md
	echo "Nb lines in gessinggame.sh : $(shell cat gessinggame.sh|wc -l)" >> README.md

index.md: README.md
	cp README.md index.md

clean:
	rm README.md
	rm index.md
