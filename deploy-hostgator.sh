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

# Copiar arquivos para pasta de deploy específica
DEPLOYPATH=public_html/lualabs.com.br
echo "📁 Copiando arquivos para $DEPLOYPATH..."
mkdir -p "$DEPLOYPATH"
rm -rf "$DEPLOYPATH"/*
cp -r frontend/dist/* "$DEPLOYPATH"/
cp backend/server.js "$DEPLOYPATH"/
cp backend/package.json "$DEPLOYPATH"/
cp backend/package-lock.json "$DEPLOYPATH"/ 2>/dev/null || true
cp .htaccess "$DEPLOYPATH"/

# Instalar dependências na pasta de deploy
echo "🔧 Instalando dependências em $DEPLOYPATH..."
cd "$DEPLOYPATH"
npm install --production
cd ..

echo "✅ Deploy concluído com sucesso!"
echo "🌐 Acesse seu domínio para ver a aplicação"
echo "📊 Teste as rotas: /api/health e /api/users"
