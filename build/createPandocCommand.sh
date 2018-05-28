echo "/bin/pandoc -o VisualStudioTipps.epub title.txt \ " >> ebookbuilder.sh
for doc in `find ../content -name *.md`
do
  echo $doc \ >> ebookbuilder.sh
done
echo --epub-cover-image ../content/coverimage.png --number-sections >> ebookbuilder.sh

echo created file:
echo $(cat ebookbuilder.sh)