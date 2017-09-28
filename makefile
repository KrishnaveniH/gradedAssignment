README.md : guessinggame.sh
	echo " # Project Title : Guessing Game " >> README.md
	# date and time at which make was run
	date >> README.md 
	# Number of lines of code in guessinggame.sh 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean : 
	rm README.md

