
# ServeRest Robot Framework Tests

Este repositório contém uma suíte de testes automatizados desenvolvida com Robot Framework para as aplicações frontend e API do ServeRest.

## Pré-requisitos

Para executar estes testes, você precisará ter instalado:

*   Python 3.x
*   pip (gerenciador de pacotes do Python)

## Instalação

1.  Clone este repositório:
    ```bash
    git clone https://github.com/carlosportes29/test_robot_prova.git
    https://github.com/carlosportes29/test_robot_prova
    cd serverest-robot-tests
    ```
2.  Instale as dependências do Robot Framework e suas bibliotecas:
    ```bash
   pip install robotframework
   pip install robotframework-seleniumlibrary
   pip install robotframework-requests
    ```

## Estrutura do Projeto

```
robot_tests/
├── frontend/             # Testes E2E para o frontend
│   └── login.robot
├── api/                  # Testes para a API
│   ├── 📄 __init__.robot  
│   ├── 📄 api_tests.robot  
│   └── 📄 keywords.py  
└── resources/            # Arquivos de recursos e palavras-chave reutilizáveis
    ├── common.robot
    └── credentials.robot
```

Para executar todos os testes, navegue até o diretório `robot_tests` e execute o seguinte comando:

robot frontend/login.robot
robot api/users_api_tests.robot

### Executar Testes

Abra seu terminal e navegue até o diretório robot_tests onde estão seus arquivos de teste.
bash
cd robot_tests
Execute os testes:
Para executar todos os testes:
robot .
Para executar um arquivo de teste específico (ex: testes de login do frontend):
robot frontend/login.robot
Para executar um cenário de teste específico (ex: 'Login - Carlos'):
robot --test "Successful Login - Carlos" frontend/login.robot

## Relatórios

Após a execução dos testes, o Robot Framework gerará automaticamente os seguintes arquivos no diretório de execução:

*   `log.html`: Log detalhado da execução dos testes.
*   `report.html`: Relatório resumido da execução dos testes.
*   `output.xml`: Arquivo XML com os resultados dos testes.

A descrição do cenários de Testes Front e API estão anexados no arquivo Todo.md

## Boas Práticas

Para mais informações sobre as boas práticas de testes automatizados com Robot Framework, consulte o arquivo `boas_praticas_testes_automatizados.md` neste repositório.

## Contato

Para dúvidas ou sugestões, por favor, abra uma issue neste repositório.

Github - Repositório do Projeto

Introduction (para acompanhamento e aperfeiçoamento)
RequestsLibrary is a Robot Framework library aimed to provide HTTP api testing functionalities by wrapping the well known Python Requests Library.

https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html#GET
