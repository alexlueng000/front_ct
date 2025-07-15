#!/bin/bash

# 设置目标质量
QUALITY=30

# 遍历所有 jpg 和 png 文件（不区分大小写）
find images/ -type f \( -iname "*.jpg" -o -iname "*.png" \) | while read -r file; do
  # 构建 webp 输出路径
  output="${file%.*}.webp"
  
  # 执行转换
  cwebp -q "$QUALITY" "$file" -o "$output"
  
  echo "Converted: $file -> $output"
done