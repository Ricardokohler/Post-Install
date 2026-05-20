# Post-Install

Scripts de pós-instalação e configuração de ambiente para distribuições Linux focadas em desenvolvimento Backend, Frontend e produtividade.

---

# Funcionalidades

- Atualização automática do sistema
- Instalação automatizada de pacotes
- Organização de diretórios
- Instalação de IDEs
- Instalação de banco de dados
- Instalação de ferramentas de desenvolvimento
- Exibição das versões instaladas
- Scripts separados por distro

---

# Estrutura do Repositório

```text
Post-Install/
├── Arch-Linux/
│   ├── Scripts/
│   └── README.md
│
├── Ubuntu-24.04/
│   ├── Scripts/
│   └── README.md
│
└── README.md
```

---

# Objetivo

Automatizar a configuração inicial do sistema operacional após uma instalação limpa.

Os scripts incluem:

- Atualização completa do sistema
- Instalação de programas essenciais
- Setup para desenvolvimento
- Estruturação de diretórios
- Ferramentas de produtividade
- Ambiente Java / Node.js
- Configuração de terminal
- Pacotes Snap
- Utilitários Linux

---

# Distribuições Suportadas

| Distribuição | Status |
|---|---|
| Ubuntu 24.04 | ✅ |
| Arch Linux | ✅ |

---

# Tecnologias e Ferramentas

## Desenvolvimento

- Java
- Node.js
- Git
- PostgreSQL
- DBeaver
- VS Code
- IntelliJ IDEA

---

## Utilitários

- Kitty
- GParted
- GIMP
- GNOME Sushi
- VirtualBox

---

# Ubuntu 24.04

Scripts focados em:

- `apt`
- `snap`
- NodeSource
- Ambiente Backend Java
- Estrutura de projetos

## Pacotes Instalados

### APT

```bash
snapd
gparted
gimp
git
postgresql
default-jdk
nodejs
curl
virtualbox
kitty
gnome-sushi
```

### Snap

```bash
intellij-idea-community
code
dbeaver-ce
postman
```

---

# Arch Linux

Scripts focados em:

- `pacman`
- `yay`
- GNOME
- Desenvolvimento
- Customização
- Drivers
- Terminal

---

# Estrutura de Projetos Criada

```text
Projects/
├── BackEnd/
│   └── Java/
│
└── FrontEnd/
    └── JavaScript/
```

---

# Como Executar

## Clonar Repositório

```bash
git clone https://github.com/Ricardokohler/Post-Install.git
```

---

## Entrar no Diretório

```bash
cd Post-Install
```

---

## Dar Permissão

```bash
chmod +x nome-do-script.sh
```

---

## Executar

```bash
./nome-do-script.sh
```

ou

```bash
bash nome-do-script.sh
```

---

