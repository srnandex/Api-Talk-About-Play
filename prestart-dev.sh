#! /bin/bash
PATH=$(npm bin):$PATH
export NODE_ENV=development

function initialize_db () {
  printf "\n> ASYNC: Instalando dependencias do back-end\n"
  (
    npx npx prisma migrate deploy
    nest start
  )
}

initialize_db 

printf "\n> Script terminado\n\n"
