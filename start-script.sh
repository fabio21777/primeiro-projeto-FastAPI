#!/bin/bash

# Nome padrão do ambiente virtual
nome_do_ambiente="env-fast-api"

# Verifica se o ambiente virtual já existe
if [ -d "$nome_do_ambiente" ]; then
  echo "O ambiente virtual '$nome_do_ambiente' já existe."

  # Ativa o ambiente virtual
  source "$nome_do_ambiente/bin/activate"

  echo "Ambiente virtual '$nome_do_ambiente' ativado!"
fi

# Cria o ambiente virtual
python3 -m venv "$nome_do_ambiente"

# Ativa o ambiente virtual
source "$nome_do_ambiente/bin/activate"

# Instala pacotes ou bibliotecas necessários no ambiente virtual
pip install fastapi
pip install "uvicorn[standard]"


echo "Ambiente virtual '$nome_do_ambiente' criado e ativado com sucesso!"
