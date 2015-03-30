DEPLOY := ewan@staff.ssh.inf.ed.ac.uk:/public/homepages/ewan/web/
SITE := _site/
JEKYLL := /opt/local/bin/jekyll
RSYNC_OPTS := -v -rz --checksum

all: rsync



$(SITE): 
	$(JEKYLL) build

#bundle exec jekyll

rsync: $(SITE)
	rsync $(RSYNC_OPTS) $(SITE) $(DEPLOY)


#rsync -v -rz --checksum --delete _site/ user@server:/path/
