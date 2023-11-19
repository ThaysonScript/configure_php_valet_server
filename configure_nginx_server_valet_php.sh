echo "use sem sudo e sem estar em root"
PARAR_APACHE() {
        sudo systemctl stop apache2
        sudo systemctl disable apache2
        valet restart
}

LIGAR_APACHE() {
        sudo systemctl enable apache2
        sudo systemctl start apache2
}


read -p "[1] desligar e desabilitar apache - [2] - ligar e habilitar apache: " escolha

if [[ escolha -eq 1 ]]; then
        PARAR_APACHE
elif [[ escolha -eq 2 ]]; then
        LIGAR_APACHE
else
        echo "error"
        exit 1
fi
