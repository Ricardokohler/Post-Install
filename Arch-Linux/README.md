# Shell-Script -- Arch Linux

## Sobre o Projeto

Script de pós-instalação para Arch Linux focado em ambiente de desenvolvimento Back-End e Front-End.

O script realiza:

- Atualização completa do sistema
- Criação automática de diretórios
- Instalação de pacotes essenciais via Pacman
- Download e instalação do IntelliJ IDEA
- Configuração visual do Bash
- Exibição das versões instaladas ao final da execução

---

# Atualização do Sistema

O script executa:

```bash
pacman -Syyuu
```

Também realiza limpeza de cache posteriormente:

```bash
pacman -Sc
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

# Pacotes Instalados via Pacman

## Utilitários e Sistema

- gparted
- gimp
- vlc
- vlc-plugins-all
- git
- wget
- curl
- kitty
- sushi
- yay

---

## Desenvolvimento

- base-devel
- nodejs
- npm
- openjdk
- postgresql

---

## Virtualização

- virtualbox

---

# IntelliJ IDEA

O script realiza download automático do IntelliJ IDEA através do link oficial da JetBrains:

```bash
https://download-cdn.jetbrains.com/idea/idea-2026.1.2.tar.gz
```

---

# Personalização do Bash

O script altera automaticamente as cores do terminal para:

- Usuário normal
- Root

Com diferenciação visual no prompt utilizando ANSI Colors.

---

# Verificação de Versões

Ao final da execução o script imprime versões instaladas de:

- Gparted
- Gimp
- VLC
- Git
- PostgreSQL
- Wget
- Java
- Curl
- VirtualBox
- Kitty
- Sushi
- Yay
- NPM

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