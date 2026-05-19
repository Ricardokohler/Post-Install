JAVA_FOLDER="$HOME/Desktop/Projects/BackEnd/Java"
JAVASCRIPT_FOLDER="$HOME/Desktop/Projects//FrontEnd/JavaScript"

LOCK_FRONTEND="/var/lib/dpkg/lock-frontend"
LOCK="/var/cache/apt/archives/lock"

NODE_DEB_SOURCE="https://deb.nodesource.com/setup_20.x"

WELCOMING_TEXT(){
        
    echo ""
    echo "+----------------------------------------------------------+"
    echo "|----------------------------------------------------------|"
    echo "|----> Atualizando pacotes e instalando atualizações:  ----|" 
    echo "|----------------------------------------------------------|"
    echo "+----------------------------------------------------------+"
    echo ""
    echo ""

}

PROJECTS_FOLDER_CREATION(){
    mkdir -p "$JAVA_FOLDER"
    mkdir -p "$JAVASCRIPT_FOLDER"
}

UNLOCK_SCRIPT(){

    sudo rm "$LOCK_FRONTEND"
    sudo rm "$LOCK"

    sudo dpkg --add-architecture i386

}

SYSTEM_UPDATE(){
    sudo apt update && sudo apt upgrade -y
}

APT_PACKAGES_INSTALL(){

    sudo apt install snapd

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

    echo "NodeJs: "
    curl -fsSL $NODE_DEB_SOURCE | sudo -E bash -
    sudo apt install -y nodejs

    echo "Curl: "
    sudo apt install -y curl

    echo "Virtual Box: "
    sudo apt install virtualbox -y

    echo "Vlc: "
    sudo apt install vlc

    echo "Kitty - Terminal: "
    sudo apt install kitty -y

    echo "gnome-sushi: "
    sudo apt install gnome-sushi -y

}

SNAP_PACKAGES_INSTALL(){     

    echo "intalação pacotes snap:"
    echo "Intellij: "
    sudo snap install intellij-idea-community --classic

    echo "Vs Code: "
    sudo snap install code --classic

    echo "dbeaver: "
    sudo snap install dbeaver-ce --classic

    echo "postman: "
    sudo snap install postman

}

SYSTEM_VERSION_CHECK(){
    
    echo "Updates finais: "

    SYSTEM_UPDATE

    echo "Confirmando versionamento de distribuições: "
    sudo apt dist-upgrade -y

    sudo apt autoclean
    sud apt autoremove -y

}


INSTALLED_VERSION_MENU(){

    echo ""
    echo ""
    echo ""
    echo ""
    echo "+----------------------------------------------------------+"
    echo "|----> Versões Instaladas:  -------------------------------|" 
    echo "|----------------------------------------------------------|"

}

PRINT_APT_VERSIONS(){

    printf "\n\nPacotes apt \n\nGParted: "
    dpkg-query -W -f='${Version}\n' gparted

    printf "\n\nGimp: "
    gimp --version

    printf "\n\nGit: "
    git --version
    
    printf "\n\nPostgres: "
    psql --version

    printf "\n\nJava: "
    java --version | head -n 1

     printf "\n\nNode Js: "
    node --version

    printf "\n\nNpm: "
    npm --version
    
    printf "\n\nCurl: "
    curl --version | head -n 1 | awk '{print $1, $2}'
    
    printf "\n\nVirtual Box: "
    VBoxManage --version | head -n 1    

    printf "\n\nVLc: \n"
    vlc --version | head -n 2

    printf "\n\nKitty: "
    kitty --version

    printf "\n\nGnome - Sushi: \n"
    apt show gnome-sushi | head -n 2    

}

PRINT_SNAP_VERSIONS(){

    printf "\n\nIntelliJ: "
    intellij-idea-community --version

    printf "\n\nVsCode: "
    snap list code

    printf "\n\nDbeaver: "
    snap list dbeaver-ce

    printf "\n\n Pacotes Snap: \n\nPostman: "
    snap list postman

}

ENDING_TEXT(){

    echo ""
    echo "|----------------------------------------------------------|"
    echo "|----------------------------------------------------------|"
    echo "+----------------------------------------------------------+"

    echo ""
    echo "Programa finalizado."
    echo ""

}

WELCOMING_TEXT
PROJECTS_FOLDER_CREATION
UNLOCK_SCRIPT
SYSTEM_UPDATE
APT_PACKAGES_INSTALL
SNAP_PACKAGES_INSTALL
SYSTEM_VERSION_CHECK
INSTALLED_VERSION_MENU
PRINT_APT_VERSIONS
PRINT_SNAP_VERSIONS
ENDING_TEXT
