allfiles=($(ls))
file_count=${#allfiles[@]}

dguess=0

function guess {

    if [[ $1 -lt $2 ]]
    	then
    		echo "Too low"
    		echo "Please try again !"
    		
    elif [[ $1 -gt $2 ]]
    	then
    		echo "Too high"
    		echo "Please try again !"
    fi
}


while [ $dguess -ne $file_count ]
do
echo "Guess the number of directories, and type it bellow !"

read dguess

guess $dguess $file_count

done

echo "Congrats ! You got it."
