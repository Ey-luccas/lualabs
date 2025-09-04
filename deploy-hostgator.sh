#!/bin/bash

# Script de Deploy para Hostgator
# Execute este script no servidor Hostgator

echo "🚀 Iniciando deploy no Hostgator..."

# Verificar se estamos na pasta correta
if [ ! -f "package.json" ]; then
    echo "❌ Erro: Execute este script na pasta raiz do projeto"
    exit 1
fi

# Instalar dependências principais
echo "📦 Instalando dependências principais..."
npm install

# Build do frontend
echo "🎨 Fazendo build do frontend..."
cd frontend
npm install
npm run build
cd ..

# Instalar dependências do backend
echo "⚡ Instalando dependências do backend..."
cd backend
npm install --production
cd ..

# Copiar arquivos para public_html
echo "📁 Copiando arquivos para public_html..."
cp -r frontend/dist/* public_html/
cp backend/server.js public_html/
cp backend/package.json public_html/
cp backend/package-lock.json public_html/
cp .htaccess public_html/

# Instalar dependências na pasta public_html
echo "🔧 Instalando dependências em public_html..."
cd public_html
npm install --production
cd ..

echo "✅ Deploy concluído com sucesso!"
echo "🌐 Acesse seu domínio para ver a aplicação"
echo "📊 Teste as rotas: /api/health e /api/users"
