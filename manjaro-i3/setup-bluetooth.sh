#!/bin/bash

if [ ! -f ./.rerun ]; then
	echo "install"
else if [ ! grep -q btretry "./.rerun" ]; then
	echo "install"
fi

exit 0

sudo systemctl start bluetooth

if [ $? -eq 5 ]; then

	sudo systemctl daemon-reload
	sudo systemctl start bluetooth

	if [ $? -eq 5 ]; then

		echo "A restart may be required for bluetooth to properly setup."
		echo "	After the you restart the system you can try to run the './setup-bluetooth.sh' script"

		echo "btretry" >> ./rerun
		exit 0

	fi

fi

sudo systemctl enable bluetooth

