echo ... install pandoc ...
mypan="https://github.com/jgm/pandoc/releases/download/2.0.6/pandoc-2.0.6-linux.tar.gz"
echo "Start download"
wget $mypan -O "pandoc.tar.gz"
echo "Download done"
tar xvzf pandoc.tar.gz --strip-components 1


