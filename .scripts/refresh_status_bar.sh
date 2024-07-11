!/bin/sh

# counter for triggering on different timestamps
let loop=0

# looping forever
while true; do
	# restart loop after one hour
	if [[ $loop%60 -eq 0 ]]; then
		let loop=0
	fi

	# set weather every 15 minutes
	if [[ $loop%15 -eq 0 || -z "$weather" ]]; then
		weather="$(curl 'https://wttr.in/Lousada?format=1')"
	fi

	# set updated status bar
	xsetroot -name " $weather | $(date '+%b %d %a') | $(date '+%H:%M') "

	# increment counter
	let loop=$loop+1
	# wait for one minute
	sleep 60
done

