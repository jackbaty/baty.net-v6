SERVER_HOST=v6.baty.net
SERVER_DIR=/home/jbaty/apps/v6.baty.net/public_html
PUBLIC_DIR=/Users/jbaty/baty.net-v6/public/
TARGET=DigitalOcean


deploy: build
	@echo "\033[0;32mDeploying updates to $(TARGET)...\033[0m"
	rsync -v -rz --checksum --delete --no-perms $(PUBLIC_DIR) $(SERVER_HOST):$(SERVER_DIR)

build:
	hugo


commit:
	@echo "\033[0;32mAdding changes\033[0m"
	git add -A
	git commit -m "Build site `date`"

push: commit
	@echo "\033[0;32mPushing repo\033[0m"
	git push origin main


.FORCE:
