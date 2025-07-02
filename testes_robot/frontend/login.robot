***Settings***
Documentation    Testes de Login do Frontend
Resource         ../resources/common.robot
Resource         ../resources/credentials.robot

***Test Cases***
Successful Login - Carlos
    [Tags]    Frontend    Login    Smoke    E2E
    # Este é um comentário de linha única para o teste de login com sucesso.
    Open Browser To Login Page
    Input Text    id=email    ${VALID_EMAIL}
    Input Text    id=password    ${VALID_PASSWORD}
    Click Button    xpath=//button[text()=\'Entrar\']
    Wait Until Page Contains    Serverest Store

    Close Browser Session

Failed Login - No Data
    [Tags]    Frontend    Login
    Open Browser To Login Page
    Click Button    xpath=//button[text()=\'Entrar\']
    Wait Until Page Contains    Email é obrigatório
    Wait Until Page Contains    Password é obrigatório

    Close Browser Session

Failed Login - Invalid Credentials
    [Tags]    Frontend    Login
    Open Browser To Login Page
    Input Text    id=email    invalid@test.com
    Input Text    id=password    invalidpassword
    Click Button    xpath=//button[text()=\'Entrar\']
    Wait Until Page Contains    Email e/ou senha inválidos

    Close Browser Session