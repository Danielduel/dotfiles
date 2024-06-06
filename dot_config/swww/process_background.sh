pathToImgIn="$1"
pathToOutFolder="$2"
cacheImg="$(basename $pathToImgIn)"

convert -strip -resize "1500x800" -gravity center -quality 70 "$pathToImgIn"[0] "${pathToOutFolder}/${cacheImg}.rofi"
convert -strip -scale 10% -blur 0x3 -resize 100% "$pathToImgIn"[0] "${pathToOutFolder}/${cacheImg}.blur"

echo "Finish"
