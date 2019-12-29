pdf:
	for i in *-*.html; do /home/george/src/decktape-master/plugins/remark.js $i, "$(basename "$i" .html).pdf"; done 


