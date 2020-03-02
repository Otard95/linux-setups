#!/bin/bash

while : ; do
  printf "Enter licence: "
  read lKey
  printf "checking..."
  valid=$(curl -s https://www.onivim.io/api/isLicenseKeyValid?licenseKey=$lKey)
  [[ $valid == "true" ]] && break
  echo "That key seems to be invalid."
done
echo ""

firebaseToken=$(curl -s https://www.onivim.io/auth/licenseKey?licenseKey=$lKey | grep -oP '(?<=token":")(.+)(?=")')

# https://www.googleapis.com/identitytoolkit/v3/relyingparty/verifyCustomToken?key=AIzaSyDxflsfyd2gloxgWJ-GFtPM46tz-TtOXh8
# grep -oP '(?<=idToken":")(.+)(?=")'
urlToken=$(curl -s \
  -H "Accept: application/json" \
  -H "Content-Type:application/json" \
  -d "{\"token\":\"$firebaseToken\",\"returnSecureToken\":true}" \
  https://www.googleapis.com/identitytoolkit/v3/relyingparty/verifyCustomToken?key=AIzaSyDxflsfyd2gloxgWJ-GFtPM46tz-TtOXh8 | grep -oP '(?<=idToken": ")(.+)(?=")')

# https://v2.onivim.io/downloads/Onivim2-x86_64.AppImage?channel=nightly&token=

sudo mkdir -p /opt/Onivim2
sudo curl https://v2.onivim.io/downloads/Onivim2-x86_64.AppImage?channel=nightly&token=$urlToken --output /opt/Onivim2/Onivim2.AppImage
sudo ln -s -T /opt/Onivim2/Onivim2.AppImage /usr/local/bin/oni2

echo "Done!"

