# fix-json-spaces.ps1 - JSON файлдарындағы бос орындарды жою (Windows 10/PowerShell)

Write-Host "🔧 JSON файлдарын түзеу басталды..." -ForegroundColor Cyan

$jsonFiles = Get-ChildItem -Path ".\data" -Filter "*.json" -Recurse

$fixedCount = 0
$errorCount = 0

foreach ($file in $jsonFiles) {
    try {
        Write-Host "Өңдеу: $($file.Name)" -ForegroundColor Yellow
        
        $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
        
        # Кілттердегі бос орындарды жою: "key " → "key"
        $content = $content -replace '" ": "', '": "'
        $content = $content -replace '"id ":', '"id":'
        $content = $content -replace '"title ":', '"title":'
        $content = $content -replace '"description ":', '"description":'
        $content = $content -replace '"theory ":', '"theory":'
        $content = $content -replace '"section ":', '"section":'
        $content = $content -replace '"category ":', '"category":'
        $content = $content -replace '"type ":', '"type":'
        $content = $content -replace '"path ":', '"path":'
        $content = $content -replace '"kk ":', '"kk":'
        $content = $content -replace '"ru ":', '"ru":'
        $content = $content -replace '"en ":', '"en":'
        $content = $content -replace '"status ":', '"status":'
        $content = $content -replace '"source ":', '"source":'
        $content = $content -replace '"links ":', '"links":'
        $content = $content -replace '"resources ":', '"resources":'
        $content = $content -replace '"notes ":', '"notes":'
        $content = $content -replace '"history ":', '"history":'
        $content = $content -replace '"principle ":', '"principle":'
        $content = $content -replace '"security ":', '"security":'
        $content = $content -replace '"applications ":', '"applications":'
        $content = $content -replace '"formulas ":', '"formulas":'
        $content = $content -replace '"labs ":', '"labs":'
        $content = $content -replace '"mode ":', '"mode":'
        $content = $content -replace '"cipher_id ":', '"cipher_id":'
        $content = $content -replace '"encrypt_path ":', '"encrypt_path":'
        $content = $content -replace '"decrypt_path ":', '"decrypt_path":'
        $content = $content -replace '"analysis_path ":', '"analysis_path":'
        $content = $content -replace '"draft ":', '"draft":'
        $content = $content -replace '"interactive ":', '"interactive":'
        $content = $content -replace '"features ":', '"features":'
        $content = $content -replace '"related ":', '"related":'
        $content = $content -replace '"lab ":', '"lab":'
        $content = $content -replace '"tools ":', '"tools":'
        $content = $content -replace '"meta ":', '"meta":'
        $content = $content -replace '"alphabet ":', '"alphabet":'
        $content = $content -replace '"example ":', '"example":'
        $content = $content -replace '"steps ":', '"steps":'
        $content = $content -replace '"ciphertext ":', '"ciphertext":'
        $content = $content -replace '"plaintext ":', '"plaintext":'
        $content = $content -replace '"key ":', '"key":'
        $content = $content -replace '"verification ":', '"verification":'
        $content = $content -replace '"cryptanalysis ":', '"cryptanalysis":'
        $content = $content -replace '"difficulty ":', '"difficulty":'
        $content = $content -replace '"key_space ":', '"key_space":'
        $content = $content -replace '"methods ":', '"methods":'
        $content = $content -replace '"frequencies ":', '"frequencies":'
        $content = $content -replace '"ic ":', '"ic":'
        $content = $content -replace '"textLength ":', '"textLength":'
        $content = $content -replace '"letterCount ":', '"letterCount":'
        $content = $content -replace '"size ":', '"size":'
        $content = $content -replace '"letters ":', '"letters":'
        $content = $content -replace '"matrix_size ":', '"matrix_size":'
        $content = $content -replace '"rows ":', '"rows":'
        $content = $content -replace '"cols ":', '"cols":'
        $content = $content -replace '"rounds ":', '"rounds":'
        $content = $content -replace '"block ":', '"block":'
        $content = $content -replace '"structure ":', '"structure":'
        $content = $content -replace '"basis ":', '"basis":'
        $content = $content -replace '"objectives ":', '"objectives":'
        $content = $content -replace '"tasks ":', '"tasks":'
        $content = $content -replace '"assessment ":', '"assessment":'
        $content = $content -replace '"objective ":', '"objective":'
        $content = $content -replace '"step ":', '"step":'
        $content = $content -replace '"value ":', '"value":'
        $content = $content -replace '"label ":', '"label":'
        $content = $content -replace '"route ":', '"route":'
        $content = $content -replace '"onClick ":', '"onClick":'
        $content = $content -replace '"badges ":', '"badges":'
        $content = $content -replace '"content ":', '"content":'
        $content = $content -replace '"import_target ":', '"import_target":'
        $content = $content -replace '"import_notes ":', '"import_notes":'
        $content = $content -replace '"preview_path ":', '"preview_path":'
        $content = $content -replace '"target_material ":', '"target_material":'
        $content = $content -replace '"draft_path ":', '"draft_path":'
        $content = $content -replace '"legacy_path ":', '"legacy_path":'
        $content = $content -replace '"guide_pdf ":', '"guide_pdf":'
        $content = $content -replace '"related_cipher ":', '"related_cipher":'
        $content = $content -replace '"related_ciphers ":', '"related_ciphers":'
        $content = $content -replace '"cipher ":', '"cipher":'
        $content = $content -replace '"rotors ":', '"rotors":'
        $content = $content -replace '"plugboardDescription ":', '"plugboardDescription":'
        $content = $content -replace '"matrix ":', '"matrix":'
        $content = $content -replace '"passport ":', '"passport":'
        $content = $content -replace '"encryption ":', '"encryption":'
        $content = $content -replace '"decryption ":', '"decryption":'
        $content = $content -replace '"parameters ":', '"parameters":'
        $content = $content -replace '"note ":', '"note":'
        $content = $content -replace '"kazakh ":', '"kazakh":'
        $content = $content -replace '"russian ":', '"russian":'
        $content = $content -replace '"english ":', '"english":'
        $content = $content -replace '"warnings ":', '"warnings":'
        $content = $content -replace '"summary ":', '"summary":'
        $content = $content -replace '"indexes ":', '"indexes":'
        $content = $content -replace '"materials ":', '"materials":'
        $content = $content -replace '"checks ":', '"checks":'
        $content = $content -replace '"items ":', '"items":'
        $content = $content -replace '"classical_index ":', '"classical_index":'
        $content = $content -replace '"labs_index_clean ":', '"labs_index_clean":'
        $content = $content -replace '"ciphers_modern_sym_clean ":', '"ciphers_modern_sym_clean":'
        $content = $content -replace '"ciphers_modern_asym_clean ":', '"ciphers_modern_asym_clean":'
        $content = $content -replace '"hash_clean ":', '"hash_clean":'
        $content = $content -replace '"protocols_clean ":', '"protocols_clean":'
        $content = $content -replace '"post_quantum_clean ":', '"post_quantum_clean":'
        $content = $content -replace '"drafts ":', '"drafts":'
        $content = $content -replace '"material_audit ":', '"material_audit":'
        $content = $content -replace '"relations_map ":', '"relations_map":'
        $content = $content -replace '"content_map ":', '"content_map":'
        
        # Мәндердегі бос орындарды жою: "value " → "value"
        $content = $content -replace ' ",', '", '
        $content = $content -replace ' "}', '"}'
        $content = $content -replace ' "]', '"]'
        
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8 -NoNewline
        
        $fixedCount++
        Write-Host "  ✓ Түзелді" -ForegroundColor Green
    }
    catch {
        $errorCount++
        Write-Host "  ✗ Қате: $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host "`n✅ JSON файлдары түзелді!" -ForegroundColor Green
Write-Host "Сәтті: $fixedCount, Қате: $errorCount" -ForegroundColor Cyan

# JSON валидация
Write-Host "`n🔍 JSON валидация басталды..." -ForegroundColor Cyan

$validCount = 0
$invalidCount = 0

foreach ($file in $jsonFiles) {
    try {
        $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
        $content | ConvertFrom-Json | Out-Null
        $validCount++
    }
    catch {
        Write-Host "  ✗ $($file.Name) - $($_.Exception.Message)" -ForegroundColor Red
        $invalidCount++
    }
}

Write-Host "`n✅ Валидация аяқталды!" -ForegroundColor Green
Write-Host "Жарамды: $validCount, Жарамсыз: $invalidCount" -ForegroundColor Cyan