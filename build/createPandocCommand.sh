echo "bin/pandoc -o guide.epub title.txt \" >> ebookbuilder.sh
for d in `find . -type d`
do
  echo $d/tipp.md \ >> ebookbuilder.sh
done
echo --epub-cover-image coverimage.jpg --number-sections >> ebookbuilder.sh