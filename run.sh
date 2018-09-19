#!/bin/bash



echo "Running Buster"

buster generate --domain=http://localhost:2368 --dir=.



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



echo "Fixing html tags"

for i in $(find . -name '*.html'); do
	[ -f "$i" ] || break

	echo "File: $i"

	echo '<html amp lang="en">' | cat - "$i" > temp && mv temp "$i"
	echo '<!DOCTYPE html>' | cat - "$i" > temp && mv temp "$i"
	echo '</html>' >> "$i"
done


echo "Finished"
