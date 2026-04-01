

echo ""
echo "+----------------------------------------------------------+"
echo "|----------------------------------------------------------|"
echo "|----> Atualizando pacotes e instalando atualizações:  ----|" 
echo "|----------------------------------------------------------|"
echo "+----------------------------------------------------------+"
echo ""
echo ""

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

sudo dpkg --add-architecture i386


sudo apt update && sudo apt upgrade && sudo apt install snapd

printf "\ninstalação pacotes apt:\\nnGparted:\n"
sudo apt install -y gparted

printf "\nGimp: \n"
sudo apt install -y gimp

echo "Git: "
sudo apt install -y git

echo "postgres: "
sudo apt install -y postgresql

echo "instalação jdk: "
sudo apt install -y default-jdk

echo "Curl: "
sudo apt install -y curl

echo "Virtual Box: "
sudo apt install virtualbox -y

echo "Kitty - Terminal: "
sudo apt install kitty -y

echo "gnome-sushi: "
sudo apt install gnome-sushi -y

echo "intalação pacotes snap:"
echo "Intellij: "
sudo snap install intellij-idea-community --classic

echo "Vs Code: "
sudo snap install code --classic

echo "dbeaver: "
sudo snap install dbeaver-ce --classic

echo "postman: "
sudo snap install postman

echo "Node Js:"

echo "NodeJs: "
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

echo "Updates finais: "
sudo apt update
]
]echo "Confirmando versionamento de distribuições: "
sudo apt dist-upgrade -y

sudo apt autoclean

sud apt autoremove -y

echo ""
echo ""
echo ""
echo ""
echo "+----------------------------------------------------------+"
echo "|----> Versões Instaladas:  -------------------------------|" 
echo "|----------------------------------------------------------|"


printf "\n\nPacotes apt \n\nGParted: "
dpkg-query -W -f='${Version}\n' gparted

printf "\n\nGimp: "
gimp --version

printf "\n\nIntelliJ: "
intellij-idea-community --version

printf "\n\nPostgres: "
psql --version

printf "\n\n Pacotes Snap: \n\nPostman: "
snap list postman

printf "\n\nJava: "
java --version | head -n 1

printf "\n\nVirtual Box: "
VBoxManage --version | head -n 1

printf "\n\nKitty: "
kitty --version

printf "\n\nGnome - Sushi: \n"
apt show gnome-sushi | head -n 2

printf "\n\nCurl: "
curl --version | head -n 1 | awk '{print $1, $2}'

printf "\n\nGit: "
git --version

printf "\n\nNode Js: "
node --version

printf "\n\nNpm: "
npm --version

printf "\n\nDbeaver: "
snap list dbeaver-ce

printf "\n\nVsCode: "
snap list code

echo ""
echo "|----------------------------------------------------------|"
echo "|----------------------------------------------------------|"
echo "+----------------------------------------------------------+"

echo ""
echo "Programa finalizado."
echo ""






