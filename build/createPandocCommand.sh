echo "/bin/pandoc -o guide.epub title.txt \ " >> ebookbuilder.sh
for d in 'find ../content -type d'
do
  echo $d/tipp.md \ >> ebookbuilder.sh
done
echo --epub-cover-image ../content/coverimage.jpg --number-sections >> ebookbuilder.sh