#! /bin/bash
PATH=$(npm bin):$PATH
export NODE_ENV=development

function initialize_db () {
  printf "\n> ASYNC: Instalando dependencias do back-end\n"
  (
    npx npx prisma migrate deploy
  )
}


function initialize_nest() {
  printf "\n> ASYNC: Instalando dependencias gerais"
  (
    npm start
  )
}

initialize_db & initialize_nest

printf "\n> Script terminado\n\n"
