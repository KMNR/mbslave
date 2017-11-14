#!/usr/bin/env bash

MB_LATEST=$(wget -O - http://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/LATEST 2>/dev/null)
URL=http://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/${MB_LATEST}/

echo 'Download Musicbrainz datasets from ${MB_LATEST}'
mkdir --parents data
pushd data
wget --mirror --no-directories --no-parent --reject html ${URL} 
popd

