# 🚀 Guia de Deploy no Hostgator

## 📋 Pré-requisitos

1. **Plano Hostgator** com suporte a Node.js
2. **Acesso SSH** ou **File Manager** no cPanel
3. **Node.js habilitado** no seu plano

## 🔧 Passos para Deploy

### 1. Preparar a Aplicação

```bash
# No seu computador local
npm run build
```

### 2. Upload dos Arquivos

Faça upload dos seguintes arquivos para a pasta `public_html`:

```
📁 public_html/
├── 📄 server.js (do backend/)
├── 📄 package.json (do backend/)
├── 📁 node_modules/ (do backend/)
├── 📁 dist/ (do frontend/dist/)
├── 📄 .htaccess
└── 📄 .env (criar com PORT=3000)
```

### 3. Configurar Node.js no cPanel

1. Acesse o **cPanel**
2. Vá em **Node.js Selector**
3. Selecione a versão do Node.js (recomendado: 18.x ou superior)
4. Configure:
   - **Application Root**: `public_html`
   - **Application URL**: `seu-dominio.com`
   - **Application Startup File**: `server.js`

### 4. Instalar Dependências

No terminal SSH ou Node.js Selector:

```bash
cd public_html
npm install express cors dotenv
```

### 5. Configurar Variáveis de Ambiente

Crie o arquivo `.env` na pasta `public_html`:

```env
PORT=3000
NODE_ENV=production
```

### 6. Iniciar a Aplicação

No Node.js Selector:

- Clique em **Start App**
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

### Erro: "Permission denied"

```bash
# Dar permissões corretas
chmod 755 server.js
chmod -R 755 dist/
```

### Aplicação não carrega

1. Verifique se o Node.js está rodando
2. Confirme se o arquivo `.htaccess` está presente
3. Verifique os logs no cPanel

## 📱 Teste de Responsividade

Teste em diferentes dispositivos:

- **Desktop**: Layout completo com grid
- **Tablet**: Layout adaptado
- **Mobile**: Layout em coluna única

## 🎨 Personalização

### Alterar Cores

Edite o arquivo `dist/assets/index-[hash].css` ou recompile:

```bash
# Fazer alterações em frontend/src/App.css
npm run build
# Upload da nova pasta dist/
```

### Adicionar Funcionalidades

1. Modifique `server.js` para novas rotas da API
2. Atualize `frontend/src/App.jsx` para o frontend
3. Execute `npm run build`
4. Faça upload dos arquivos atualizados

## 📞 Suporte

Se encontrar problemas:

1. **Verifique os logs** no cPanel Node.js Selector
2. **Teste localmente** antes do deploy
3. **Confirme as permissões** dos arquivos
4. **Entre em contato** com o suporte Hostgator se necessário

---

✅ **Sua aplicação React + Node.js está pronta para o Hostgator!**
