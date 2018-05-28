echo "/bin/pandoc -o VisualStudioTipps.epub build/title.txt \ " >> ebookbuilder.sh
for doc in `find . -name "*.md" | sed "s|^\./||"`
do

  echo " $doc \ "  >> ebookbuilder.sh
done
echo " --epub-cover-image coverimage.png --number-sections" >> ebookbuilder.sh

echo created file:
echo $(cat ebookbuilder.sh)