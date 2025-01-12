# Makefile for generating README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n## Run Information" >> README.md
	echo "Date and time of execution: $$(date)" >> README.md
	echo "\nNumber of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
