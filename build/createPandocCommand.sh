echo -n "bin/pandoc -o VisualStudioTipps.epub ../build/title.txt " >> ../build/ebookbuilder.sh
for doc in `find . -name "*.md" | sort -g  | sed "s|^\./||"`
do

  echo -n " $doc "  >> ../build/ebookbuilder.sh
done
echo -n " --epub-cover-image coverimage.png --number-sections" >> ../build/ebookbuilder.sh

echo created file to build ebook:
echo $(cat ../build/ebookbuilder.sh)