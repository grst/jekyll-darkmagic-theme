build: styles
	jekyll build

serve: styles
	jekyll serve

clean:
	rm -fv bootswatch/yeti/bootstrap*.css
	rm -rfv _site

styles: assets/styles.min.css

assets/styles.min.css: bootswatch/yeti/bootstrap.min.css
	cp bootswatch/yeti/bootstrap.min.css styles.min.css

bootswatch/yeti/bootstrap.min.css: $(wildcard bootswatch/yeti/*.less)
	cd bootswatch && grunt swatch:yeti --force

