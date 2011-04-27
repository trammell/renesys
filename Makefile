usage:
	@echo "usage: make [clean|install]"

clean:
	rm -f md.txt

# The proper text starts on Line 30 and goes to Line 21746 (inclusive)
md.txt: moby-dick.zip
	unzip -p moby-dick.zip 2701.txt | perl -nle 'print if $$. >= 30 and $$. <= 21746' > md.txt

report report.txt: ishmael.pl md.txt
	perl ishmael.pl md.txt > report.txt
