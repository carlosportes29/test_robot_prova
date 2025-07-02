*** Settings ***
Library    RequestsLibrary
Library    Collections


*** Variables ***
${BASE_URL}     https://serverest.dev
${EMAIL}        carlosportes36@gmail.com
${PASSWORD}     senha123
${USER_ID}      42vhiHVZqGu7VsID
${PRODUCT_ID}      BeeJh5lz3k6kSIzA

#*** Keywords ***
#Obter Token de Acesso
    #[Documentation]    Obtém o token JWT para autenticação
    #${headers}=    Create Dictionary    Content-Type=application/json
    #${payload}=    Create Dictionary    email=${EMAIL}    password=${PASSWORD}
    
    #${response}=    POST    ${BASE_URL}/login    json=${payload}    headers=${headers}
    #Run Keyword If    ${response.status_code} != 200    Fail    Falha no login: ${response.text}
    
    #${token}=    Set Variable    ${response.json()['authorization']}
    #Set Suite Variable    ${AUTH_TOKEN}    ${token}
    #Log    Token obtido com sucesso: ${AUTH_TOKEN}
    

*** Test Cases ***
Cenário 1: Consulta de todos os usuários cadastrados
    ${headers}=    Create Dictionary
    ...    Content-Type=application/json
    
    ${response}=    GET    ${BASE_URL}/usuarios    headers=${headers}
    
    # Verificações
    Should Be Equal As Strings    ${response.status_code}    200

    Log    \nDETALHES COMPLETOS DO USUÁRIO:\n${response.text}


Cenário 2: Consultar Usuário por ID (GET /usuarios/{_id})
    ${headers}=    Create Dictionary
    ...    Content-Type=application/json
    
    ${response}=    GET    ${BASE_URL}/usuarios/${USER_ID}    headers=${headers}
    
    # Verificações
    Should Be Equal As Strings    ${response.status_code}    200

    Log    \nDETALHES COMPLETOS DO USUÁRIO:\n${response.text}
    

Cenário 3: Consultar Produto(s) por ID (GET /produtos/{_id})
    ${headers}=    Create Dictionary
    ...    Content-Type=application/json
    
    ${response}=    GET    ${BASE_URL}/produtos/${PRODUCT_ID}    headers=${headers}
    
    # Verificações
    Should Be Equal As Strings    ${response.status_code}    200

    Log    \nDETALHES COMPLETOS DO USUÁRIO:\n${response.text}