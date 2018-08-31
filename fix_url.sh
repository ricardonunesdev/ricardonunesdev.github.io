#!/bin/bash

echo "Fixing URLs"

find . -name '*.html' -type f -exec sed -i 's#http://localhost:2368#https://ricardonunesdev.com#g' {} \;
find . -name '*.rss' -type f -exec sed -i 's#http://localhost:2368#https://ricardonunesdev.com#g' {} \;
find . -name '*.xml' -type f -exec sed -i 's#http://localhost:2368#https://ricardonunesdev.com#g' {} \;
find . -name '*.xsl' -type f -exec sed -i 's#http://localhost:2368#https://ricardonunesdev.com#g' {} \;
find . -name '*.txt' -type f -exec sed -i 's#http://localhost:2368#https://ricardonunesdev.com#g' {} \;

find . -name '*.html' -type f -exec sed -i 's#//localhost:2368#//ricardonunesdev.com#g' {} \;
find . -name '*.rss' -type f -exec sed -i 's#//localhost:2368#//ricardonunesdev.com#g' {} \;
find . -name '*.xml' -type f -exec sed -i 's#//localhost:2368#//ricardonunesdev.com#g' {} \;
find . -name '*.xsl' -type f -exec sed -i 's#//localhost:2368#//ricardonunesdev.com#g' {} \;
find . -name '*.txt' -type f -exec sed -i 's#//localhost:2368#//ricardonunesdev.com#g' {} \;

grep -R 'localhost:2368' .

echo "Finished"
