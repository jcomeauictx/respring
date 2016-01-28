DRYRUN ?= --dry-run
IDEVICE ?= wanderer
export
install:
	rsync -avuz $(DRYRUN) \
	 Info.plist icon.png $(IDEVICE):/Applications/Respring.app/
	rsync -avuz $(DRYRUN) \
	 respring $(IDEVICE):/usr/bin/
