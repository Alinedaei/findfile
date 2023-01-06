#!/bin/bash

echo "Downloading Arvancloud IPs list..."
rm -rf ip.txt
curl https://www.arvancloud.ir/fa/ips.txt  >> ip.txt


for  IPLIST in `cat ip.txt`

do
#  echo $IPLIST

DB_USER='root';
DB_PASSWD='';

DB_NAME='iplist';
TABLE='iplist';

#Collect Rank Information from flightaware.com
date=$(date +"%H:%M:%S")

status=up
mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME << EOF
INSERT INTO $TABLE (\`id\`, \`IPLIST\`, \`status\`, \`DATE\`) VALUES ( NULL, "$IPLIST", "$status", "$date");
EOF
done