#!/bin/bash

set -e

DATE=$(date +"%b %d")
OUTPUT="releases/Ajay Dhungel - ${DATE} Resume (Two-Page).pdf"

/Library/TeX/texbin/xelatex resume.tex

cp resume.pdf "${OUTPUT}"

rm -f resume.aux resume.log resume.out

echo "Done: ${OUTPUT}"
