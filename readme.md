# Моя конфигурация vim

Используем VIM

'''
apt install vim -y
tea -a .bashrc << EOF
alias vi="vim
EOF
'''

Для плагина автодополнения для Kubernetes необходимо установить nodejs
'''
curl -sL install-node.now.sh/lts | bash
'''
Затем установить плагин yaml
'''
:CocInstall yaml
'''

