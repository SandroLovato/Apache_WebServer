#!/bin/bash
# ---------------------------------------------------------------- #
# Nome do Script: gerenciamento_webserver_apache.sh                #
# Descrição: Programa de Gerenciamento do WebServer Apache         #
# Linkedin: www.linkedin.com/in/sandro-l-005292147/                #
# Escrito por: Sandro Lovato                                       #
# Manutenção: Sandro Lovato                                        #
# ---------------------------------------------------------------- #
# Uso:                                                             #
#       $ ./gerenciamento_webserver_apache.sh                      #
# ---------------------------------------------------------------- #
# Versão do Bash:                                                  #
#              Bash 4.4.19                                         #
# -----------------------------------------------------------------#
# Historico:                                                       #
#                                                                  #
#          v1.0 18/05/2020, Sandro:                                #
#           - Iniciar Programa                                     #
#          v1.1 22/05/2020, Sandro:                                #
#           - Testado serviço do apache                            #
#                                                                  #
# -----------------------------------------------------------------#
# Agredecimentos: Toda a comunidade Linux                          #
#                                                                  #
# -----------------------------------------------------------------#


clear
TIME=2
echo "Seja BEM VINDO!"
echo " "
echo "Feito por Sandro Lovato"
echo " "
echo PROGRAMA DE GERENCIAMENTO DO WEBSERVER APACHE
echo " "
echo "Escolha uma opção para abrir o webserver Apache

      1 - Iniciar o serviço do Apache
      2 - Parar o serviço do Apache
      3 - Reiniciar o serviço do Apache
      4 - Mostrar status do Apache
      0 - Sair do menu"

echo " "
echo -n "Opção escolhida: "
read opcao
case $opcao in
        1)
                echo Iniciando o serviço do Apache!
                sleep $TIME
                systemctl start httpd
                ;;
        2)
                echo Parando o serviço do Apache!
                sleep $TIME
                systemctl stop httpd
                ;;
        3)
                echo Reiniciando o serviço do Apache
                sleep $TIME
                systemctl restart httpd
                ;;
        4)
                echo Mostrando  o status do Apache
                sleep $TIME
                systemctl status httpd
                ;;
        0)
                echo Saindo do menu do Apache!
                sleep $TIME
                exit 0
                ;;
        *)
                echo Opção inválida, digite outra opção!
                sleep $TIME
                exit 0
                ;;
esac
done
