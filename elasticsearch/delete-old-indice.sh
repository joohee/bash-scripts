#!/bin/bash
#set -x

 
# delete indices with date pattern. 
EXPIRE_DATE=7
ES_ADDR=http://HOST:PORT
# https://www.elastic.co/guide/en/elasticsearch/reference/current/date-math-index-names.html
# The special characters used for date rounding must be URI encoded.
# %3C -> '<', %3E -> '>'
# %7B -> '{', %2F -> '/', %7D -> '}'
# ex. _cat/indices/{filebeat-*-{now/d-7d}{YYYY.MM.DD}}
INDEX_PATTERN=_cat/indices/%3Cfilebeat-*-%7Bnow%2Fd-${EXPIRE_DATE}d%7BYYYY.MM.dd%7D%7D%3E

result=$(curl -XGET $ES_ADDR/$INDEX_PATTERN?h=index)

arr=($result)
for idx in "${arr[@]}"
do
        echo $idx
        curl -XDELETE $ES_ADDR/$idx
        echo ""
        sleep 2
done
echo "done"
