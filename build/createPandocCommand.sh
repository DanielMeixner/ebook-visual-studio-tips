echo "/bin/pandoc -o VisualStudioTipps.epub title.txt \ " >> ebookbuilder.sh
for d in `find ../content -type d`
do
  echo $d/tipp.md \ >> ebookbuilder.sh
done
echo --epub-cover-image ../content/coverimage.png --number-sections >> ebookbuilder.sh

echo created file:
echo $(cat ebookbuilder.sh)