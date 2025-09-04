import { useState, useEffect } from 'react';
import './App.css';

function App() {
  const [users, setUsers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [serverStatus, setServerStatus] = useState('');

  useEffect(() => {
    // Verificar status do servidor
    fetch('/api/health')
      .then((res) => res.json())
      .then((data) => {
        setServerStatus(data.message);
        setLoading(false);
      })
      .catch((err) => {
        console.error('Erro ao conectar com o servidor:', err);
        setLoading(false);
      });

    // Carregar usuários
    fetch('/api/users')
      .then((res) => res.json())
      .then((data) => setUsers(data))
      .catch((err) => console.error('Erro ao carregar usuários:', err));
  }, []);

  return (
    <div className="app">
      <header className="header">
        <h1>🚀 Aplicação React + Node.js</h1>
        <p>Pronta para hospedagem no Hostgator</p>
      </header>

      <main className="main">
        <div className="status-card">
          <h2>Status do Servidor</h2>
          {loading ? (
            <p>Carregando...</p>
          ) : (
            <p className="status-success">✅ {serverStatus}</p>
          )}
        </div>

        <div className="users-section">
          <h2>Usuários Cadastrados</h2>
          <div className="users-grid">
            {users.map((user) => (
              <div key={user.id} className="user-card">
                <h3>{user.name}</h3>
                <p>{user.email}</p>
              </div>
            ))}
          </div>
        </div>

        <div className="features">
          <h2>Funcionalidades</h2>
          <div className="features-grid">
            <div className="feature-card">
              <h3>🎨 Frontend Moderno</h3>
              <p>React com Vite para desenvolvimento rápido</p>
            </div>
            <div className="feature-card">
              <h3>⚡ Backend Express</h3>
              <p>API REST com Node.js e Express</p>
            </div>
            <div className="feature-card">
              <h3>🌐 Hostgator Ready</h3>
              <p>Configurado para hospedagem compartilhada</p>
            </div>
            <div className="feature-card">
              <h3>📱 Responsivo</h3>
              <p>Design adaptável para todos os dispositivos</p>
            </div>
          </div>
        </div>
      </main>

      <footer className="footer">
        <p>Desenvolvido com ❤️ para LuaLabs</p>
      </footer>
    </div>
  );
}

export default App;
