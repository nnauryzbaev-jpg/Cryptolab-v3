#!/bin/bash
echo "🔧 JSON файлдарын түзеу басталды..."

# Барлық JSON файлдарын түзеу
find data -name "*.json" -type f | while read file; do
    echo "Өңдеу: $file"
    
    # Кілттердегі бос орындарды жою: "key " → "key"
    sed -i 's/" ": "/": "/g' "$file"
    sed -i 's/"id ":/"id":/g' "$file"
    sed -i 's/"title ":/"title":/g' "$file"
    sed -i 's/"description ":/"description":/g' "$file"
    sed -i 's/"theory ":/"theory":/g' "$file"
    sed -i 's/"section ":/"section":/g' "$file"
    sed -i 's/"category ":/"category":/g' "$file"
    sed -i 's/"type ":/"type":/g' "$file"
    sed -i 's/"path ":/"path":/g' "$file"
    sed -i 's/"kk ":/"kk":/g' "$file"
    sed -i 's/"ru ":/"ru":/g' "$file"
    sed -i 's/"en ":/"en":/g' "$file"
    
    # Мәндердегі бос орындарды жою: "value " → "value"
    sed -i 's/ ",/",/g' "$file"
    sed -i 's/ "}/}/g' "$file"
    sed -i 's/: "/: "/g' "$file"
    
    # JSON валидация
    python3 -m json.tool "$file" > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "⚠️ Қате: $file"
    fi
done

echo "✅ JSON файлдары түзелді"