alias l="ls"
alias ll="ls -la"
alias php-service='sudo service apache2'
alias purge-docker='printf "\n######### Prune docker system\n\n" \
  && docker system prune -a \
  && printf "\n######### Prune docker volumes\n\n" \
  && docker volume prune \
  && printf "\n######### Images\n\n" \
  && docker images \
  && printf "\n######### Containers\n\n" \
  && docker ps \
  && printf "\n######### Volumes\n\n" \
  && docker volume ls'
alias rm=trash
alias cd..="cd .."
alias mine='sudo chown $USER:$GROUP -R $1'
alias mod="~/scripts/more"
alias agit="~/scripts/agit"
alias note="~/scripts/note"
alias npmtsi="~/scripts/npmtsi"
alias mod="~/scripts/mod"
alias oni-from-appimg="~/scripts/oni-from-appimg"
alias ngm="node ~/scripts/ngm.js"

