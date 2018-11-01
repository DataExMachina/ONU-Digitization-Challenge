# A script to clean images containing words

##### Parameters

FROM_PATH="$1"
TO_PATH="$2"

##### List of files

LIST_FILES=$(ls $FROM_PATH)

##### Extract words from files

for doc in $LIST_FILES; do
 
  # convert to 300 dpi 
  TMP_PATH=$FROM_PATH$doc
  convert -units PixelsPerInch $TMP_PATH -density 300 $TO_PATH$doc
  
  # clean image
  # sh ./scripts/textcleaner -g -e none -u -T -f -o $TO_PATH$doc $TO_PATH$doc

done



