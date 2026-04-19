const fs = require('fs');
const path = require('path');

console.log('🚀 CryptoLab жобасын орнату басталды...');

// Негізгі папкалар
const dirs = [
    'backend/security', 'backend/services', 'backend/routes',
    'data', 'materials/classical', 'materials/modern/symmetric', 
    'materials/modern/asymmetric', 'materials/hash', 'materials/protocols', 
    'materials/post-quantum', 'materials/labs', 'materials/tools',
    'assets/css/themes', 'assets/js', 'extlabs/lab-works', 'tests'
];

dirs.forEach(dir => {
    if (!fs.existsSync(dir)) fs.mkdirSync(dir, { recursive: true });
});

// 1. package.json
fs.writeFileSync('package.json', JSON.stringify({
  "name": "cryptolab-secure",
  "version": "2.0.0",
  "main": "backend/server.js",
  "scripts": {
    "start": "node backend/server.js",
    "dev": "nodemon backend/server.js",
    "encrypt-db": "node scripts/encrypt-db.js"
  },
  "dependencies": {
    "express": "^4.18.2",
    "cors": "^2.8.5",
    "dotenv": "^16.3.1"
  }
}, null, 2));

// 2. .env.example
fs.writeFileSync('.env.example', 'MASTER_SECRET_KEY=super_secret_key_change_this_in_production_12345678\nPORT=3000\nNODE_ENV=development\n');

// 3. backend/server.js
fs.writeFileSync('backend/server.js', `const express = require('express');
const cors = require('cors');
require('dotenv').config();
const app = express();
app.use(cors());
app.use(express.json());
app.use(express.static(__dirname + '/../'));
console.log('✅ Server ready at http://localhost:' + (process.env.PORT || 3000));
app.listen(process.env.PORT || 3000);`);

// 4. registry.json (Қысқартылған нұсқасы)
fs.writeFileSync('registry.json', JSON.stringify({
  "version": "2.0.0",
  "categories": {
    "classical": { "title": "Классикалық шифрлер", "theme": "classical-theme", "items": ["caesar", "enigma", "hill"] },
    "modern_symmetric": { "title": "Симметриялық шифрлер", "theme": "digital-theme", "items": ["aes", "kuznechik", "magma", "sm4"] },
    "protocols": { "title": "Протоколдар", "theme": "network-theme", "items": ["tls", "ipsec"] }
  }
}, null, 2));

// 5. materials/classical/caesar.json
fs.writeFileSync('materials/classical/caesar.json', JSON.stringify({
  "id": "caesar", "name": "Цезарь шифры", "description": "Ығыстыру арқылы шифрлеу", "type": "substitution"
}, null, 2));

// 6. materials/modern/symmetric/kuznechik.json
fs.writeFileSync('materials/modern/symmetric/kuznechik.json', JSON.stringify({
  "id": "kuznechik", "name": "Кузнечик", "standard": "GOST R 34.12-2015", "blockSize": 128
}, null, 2));

// 7. assets/css/themes/digital-theme.css
fs.writeFileSync('assets/css/themes/digital-theme.css', `body.digital-theme { background: #0d1117; color: #00ff41; font-family: monospace; }`);

// 8. index.html (Негізгі бет)
fs.writeFileSync('index.html', `<!DOCTYPE html>
<html lang="kk">
<head>
    <meta charset="UTF-8">
    <title>CryptoLab Secure</title>
    <link rel="stylesheet" href="assets/css/themes/digital-theme.css">
</head>
<body class="digital-theme">
    <h1>🔐 CryptoLab Жобасы Сәтті Іске Қосылды!</h1>
    <p>Барлық модульдер жүктелді: Классикалық, Симметриялық (Кузнечик, Магма), Протоколдар.</p>
    <div id="app"></div>
    <script>
        fetch('/registry.json').then(r=>r.json()).then(data => {
            document.getElementById('app').innerHTML = '<pre>' + JSON.stringify(data, null, 2) + '</pre>';
        });
    </script>
</body>
</html>`);

console.log('✅ Негізгі файлдар құрылды!');
console.log('⏳ Енді терминлда мына командаларды орындаңыз:');
console.log('   1. npm install');
console.log('   2. npm start');
console.log('   3. Браузерден http://localhost:3000 ашыңыз');