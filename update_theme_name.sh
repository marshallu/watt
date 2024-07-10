#! /bin/bash

THEME_NAME=$1
if [[ $# -eq 0 ]] ; then
	echo 'A new theme name is required. Call like this:'
	echo './rename-theme.sh my_new_theme_name'
	echo 'replacing my_new_theme_name with the name you want to use.'
	exit 0
fi
mv ./source/css/watt.scss ./source/css/$THEME_NAME.css

find . -type f \
	-not -path "*png" \
	-not -path "*jpg" \
	-not -path "*jpeg" \
	-not -path "*webp" \
	-not -path "*update_theme_name.sh*" \
	-not -path "*node_modules*" \
	-not -path "*dist*" \
	-not -path "*.git*" \
	-not -path "*.idea*" \
	-not -path "*.vscode*" \
	-not -path "*.vendor*" \
	-not -path "*acf-json*" \
	| xargs sed -i '' -e "s/watt/$THEME_NAME/g"
