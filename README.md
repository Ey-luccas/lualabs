# 🚀 LuaLabs - Aplicação React + Node.js

Uma aplicação full-stack moderna pronta para hospedagem no Hostgator, desenvolvida com React e Node.js.

## ✨ Funcionalidades

- **Frontend Moderno**: React com Vite para desenvolvimento rápido
- **Backend Robusto**: API REST com Node.js e Express
- **Design Responsivo**: Interface adaptável para todos os dispositivos
- **Hospedagem Ready**: Configurado especificamente para Hostgator
- **Performance Otimizada**: Build otimizado com compressão e cache

## 🛠️ Tecnologias

### Frontend

- React 18
- Vite
- CSS3 com gradientes e animações
- Design responsivo

### Backend

- Node.js
- Express.js
- CORS habilitado
- Servir arquivos estáticos

## 🚀 Como executar

### Desenvolvimento

1. **Instalar dependências:**

```bash
npm run install:all
```

2. **Executar em modo desenvolvimento:**

```bash
npm run dev
```

Isso irá iniciar:

- Backend na porta 3000
- Frontend na porta 5173 (com proxy para API)

### Produção

1. **Fazer build do frontend:**

```bash
npm run build
```

2. **Iniciar servidor:**

```bash
npm start
```

## 📁 Estrutura do Projeto

```
lualabs/
├── frontend/          # Aplicação React
│   ├── src/
│   │   ├── App.jsx    # Componente principal
│   │   └── App.css    # Estilos modernos
│   ├── dist/          # Build de produção
│   └── package.json
├── backend/           # Servidor Node.js
│   ├── server.js      # Servidor Express
│   └── package.json
├── .htaccess         # Configuração Hostgator
└── package.json      # Scripts principais
```

## 🌐 Deploy no Hostgator

### Passos para hospedagem:

1. **Fazer build da aplicação:**

```bash
npm run build
```

2. **Upload dos arquivos:**

   - Faça upload de todos os arquivos para a pasta `public_html` do seu domínio
   - Certifique-se de que o Node.js está habilitado no seu plano Hostgator

3. **Configuração do servidor:**

   - O arquivo `.htaccess` já está configurado
   - O servidor Express irá servir tanto a API quanto os arquivos estáticos

4. **Verificar funcionamento:**
   - Acesse seu domínio
   - A aplicação deve carregar automaticamente
   - Teste as rotas da API: `/api/health` e `/api/users`

## 🔧 Configurações

### Variáveis de Ambiente

Crie um arquivo `.env` na pasta `backend/` com:

```env
PORT=3000
NODE_ENV=production
```

### Personalização

- **Cores e tema**: Edite `frontend/src/App.css`
- **Componentes**: Modifique `frontend/src/App.jsx`
- **API**: Adicione rotas em `backend/server.js`

## 📱 Responsividade

A aplicação foi desenvolvida com design mobile-first e é totalmente responsiva:

- **Desktop**: Layout em grid com múltiplas colunas
- **Tablet**: Layout adaptado para telas médias
- **Mobile**: Layout em coluna única otimizado

## 🎨 Design

- **Gradientes modernos** com cores vibrantes
- **Efeitos de hover** e transições suaves
- **Cards com glassmorphism** para um visual moderno
- **Tipografia** otimizada para legibilidade

## 📞 Suporte

Para dúvidas ou suporte, entre em contato com a equipe LuaLabs.

---

Desenvolvido com ❤️ para LuaLabs
