#!/bin/bash
SEARCH=""
ID=""
TOKEN=""
ROTTEN=""
URL=""
for i in "$@"
do
case $i in
    -s=*|--search=*)
    SEARCH="${i#*=}"
    ;;
    -i=*|--id=*)
    ID="${i#*=}"
    ;;		
    -t=*|--token=*)
    TOKEN="${i#*=}"
    ;;
    -r=*|--rotten=*)
    ROTTEN="${i#*=}"
    ;;
    *)
            # unknown option
    ;;
esac
done
if [ -n "$SEARCH" ]; then
    if [ -n "$TOKEN" ]; then
        URL="http://www.omdbapi.com/?s=$SEARCH&apikey=$TOKEN"
        curl -s $URL | python -m json.tool
    else 
        echo "Token is mandatory"
    fi
else
    if [ -n "$TOKEN" ]; then
        URL="http://www.omdbapi.com/?i=$ID&tomatoes=$ROTTEN&apikey=$TOKEN"
        curl -s $URL | python -m json.tool
    else 
        echo "Token is mandatory"
    fi
fi
