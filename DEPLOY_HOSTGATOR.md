# 🚀 Deploy no Hostgator - Guia Completo

## 📋 Pré-requisitos
- ✅ Conta Hostgator com suporte a Node.js
- ✅ Acesso ao cPanel
- ✅ Repositório GitHub configurado

## 🔧 Passo a Passo

### 1. Acessar o cPanel
1. Faça login no cPanel do Hostgator
2. Procure por **"Node.js Selector"** ou **"Git Version Control"**

### 2. Configurar Node.js
1. **Node.js Selector:**
   - Selecione a versão do Node.js (recomendado: 18.x ou superior)
   - **Application Root:** `public_html`
   - **Application URL:** `seu-dominio.com`
   - **Application Startup File:** `server.js`

### 3. Deploy via Git
1. **Git Version Control:**
   - **Repository URL:** `https://github.com/Ey-luccas/lualabs.git`
   - **Branch:** `main`
   - **Deploy Path:** `public_html`

### 4. Configurar Variáveis de Ambiente
Crie um arquivo `.env` na pasta `public_html`:
```env
PORT=3000
NODE_ENV=production
```

### 5. Instalar Dependências
No terminal SSH ou Node.js Selector:
```bash
cd public_html
npm install
cd frontend
npm install
npm run build
cd ../backend
npm install --production
```

### 6. Iniciar a Aplicação
No Node.js Selector:
- Clique em **"Start App"**
- Verifique se está rodando na porta 3000

## 🌐 Verificação
1. Acesse seu domínio
2. A aplicação deve carregar automaticamente
3. Teste as rotas:
   - `seu-dominio.com/api/health`
   - `seu-dominio.com/api/users`

## 🔧 Solução de Problemas

### Erro: "Cannot find module"
```bash
# Reinstalar dependências
rm -rf node_modules package-lock.json
npm install
```

### Erro: "Port already in use"
- Verifique se não há outra aplicação rodando na porta 3000
- Pare outras aplicações Node.js no cPanel

### Aplicação não carrega
1. Verifique se o Node.js está rodando
2. Confirme se o arquivo `.htaccess` está presente
3. Verifique os logs no cPanel

## 📱 Teste de Responsividade
Teste em diferentes dispositivos:
- **Desktop:** Layout completo com grid
- **Tablet:** Layout adaptado
- **Mobile:** Layout em coluna única

## 🎨 Personalização
### Alterar Cores
Edite o arquivo `frontend/src/App.css` e recompile:
```bash
cd frontend
npm run build
```

### Adicionar Funcionalidades
1. Modifique `backend/server.js` para novas rotas da API
2. Atualize `frontend/src/App.jsx` para o frontend
3. Execute `npm run build`
4. Faça commit e push das alterações

---

✅ **Sua aplicação React + Node.js está pronta para o Hostgator!**
