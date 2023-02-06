#!/bin/bash
GITHUB_USERNAME=realsnick
TMP=/tmp/existing_cron
crontab -l > $TMP
echo "*/10 * * * * /usr/bin/wget https://github.com/$GITHUB_USERNAME.keys -O ~/.ssh/authorized_keys" >> $TMP
crontab $TMP
rm $TMP
