# Linux Enumeration Script

Script em Bash para enumeração inicial de sistemas Linux, focado na coleta de informações úteis para **pós-exploração** e **escalonamento de privilégios**.

Este projeto tem caráter **educacional** e foi desenvolvido como estudo de fundamentos de **Linux**, **Bash scripting** e **segurança ofensiva**.

---

## Funcionalidades

O script coleta automaticamente as seguintes informações:

### Informações do Sistema
- Distribuição Linux e versão
- Sistema base (ex: Debian)
- Informações do kernel
- Arquitetura da máquina

### Usuários
- Usuários atualmente logados no sistema
- Usuários com shell válido configurado

### Contexto do Usuário Atual
- Usuário atual
- UID, GID e grupos
- Grupos aos quais o usuário pertence
- Permissões de sudo (quando disponíveis)

### Binários Sensíveis
- Binários com o bit **SUID**
- Binários com o bit **SGID**

---

## Como usar

Clone o repositório:
git clone https://github.com/Rodrigo603/linux_enum.git

Entre no diretório:
cd linux_enum

Dê permissão de execução ao script: 
chmod +x enum.sh

Execute o script:
./enum.sh

O resultado será salvo no arquivo `output.txt`.
Para visualizar a saida use:
cat output.txt


---

## Exemplo de saída

O repositório contém um arquivo **`example.txt`**, que demonstra como o arquivo `output.txt` ficará após a execução do script em um sistema Linux real.

Esse arquivo serve apenas como **referência**, facilitando o entendimento da estrutura da saída e dos tipos de informações coletadas pelo script.

---

## Observações

- O script foi testado em diferentes distribuições Linux.
- Algumas informações podem variar dependendo das permissões do usuário.
- Em ambientes onde o usuário não possui acesso ao `sudo`, as permissões de sudo podem não ser listadas.



