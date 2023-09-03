# Convert all markdown files in docs/ to docx files
md_files=(*.md)
for file in "${md_files[@]}"; do
  filename="${file##*/}"
  filename="${filename%.*}"
  rm -rf filename.*
  pandoc -s -o "printable/$filename.docx" "$file"
done
