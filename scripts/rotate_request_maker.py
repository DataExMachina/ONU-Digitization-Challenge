#!/usr/bin/env python

import os

# init paths
pathsTrainEn = ['./data/img/train/en/'+f for f in os.listdir('./data/img/train/en/')]
pathsTrainFr = ['./data/img/train/fr/'+f for f in os.listdir('./data/img/train/fr/')]
pathsTest = ['./data/img/test/'+f for f in os.listdir('./data/img/test/')]


# rotate metadata reader
def rotate(file):
    
    doc = file.split('/')[-1].replace('.jpg', '')
    with open('./data/meta_tesseract/'+doc+'.osd') as meta:
        text = meta.read()
    rotate = text.split('\n')[2].replace('Rotate: ', '')
    print(doc, rotate)
    
    if rotate == '90':
        with open('./scripts/rotate_requests.txt', 'a') as f:
            f.write('convert -rotate %s %s\n' % (rotate, file))
    return(rotate)

# extract requests
for p in pathsTrainEn:
    try:
        rotate(p)
    except:
        continue
        
for p in pathsTrainFr:
    try:
        rotate(p)
    except:
        continue
        
for p in pathsTest:
    try:
        rotate(p)
    except:
        continue






