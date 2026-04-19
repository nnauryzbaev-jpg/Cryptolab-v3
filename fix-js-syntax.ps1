# fix-js-syntax.ps1 - JavaScript синтаксисін түзету (Windows 10)
# Бұл файлды CryptoLab папкасына сақтаңыз

Write-Host "🔧 JavaScript синтаксисін түзеу басталды..." -ForegroundColor Cyan

$jsFiles = Get-ChildItem -Path ".\assets\js" -Filter "*.js" -Recurse

$fixedCount = 0
$errorCount = 0

foreach ($file in $jsFiles) {
    try {
        Write-Host "Өңдеу: $($file.Name)" -ForegroundColor Yellow
        
        $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
        
        # = > → =>
        $content = $content -replace '= >', '=>'
        
        # & & → &&
        $content = $content -replace '& &', '&&'
        
        # removeAttrib ute → removeAttribute
        $content = $content -replace 'removeAttrib ute', 'removeAttribute'
        
        # getCurrentPat h → getCurrentPath
        $content = $content -replace 'getCurrentPat h', 'getCurrentPath'
        
        # modularI nverse → modularInverse
        $content = $content -replace 'modularI nverse', 'modularInverse'
        
        # vari ant → variant
        $content = $content -replace 'vari ant', 'variant'
        
        # labe l → label
        $content = $content -replace 'labe l', 'label'
        
        # placeh older → placeholder
        $content = $content -replace 'placeh older', 'placeholder'
        
        # t abIndex → tabIndex
        $content = $content -replace 't abIndex', 'tabIndex'
        
        # fi lter → filter
        $content = $content -replace 'fi lter', 'filter'
        
        # ret urn → return
        $content = $content -replace 'ret urn', 'return'
        
        # funct ion → function
        $content = $content -replace 'funct ion', 'function'
        
        # el se → else
        $content = $content -replace 'el se', 'else'
        
        # wh ile → while
        $content = $content -replace 'wh ile', 'while'
        
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8 -NoNewline
        
        $fixedCount++
        Write-Host "  ✓ Түзелді" -ForegroundColor Green
    }
    catch {
        $errorCount++
        Write-Host "  ✗ Қате: $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host "`n✅ JavaScript синтаксисі түзелді!" -ForegroundColor Green
Write-Host "Сәтті: $fixedCount, Қате: $errorCount" -ForegroundColor Cyan