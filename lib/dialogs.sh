simpleTitle() {
	message=$2
	title=$3
	stat=$1

	if [ "$stat" = "info" ]; then
		dialog --title "$message" --msgbox "$title" 7 50
	else
		colorizeLog "err" "Syntax error: Missing dialog status"
		exit 1
	fi
}

simpleOptions() {
	title=$1
	message=$2
	options=$3
	if [ "$DEBUG" = true ]; then
		options+=" 0 Skip"
		colorizeLog "dbg" "Title: $title"
		colorizeLog "dbg" "Message: $message"
		colorizeLog "dbg" "Options: $options"
	fi
	dialog --backtitle "$title" --menu "$message" 15 40 4 $options
}
