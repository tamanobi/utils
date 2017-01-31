#!/bin/sh
## t2si.sh: generate image for Slack icon from text
## Copyright (C) 2017 Kohki Yamagiwa <https://GitHub.com/tamanobi>
## License: Apache2
## Depends on: ImageMagick
##

if [ $# -ne 2 ]; then
  echo "usage: $0 <text> <output_image_path>"
  exit 1
fi

INPUT_TEXT=$1
OUTPUT_PATH=$2

convert -font /System/Library/Fonts/Hiragino\ Sans\ GB\ W6.ttc \
 -pointsize 128 \
 caption:"${INPUT_TEXT}"\
 -trim -transparent white \
 -resize "128x128" ${OUTPUT_PATH}
