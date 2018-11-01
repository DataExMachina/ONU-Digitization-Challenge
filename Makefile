setup:
	bash ./scripts/setup.sh
	bash ./scripts/mkdir.sh

cp_300dpi:
	bash ./scripts/cp_300dpi.sh ${FROM} ${TO} 	

ocr_metadata:
	bash ./scripts/metadata.sh ./data/img/train/en/ ./data/meta_tesseract/ & bash ./scripts/metadata.sh ./data/img/train/fr/ ./data/meta_tesseract/ & bash ./scripts/metadata.sh ./data/img/test/ ./data/meta_tesseract/


extract_train_fr:
	bash ./scripts/ocr.sh ./data/img/train/fr/ ./data/text/train/fr/

extract_train_en:
	bash ./scripts/ocr.sh ./data/img/train/en/ ./data/text/train/en/

extract_test:
	bash ./scripts/ocr.sh ./data/img/test/ ./data/text/test/
