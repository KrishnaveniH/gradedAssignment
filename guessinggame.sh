function guessNumFiles {
		
	totalFiles=$(ls | wc -l)
	
	if [[ $1 -gt $totalFiles ]]
	then
		echo "Guess was too high!! Guess again : "
	elif [[ $1 -lt $totalFiles ]]
	then
		echo "Guess was too low!! Guess again : "
	elif [[ $1 -eq $totalFiles ]]
	then
		echo "Congratulations !! correct guess !! "
		let guessTrueFlag=1
	fi

}


guessTrueFlag=0
echo "Guess the number of files in the current directory : "

while [[ $guessTrueFlag -eq 0 ]] 
do
	read userGuess
		
#	if [[ $userGuess -gt 0 ]]
	if [[ $(echo $userGuess | egrep -e "^[1-9]+$" ) ]]
	then 
		guessNumFiles $userGuess
	elif [[ $(echo $userGuess | egrep -e "0" ) ]]
	then
		echo "Guess value cannot be 0!!"
	else
		echo "The input must be a positive integer. Guess Again!! "
	fi
done
