#!/usr/bin/env sh

REMOTE_HOST="ath-cloud"
REMOTE_DIR="~/sites/heiss.website/public_html"
REMOTE_DEST=$REMOTE_HOST:$REMOTE_DIR

echo "Uploading new changes to remote server..."
echo
rsync -czrvP --delete _site/ $REMOTE_DEST

if [ $? -eq 0 ]; then
  echo
  echo "... done!"
  echo
  echo "The site is live at https://heiss.website/"
else
  echo
  echo "Error!"
  exit 1
fi
