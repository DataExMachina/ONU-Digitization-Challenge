This is my solution to the [CrowdAI challenge about lang detection on ONU documents](https://www.crowdai.org/challenges/league-of-nations-archives-digitization-challenge). <br>
Please follow the following instructions. <br>
Data can be found [here](https://owncloud.unog.ch/index.php/s/AHiEdCWr5Y86FsO).

# Initialization

- `git clone https://github.com/DataExMachina/ONU-Digitization-Challenge`
- `cd ONU-Digitization-Challenge`
- `make setup`

# Put images in this project 

- `make cp_300dpi FROM=<path_from> TO=<path_to>`

Example: `make cp_300dpi FROM=/media/data/train/en/ TO=./data/img/train/en/` <br>
It will copy data resizing images before **tesseract** use.

# Get orientation from images
- `make ocr_metadata` (get orientation of an image)

# Rotate
- `make create_rotation_requests` (will create bash instruction to rotate images)
- `make auto_rotate` (will rotate images if needed) 

BE CAREFUL: you should run `auto_rotate` once !

# Extract text
Grab a coffee and watch Netflix, this is long.
- `make extract_train_fr`
- `make extract_train_en`
- `make extract_test`

# Text to score 
- `source crowdai-venv/bin/activate`
- `jupyter notebook`

And then in **./app**, run the two notebooks (in the right order please). The first one convert text extracted into dataframes. The second one will preprocess data with TFIDF [sklearn implementation](http://scikit-learn.org/stable/modules/generated/sklearn.feature_extraction.text.TfidfVectorizer.html), and predict new documents using **Follow The Regularized Leader**, [wordbatch](https://github.com/anttttti/Wordbatch) package.

# Copyrights
- textcleaner: [Fred Weinhaus](http://www.fmwconcepts.com/imagemagick/textcleaner/index.php), and more globally [ImageMagick](https://www.imagemagick.org/script/index.php)

- ImageMagick:

   Copyright [2018]

   Licensed under the ImageMagick License (the "License"); you may not use
   this file except in compliance with the License.  You may obtain a copy
   of the License at

   https://imagemagick.org/script/license.php

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
   WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
   License for the specific language governing permissions and limitations
   under the License.
   
- tesseract: https://github.com/tesseract-ocr/tesseract

# Support 
- Python 3.6
- Tesseract V4
