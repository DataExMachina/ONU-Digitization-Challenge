setup:
	bash ./scripts/setup.sh
	bash ./scripts/mkdir.sh

extract_train_fr:
	bash ./scripts/ocr.sh ./data/train/fr/ ./data/text/train/fr/

extract_train_en:
	bash ./scripts/ocr.sh ./data/train/en/ ./data/text/train/en/

extract_test:
	bash ./scripts/ocr.sh ./data/test/ ./data/text/test/
