# A script to extract words in english and french from .png

##### Parameters

FROM_PATH="$1"
TO_PATH="$2"

##### List of files

LIST_FILES=$(ls $FROM_PATH)

##### Extract words from files

for doc in $LIST_FILES; do
  TMP_PATH=$FROM_PATH$doc
  TMP_NAME=${doc%.jpg}
  TMP_TOPATH=$
  # tesseract $TMP_PATH $TO_PATH$TMP_NAME //  basic use
  tesseract $TMP_PATH $TO_PATH$TMP_NAME --psm 0 --dpi 300
done
