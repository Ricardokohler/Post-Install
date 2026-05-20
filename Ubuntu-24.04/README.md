# Shell-Script -- Ubuntu 24.04

## Sobre o Projeto

Script de pós-instalação para Ubuntu 24.04 focado em ambiente de desenvolvimento Back-End e Front-End.

O script realiza:

- Atualização completa do sistema
- Remoção de locks do APT
- Habilitação da arquitetura i386
- Criação automática de diretórios
- Instalação de pacotes essenciais via APT
- Instalação de pacotes Snap
- Download e instalação manual do IntelliJ IDEA
- Exibição das versões instaladas ao final da execução

---

# Atualização do Sistema

O script executa:

```bash
sudo apt update
sudo apt upgrade -y
```

Também realiza:

```bash
sudo apt dist-upgrade -y
sudo apt autoclean
sudo apt autoremove -y
```

---

# Remoção de Locks do APT

O script remove locks antigos do sistema:

```bash
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock
```

Também habilita suporte i386:

```bash
sudo dpkg --add-architecture i386
```

---

# Estrutura de Pastas Criadas

## Back-End

```text
Projects/
└── BackEnd/
    ├── Java/
    │   ├── Apis
    │   └── JavaCore
    └── ShellScripts
```

---

## Front-End

```text
Projects/
└── FrontEnd/
    ├── JavaScript
    ├── TypeScript
    └── Html
```

---

# Pacotes Instalados via APT

## Utilitários e Sistema

- snapd
- gparted
- gimp
- git
- curl
- wget
- vlc
- kitty
- gnome-sushi

---

## Desenvolvimento

- postgresql
- default-jdk
- nodejs
- npm

---

## Virtualização

- virtualbox

---

# Node.js via NodeSource

O script utiliza o repositório NodeSource para instalação do Node.js:

```bash
curl -fsSL <NODE_DEB_SOURCE> | sudo -E bash -
sudo apt install -y nodejs
```

---

# IntelliJ IDEA

O script realiza download da versão `.tar.gz` oficial da JetBrains:

```bash
https://download-cdn.jetbrains.com/idea/idea-2026.1.2.tar.gz
```

Após extração, o IntelliJ é executado diretamente pelo binário:

```bash
.../bin/idea
```

---

# Pacotes Instalados via Snap

- code (VSCode)
- dbeaver-ce
- postman

---

# Verificação de Versões

Ao final da execução o script imprime versões instaladas de:

- GParted
- Gimp
- Git
- PostgreSQL
- Java
- Node.js
- NPM
- Curl
- VirtualBox
- VLC
- Kitty
- Gnome Sushi
- IntelliJ IDEA
- VSCode
- DBeaver
- Postman

---

# Melhorias Futuras

## TODO

- Configuração automática SSH GitHub
- Verificação de dependências já instaladas
- Melhor tratamento de erros
- Logs de execução
- Instalação automática do Docker
- Instalação automática do Maven
- Instalação automática do Gradle
- Configuração automática do Git

---

# Observações

O script foi desenvolvido para:

- Ubuntu 24.04
- Sistemas baseados em Debian
- Ambiente GNOME

---

# Execução

Dar permissão:

```bash
chmod +x post-install.sh
```

Executar:

```bash
./post-install.sh
```

Ou:

```bash
bash post-install.sh
```

---

# Pacotes Instalados

| Categoria | Pacotes |
|---|---|
| Sistema | snapd, curl, wget |
| Desenvolvimento | git, postgresql, default-jdk, nodejs |
| Multimídia | vlc, gimp |
| Utilitários | gparted, kitty, gnome-sushi |
| Virtualização | virtualbox |
| Snap | code, dbeaver-ce, postman |

---

# Requisitos

- Ubuntu 24.04
- Permissão sudo
- Conexão com internet
- Snap habilitado