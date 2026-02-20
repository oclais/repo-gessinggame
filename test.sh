# File: gessinggame.sh
count=$(ls -p | wc -w)
#echo "Nb fichiers : $count"
response=-1
function analyze_response {
        if [[ $response -eq $count ]]
        then
                echo "Bravo!!!!"
        else
                echo "Try again"
                if [[ $response -gt $count ]]
                then
                        echo "Too high"
                else
                        echo "Too low"
                fi
        fi
}

while [[ $response -ne $count ]]
do
	#echo "count is equal to $count"
	#echo "response is equal to $response"
        echo "Type the number of files in the current directory, then press Enter:"
        read response
        echo "You entered: $response"
	analyze_response
done
