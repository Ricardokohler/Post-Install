#TODO: ssh github com if e else

#Enviroment Variables
URL_INTELLIJ="https://download-cdn.jetbrains.com/idea/idea-2026.1.2.tar.gz"

DIR_PROJECTS_BACKEND="$HOME/Desktop/Projects/BackEnd"
DIR_PROJECTS_FRONTEND="$HOME/Desktop/Projects/FrontEnd"

DIR_DOWNLOAD_PROGRAMS="$HOME/Downloads/Programs"


#Functions
WELCOMING_TEXT(){
    echo "+-------------------------------------------+"
    echo "+---------  Arch Post Install  -------------+"
    echo "+-------------------------------------------+"
    echo ""
    echo ""
    echo "+----------------------------------------------------------+"
    echo "|----------------------------------------------------------|"
    echo "|----> Atualizando pacotes e instalando atualizações:  ----|" 
    echo "|----------------------------------------------------------|"
    echo "+----------------------------------------------------------+"
    echo ""
    echo ""
}

PROJECT_FOLDERS_CREATION(){
    mkdir -p $DIR_PROJECTS_BACKEND/Java/Apis
    mkdir -p $DIR_PROJECTS_BACKEND/Java/JavaCore
    mkdir -p $DIR_PROJECTS_BACKEND/ShellScripts
    
    mkdir -p $DIR_PROJECTS_FRONTEND/JavaScript
    mkdir -p $DIR_PROJECTS_FRONTEND/TypeScript
    mkdir -p $DIR_PROJECTS_FRONTEND/Html

    mkdir -p $DIR_DOWNLOAD_PROGRAMS
}

UPDATE_UPGRADE(){
    sudo su
    pacman -Syyuu
}

COLOR_CHANGE_BASH_ROOT(){
    echo "if [[ $EUID == 0 ]]; then
        PS1='\[\e[1;95m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[1;33m\]\w\[\e[0m\]# '
    else
        PS1='\[\e[1;32m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '
    fi" >> ~/root/.bashrc
    source /root/.bashrc
}

PACMAN_PACKAGES_INSTALL(){
    pacman -S gparted --noconfirm
    pacman -S gimp --noconfirm
    pacman -S vlc --noconfirm
    pacman -S vlc-plugins-all --noconfirm
    pacman -S git --noconfirm
    pacman -S postgres --noconfirm
    pacma -S wget --noconfirm

    #Equivalente a build essentials no pacman
    pacman -S base-devel --noconfirm

    pacman -S curl --noconfirm
    pacman -S virtualbox --noconfirm
    pacman -S kitty --noconfirm
    pacman -S sushi --noconfirm 
    pacman -S yay --noconfirm
    pacman -S nodejs npm --noconfirm
}

INTELLIJ_INSTALL(){
    wget $URL_INTELLIJ -P "$DIR_DOWNLOAD_PROGRAMS"
    
    tar xvzf $DIR_DOWNLOAD_PROGRAMS/idea-2026.1.2.tar.gz
    "$DIR_DOWNLOAD_PROGRAMS"/idea-2026.1.2/idea-IU-261.24374.151/bin/idea
}

YAY_PACKAGES_INSTALL(){

}

CLEAN_TRASH(){
    pacman -Syyu
    pacman -Sc
}

COLOR_CHANGE_STANDARD(){
    exit
    echo "if [[ $EUID == 0 ]]; then
        PS1='\[\e[1;95m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[1;33m\]\w\[\e[0m\]# '
    else
        PS1='\[\e[1;32m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '
    fi" >> ~/.bashrc
    source ~/.bashrc
}

INSTALLED_VERSION_MENU(){
    echo ""
    echo ""
    echo ""
    echo "+----------------------------------+"
    echo "|------  Installed Versions  ------|"
    echo "+----------------------------------+"
    echo ""
    echo ""
}

PRINT_PACMAN_VERSIONS(){
    echo ""
    echo "Gparted: "
    pacman -Q gparted
    
    echo ""
    echo "Gimp: "
    pacman -Q gimp

    echo ""
    echo "Vlc: "
    vlc --version
    pacman -Q vlc-plugins-all
    
    echo ""
    echo "Git: "
    pacman -Q git

    echo ""
    echo "Postgres: "
    pacmna -Q postgresql
    
    echo ""
    echo "Wget: "
    pacman -Q wget

    echo ""
    echo "Java: "
    pacman -Q jdk-openjdk

    echo ""
    echo "Curl: "
    pacman -Q curl

    echo ""
    echo "Virtual Box: "
    pacman -Q vitualbox

    echo ""
    echo "Kitty: "
    pacman -Q kitty

    echo ""
    echo "Sushi: "
    pacman -Q sushi
    
    echo""
    echo "Yay: "
    pacman -Q yay

    echo ""
    echo "Npm: "
    pacman -Q npm
}

PRINT_YAY_VERSIONS(){

}

ENDING_TEXT(){
    echo ""
    echo ""
    echo ""
    echo "+--------------------------------------------+"
    echo "|------   Fim do Programa, Obrigado!   ------|"
    echo "+--------------------------------------------+"
    echo "" 
    echo ""
    echo ""
    
}

#Functions Execution
WELCOMING_TEXT
PROJECT_FOLDERS_CREATION

UPDATE_UPGRADE
COLOR_CHANGE_BASH_ROOT
PACMAN_PACKAGES_INSTALL
INTELLIJ_INSTALL
YAY_PACKAGES_INSTALL
CLEAN_TRASH
COLOR_CHANGE_STANDARD

SYSTEM_VERSION_CHECK

INSTALLED_VERSION_MENU
PRINT_PACMAN_VERSIONS
PRINT_YAY_VERSIONS
ENDING_TEXT


