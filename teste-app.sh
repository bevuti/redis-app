#bin/bash
#teste-app.sh
RESULT="'wget -qO- http://localhost:8090'"
wget -q localhost:8090
if [ $? -eq 0 ]
then
    echo 'OK - serviço no ar!'
elif[[$RESULT == *"Number"*]]
then
    echo 'OK - serviço no ar!'
    echo $RESULT
else
    echo "NAO DEU"
    exit 1
