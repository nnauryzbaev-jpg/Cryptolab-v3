#!/bin/bash
echo "🔧 JavaScript синтаксисін түзеу басталды..."

# Барлық JS файлдарын түзеу
find assets/js -name "*.js" -type f | while read file; do
    echo "Өңдеу: $file"
    # = > → =>
    sed -i 's/= >/=>/g' "$file"
    # & & → &&
    sed -i 's/& &/\&\&/g' "$file"
    # removeAttrib ute → removeAttribute
    sed -i 's/removeAttrib ute/removeAttribute/g' "$file"
    # getCurrentPat h → getCurrentPath
    sed -i 's/getCurrentPat h/getCurrentPath/g' "$file"
    # modularI nverse → modularInverse
    sed -i 's/modularI nverse/modularInverse/g' "$file"
    # vari ant → variant
    sed -i 's/vari ant/variant/g' "$file"
    # labe l → label
    sed -i 's/labe l/label/g' "$file"
    # placeh older → placeholder
    sed -i 's/placeh older/placeholder/g' "$file"
    # t abIndex → tabIndex
    sed -i 's/t abIndex/tabIndex/g' "$file"
    # fi lter → filter
    sed -i 's/fi lter/filter/g' "$file"
    # ret urn → return
    sed -i 's/ret urn/return/g' "$file"
    # funct ion → function
    sed -i 's/funct ion/function/g' "$file"
    # el se → else
    sed -i 's/el se/else/g' "$file"
    # wh ile → while
    sed -i 's/wh ile/while/g' "$file"
done

echo "✅ JavaScript синтаксисі түзелді"