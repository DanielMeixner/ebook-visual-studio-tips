#!/bin/bash

echo ... install pandoc ...

mypan="https://github.com/jgm/pandoc/releases/download/2.0.6/pandoc-2.0.6-linux.tar.gz"
wget $mypan -O "pandoc.tar.gz"
tar xvzf pandoc.tar.gz --strip-components 1

