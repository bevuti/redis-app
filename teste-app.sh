#bin/bash
RESULT="'wget -qO- http://localhost:8090'"
wget -q localhost:8090
if [ $? -eq 0 ]
then
    echo 'OK - serviço no ar!'
elif [[ $RESULT == *"Number"* ]]
then
    echo 'OK - number of visits!'
    echo $RESULT
else
    echo "NOT OK - number of visits!"
    exit 1
fi
