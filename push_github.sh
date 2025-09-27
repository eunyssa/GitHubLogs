#!/bin/bash
# Caminho do repositório local
REPO_DIR="/caminho/para/GitHubLogs"

cd "$REPO_DIR" || exit

# Inicializa o repositório caso não exista
if [ ! -d ".git" ]; then
    git init
    git remote add origin https://github.com/eunyssa/GitHubLogs.git
    git checkout -b main
fi

# Adiciona arquivos modificados
git add users.json logs.json

# Commit automático
git commit -m "Atualização automática em $(date '+%Y-%m-%d %H:%M:%S')"

# Push para GitHub
git push origin main
